const {Ticket, TicketStatus} = require('../../models/tickets')
const { ShowTime, ShowTimeType } = require('../../models/showtimes')
const { Transaction } = require('../../models/transactions')
const { Room, Seat } = require('../../models/seats')
const uuidv4 = require('uuid/v4')

exports.create_payment = async function(req, res) {
    try {
    var ipAddr = req.headers['x-forwarded-for'] ||
        req.connection.remoteAddress ||
        req.socket.remoteAddress ||
        req.connection.socket.remoteAddress;

    var config = require('../../../config/default.json');
    var dateFormat = require('dateformat');

    
    var tmnCode = config.vnp_TmnCode
    var secretKey = config.vnp_HashSecret
    var vnpUrl = config.vnp_Url
    var returnUrl = config.vnp_ReturnUrl

    var date = new Date();

    var createDate = dateFormat(date, 'yyyymmddHHmmss');
    var orderId = req.body.transaction_id

    const transaction = await Transaction.query().findById(orderId)

    var amount = transaction.total_price;
    var bankCode = '';
    
    var orderInfo = 'Thanh toan mua ve xem kich';
    var orderType = 190000;
    var locale = req.body.language || 'vn';
    if(locale === null || locale === ''){
        locale = 'vn';
    }
    var currCode = 'VND';
    var vnp_Params = {};
    vnp_Params['vnp_Version'] = '2';
    vnp_Params['vnp_Command'] = 'pay';
    vnp_Params['vnp_TmnCode'] = tmnCode;
    // vnp_Params['vnp_Merchant'] = ''
    vnp_Params['vnp_Locale'] = locale;
    vnp_Params['vnp_CurrCode'] = currCode;
    vnp_Params['vnp_TxnRef'] = orderId;
    vnp_Params['vnp_OrderInfo'] = orderInfo;
    vnp_Params['vnp_OrderType'] = orderType;
    vnp_Params['vnp_Amount'] = amount * 100;
    vnp_Params['vnp_ReturnUrl'] = returnUrl;
    vnp_Params['vnp_IpAddr'] = ipAddr;
    vnp_Params['vnp_CreateDate'] = createDate;
    if(bankCode !== null && bankCode !== ''){
        vnp_Params['vnp_BankCode'] = bankCode;
    }

    vnp_Params = sortObject(vnp_Params);

    var querystring = require('qs');
    var signData = secretKey + querystring.stringify(vnp_Params, { encode: false });

    var sha256 = require('sha256');

    var secureHash = sha256(signData);

    vnp_Params['vnp_SecureHashType'] =  'SHA256';
    vnp_Params['vnp_SecureHash'] = secureHash;
    vnpUrl += '?' + querystring.stringify(vnp_Params, { encode: true });

    //Neu muon dung Redirect thi dong dong ben duoi
    res.status(200).json({code: '00', data: vnpUrl})
    //Neu muon dung Redirect thi mo dong ben duoi va dong dong ben tren
    //res.redirect(vnpUrl)
    } catch(err) {
        console.log(err)
        res.status(400).json({code: '400', data: 'failed'})
    }
}

exports.return_payment = async function (req, res) {
    try {
        var vnp_Params = req.query;

        var secureHash = vnp_Params['vnp_SecureHash'];

        var transaction_id = vnp_Params['vnp_TxnRef']

        const transaction = await Transaction.query().findById(transaction_id)
        
        await transaction.$relatedQuery('tickets').patch({
            status_id: 3
        })
        await Transaction.query().findById(transaction_id).patch({
            code: uuidv4(),
            time: new Date.now()
        })


        delete vnp_Params['vnp_SecureHash'];
        delete vnp_Params['vnp_SecureHashType'];

        vnp_Params = sortObject(vnp_Params);

        var config = require('../../../config/default.json');
        var tmnCode = config.vnp_TmnCode
        var secretKey = config.vnp_HashSecret

        var querystring = require('qs');
        var signData = secretKey + querystring.stringify(vnp_Params, { encode: false });

        var sha256 = require('sha256');

        var checkSum = sha256(signData);

        if (secureHash === checkSum) {
            //Kiem tra xem du lieu trong db co hop le hay khong va thong bao ket qua

            const transaction = await Transaction.query().findById(transaction_id)

            res.json({ status: 'success', transaction: transaction})
        } else {
            res.json({ status: 'failed', data: { code: '97' } })
        }
    } catch (err) {
        console.log(err)
        res.status(400).json({ status: 'Failed' })
    }
}

exports.ipn_payment =  function (req, res) {
    var vnp_Params = req.query;
    var secureHash = vnp_Params['vnp_SecureHash'];

    delete vnp_Params['vnp_SecureHash'];
    delete vnp_Params['vnp_SecureHashType'];

    vnp_Params = sortObject(vnp_Params);
    var config = require('../../../config/default.json');
    var secretKey = config.vnp_HashSecret
    var querystring = require('qs');
    var signData = secretKey + querystring.stringify(vnp_Params, { encode: false });
    
    var sha256 = require('sha256');

    var checkSum = sha256(signData);

    if(secureHash === checkSum){
        var orderId = vnp_Params['vnp_TxnRef'];
        var rspCode = vnp_Params['vnp_ResponseCode'];
        //Kiem tra du lieu co hop le khong, cap nhat trang thai don hang va gui ket qua cho VNPAY theo dinh dang duoi
        res.status(200).json({RspCode: '00', Message: 'success'})
    }
    else {
        res.status(200).json({RspCode: '97', Message: 'Fail checksum'})
    }
}

function sortObject(o) {
    var sorted = {},
        key, a = [];

    for (key in o) {
        if (o.hasOwnProperty(key)) {
            a.push(key);
        }
    }

    a.sort();

    for (key = 0; key < a.length; key++) {
        sorted[a[key]] = o[a[key]];
    }
    return sorted;
}
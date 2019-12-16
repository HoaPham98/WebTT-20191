const { Dramatic } = require('../models/dramatic');
const { SeatType, Room, Seat } = require('../models/seats');
const { ShowTimeType, ShowTime } = require('../models/showtimes');
const { User } = require('../models/users');
const { Transaction } = require('../models/transactions');
const dramatics = require('./dramatic');
const bcrypt = require('bcrypt');
const moment = require('moment');
const isEmpty = require('lodash.isempty');
const email = require('./nodemailer');


exports.login = function(req, res) {
    // res.render('admin/login.ejs', {
    //     error : req.flash("error"),
    //     success: req.flash("success"),
    //     session:req.session,
    //     title: "Login"
    // });
    res.render('login.ejs', { message: req.flash('loginMessage') });

}

exports.getTemplateEmail = async function(req, res) {
    res.render('admin/mail_manage.ejs', {
        user: req.user,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Admin Main Page",
        
    });

}

exports.sendEmail = async function(req, res) {
      
    var datas = await User.query().select('email').where('isAdmin', false);
   //  for(let i=0; i<datas.length; i++){
   //      await email.send(datas[i].email, req.body.subject, req.body.message);
   //  }
   // res.redirect(301, '/admin/mainpage'); 
   for (let i = 0; i < datas.length; i += 100) { 
    const requests = datas.slice(i, i + 100).map((user) => { 
        // Mỗi đợt 100 email. và xử lý chúng
        return email.send(user.email, req.body.subject, req.body.message);
        // Async function to send the mail.
        //.catch(e => console.log(`Error in sending email for ${user} - ${e}`))
    })
    
    // requests sẽ có 100 hoặc ít hơn các promise đang chờ xử lý.
    // Promise.all sẽ đợi cho đến khi tất cả các promise 
    //đã được giải quyết và sau đó thực hiện 100 lần tiếp theo.
    await Promise.all(requests)
        .catch(e => console.log(`Error in sending email for the batch ${i} - ${e}`)) 
    // Catch the error.
    }
    req.flash('flash', 'Gửi thành công');
    res.redirect(301, '/admin/mainpage');
}

exports.getAdminUser = async function(req, res) {
    res.render('admin/adminEditAdmin.ejs', {
        user: req.user,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Admin Main Page",
        
    });

}

exports.getAllAdminUser = async function(req, res) {
    var data = await User.query().where('isAdmin', true);
    res.render('admin/adminUser.ejs', {
        user: req.user,
        message: req.flash('flash'),
        users: data,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Admin Main Page",
        
    });

}

exports.updateAdminUser = async function(req, res) {
    const user = await User.query()
        .findById(req.body.id)
        .patch({
            name: req.body.name,
            email: req.body.email,
            password: bcrypt.hashSync(req.body.password, 8),
            phone: req.body.phone
        })
    req.flash('flash', 'Cập nhật thành công');
    res.redirect(301, '/admin/allusers'); 
}

async function getDramaticsUIByTime(req, res) {
    var regexTitle = /\`|\~|\@|\#|\$|\%|\^|\&|\*|\(|\)|\+|\=|\[|\{|\]|\}|\||\\|\<|\>|\/|\""|\;/
    var search = req.query.search;
    
    if((!regexTitle.test(search))){
        var data = await Dramatic.query()
            .where('name', 'like', '%'+search+'%')    
    }else {              
        var data = []
    }
    
    res.render('admin/adminMainPage.ejs', {
        message: req.flash('flash'),
        user: req.user,
        records: data,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Admin Main Page",
            
    });

}

exports.adminMainPage = async function(req, res) {
    if(isEmpty(req.query)){
        var data = await dramatics.getAllDramatic()
        // console.log(req.user);
        res.render('admin/adminMainPage.ejs', {
            message: req.flash('flash'),
            user: req.user,
            records: data,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",
            
        });
    }else{
        getDramaticsUIByTime(req, res);
    }
    

}

async function adminStatisticsByTime(req, res){
    var regexTitle = /\`|\~|\@|\#|\$|\%|\^|\&|\*|\(|\)|\+|\=|\[|\{|\]|\}|\||\\|\<|\>|\/|\""|\;/
    var regex = /^((?:(?:1[6-9]|2[0-9])\d{2})(-)(?:(?:(?:0[13578]|1[02])(-)31)|((0[1,3-9]|1[0-2])(-)(29|30))))$|^(?:(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(-)02(-)29)$|^(?:(?:1[6-9]|2[0-9])\d{2})(-)(?:(?:0[1-9])|(?:1[0-2]))(-)(?:0[1-9]|1\d|2[0-8])$/
    var search = req.query.search;
    var time = req.query.time;
    var end = req.query.end;
    var showtime;
    
    if((!regexTitle.test(search) && search!=null)){
        const dramatic = await Dramatic.query()
            .select('id')
            .where('name', 'like', '%'+search+'%')
        var listID = await dramatic.map(x =>{
            return x.id;
        })
        const showtime = await ShowTime.query()//.eager('showtime_type')
        .where('dramatic_id', 'IN', listID)
        .withGraphFetched('[room, showtime_type, dramatics, ticket]')
        //.where(ticket.status_id, 1);
        var data = showtime.map(temp => {
            var result = {};
            var sum3=0, buy3=0;
            var sum1=0, buy1=0;
            var sum4=0, buy4=0;
            var sum2=0, buy2=0;
            result.id = temp.id,
            result.date = temp.date,
            result.time = temp.time,
            result.room = temp.room,
            result.dramatics = temp.dramatics,
            temp.ticket.map(tempTicket => {
                if(tempTicket.price_id == 3){
                    sum3++;
                    if(tempTicket.status_id == 2){
                        buy3++;
                    }
                }else if(tempTicket.price_id == 4){
                    sum4++;
                    if(tempTicket.status_id == 2){
                        buy4++;
                    }
                }if(tempTicket.price_id == 2){
                    sum2++;
                    if(tempTicket.status_id == 2){
                        buy2++;
                    }
                }else{
                    sum1++;
                    if(tempTicket.status_id == 2){
                        buy1++;
                    }
                }
            })
            result.loai4 = buy4 + '/' + sum4;
            result.loai2 = buy2 + '/' + sum2;
            result.loai3 = buy3 + '/' + sum3;
            result.loai1 = buy1 + '/' + sum1;
            result.tongthu = buy3 * 200000 + buy1 * 100000 + buy4 * 200000 + buy2 * 100000;
            return result;
        }) 
    }else if(regex.test(time) && regex.test(end)){
        const showtime = await ShowTime.query()//.eager('showtime_type')
        .where('date', '>=', time)
        .where('date', '<=', end)
        .withGraphFetched('[room, showtime_type, dramatics, ticket]')
        //.where(ticket.status_id, 1);
        var data = showtime.map(temp => {
            var result = {};
            var sum3=0, buy3=0;
            var sum1=0, buy1=0;
            var sum4=0, buy4=0;
            var sum2=0, buy2=0;
            result.id = temp.id,
            result.date = temp.date,
            result.time = temp.time,
            result.room = temp.room,
            result.dramatics = temp.dramatics,
            temp.ticket.map(tempTicket => {
                if(tempTicket.price_id == 3){
                    sum3++;
                    if(tempTicket.status_id == 2){
                        buy3++;
                    }
                }else if(tempTicket.price_id == 4){
                    sum4++;
                    if(tempTicket.status_id == 2){
                        buy4++;
                    }
                }if(tempTicket.price_id == 2){
                    sum2++;
                    if(tempTicket.status_id == 2){
                        buy2++;
                    }
                }else{
                    sum1++;
                    if(tempTicket.status_id == 2){
                        buy1++;
                    }
                }
            })
            result.loai4 = buy4 + '/' + sum4;
            result.loai2 = buy2 + '/' + sum2;
            result.loai3 = buy3 + '/' + sum3;
            result.loai1 = buy1 + '/' + sum1;
            result.tongthu = buy3 * 200000 + buy1 * 100000 + buy4 * 200000 + buy2 * 100000;
            return result;
        }) 
    }else {              
        data = [];
    }
    res.render('admin/adminStatistics.ejs', {
            user: req.user,
            records: data,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",
        
        });
}

exports.adminStatistics = async function(req, res) {
    if(isEmpty(req.query)){
        var startTemp = moment().subtract(7, 'days');
        startTemp = startTemp.format('YYYY-MM-DD');
        const showtime = await ShowTime.query()//.eager('showtime_type')
        .where('date', '>',startTemp)
        .withGraphFetched('[room, showtime_type, dramatics, ticket]')
        .orderBy('date');
        //.where(ticket.status_id, 1);
        var data = showtime.map(temp => {
            var result = {};
            var sum3=0, buy3=0;
            var sum1=0, buy1=0;
            var sum4=0, buy4=0;
            var sum2=0, buy2=0;
            result.id = temp.id,
            result.date = temp.date,
            result.time = temp.time,
            result.room = temp.room,
            result.dramatics = temp.dramatics,
            temp.ticket.map(tempTicket => {
                if(tempTicket.price_id == 3){
                    sum3++;
                    if(tempTicket.status_id == 2){
                        buy3++;
                    }
                }else if(tempTicket.price_id == 4){
                    sum4++;
                    if(tempTicket.status_id == 2){
                        buy4++;
                    }
                }if(tempTicket.price_id == 2){
                    sum2++;
                    if(tempTicket.status_id == 2){
                        buy2++;
                    }
                }else{
                    sum1++;
                    if(tempTicket.status_id == 2){
                        buy1++;
                    }
                }
            })
            result.loai4 = buy4 + '/' + sum4;
            result.loai2 = buy3 + '/' + sum2;
            result.loai3 = buy3 + '/' + sum3;
            result.loai1 = buy1 + '/' + sum1;
            result.tongthu = buy3 * 200000 + buy1 * 100000 + buy4 * 200000 + buy2 * 100000;
            return result;
        })
        res.render('admin/adminStatistics.ejs', {
            user: req.user,
            records: data,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",
        
        });
    }else{
        adminStatisticsByTime(req, res);
    }
    

}

exports.adminAddPerformance = function(req, res) {
    res.render('admin/adminAddPerformance.ejs', {
        user: req.user,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Thêm vở diễn"
    });
    
}


exports.adminEditPerformance = async function(req, res) {
    var id = req.query.id;
    const dramatics = await Dramatic.query()
        .where('id', id);
    res.render('admin/adminEditPerformance.ejs', {
        user: req.user,
        data: dramatics,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Sửa vở diễn"
    })
}

exports.adminEditSchedule = async function(req, res) {
    var id = req.query.id;
    const showtime = await ShowTime.query()
        .where('id', id);
    const dramatics = await Dramatic.query()
        .select('id', 'name');
    const rooms = await Room.query()
        .select('id', 'name');
    const type = await ShowTimeType.query()
        .select('id', 'name');
    res.render('admin/adminEditSchedule.ejs', {
        user: req.user,
        showtime: showtime,
        records: dramatics,
        rooms: rooms,
        type: type,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Thêm lịch cho vở diễn"
    });
}

async function adminPerformManagementByTime(req, res){
    var regexTitle = /\`|\~|\@|\#|\$|\%|\^|\&|\*|\(|\)|\+|\=|\[|\{|\]|\}|\||\\|\<|\>|\/|\""|\;/
    var regex = /^((?:(?:1[6-9]|2[0-9])\d{2})(-)(?:(?:(?:0[13578]|1[02])(-)31)|((0[1,3-9]|1[0-2])(-)(29|30))))$|^(?:(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(-)02(-)29)$|^(?:(?:1[6-9]|2[0-9])\d{2})(-)(?:(?:0[1-9])|(?:1[0-2]))(-)(?:0[1-9]|1\d|2[0-8])$/
    var search = req.query.search;
    var time = req.query.time;
    var showtime;
    
    if((!regexTitle.test(search) && search!=null)){
        const dramatic = await Dramatic.query()
            .select('id')
            .where('name', 'like', '%'+search+'%')
        var listID = await dramatic.map(x =>{
            return x.id;
        })
        showtime = await ShowTime.query()
            .where('dramatic_id', 'IN', listID)
            .withGraphFetched('[room, showtime_type, dramatics]')  
    }else if(regex.test(time)){
        showtime = await ShowTime.query()
            .where('date', time)
            .withGraphFetched('[room, showtime_type, dramatics]') 
    }else {              
        showtime = [];
    }
    console.log(showtime) 
    res.render('admin/adminPerformManagement.ejs', {
        message: req.flash('flash'),
        user: req.user,
        records: showtime,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Quản lý vở diễn"
    });
}

exports.adminPerformManagement = async function(req, res) {
    
    if(isEmpty(req.query)){
        var startTemp = moment().subtract(7, 'days');
        startTemp = startTemp.format('YYYY-MM-DD');
        //var nowTemp = moment().format('YYYY-MM-DD');

        const showtime = await ShowTime.query()
            .where('date', '>', startTemp)
            .withGraphFetched('[room, showtime_type, dramatics]')
        console.log(showtime)    
        res.render('admin/adminPerformManagement.ejs', {
            message: req.flash('flash'),
            user: req.user,
            records: showtime,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Quản lý vở diễn"
        });
    }else{
        adminPerformManagementByTime(req, res);
    }
    
}
exports.adminAddSchedule = async function(req, res) {
    const dramatics = await Dramatic.query()
        .select('id', 'name');
    const rooms = await Room.query()
        .select('id', 'name');
    const type = await ShowTimeType.query()
        .select('id', 'name');
    res.render('admin/adminAddSchedule.ejs', {
        user: req.user,
        records: dramatics,
        rooms: rooms,
        type: type,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Thêm lịch cho vở diễn"
    });
    
}
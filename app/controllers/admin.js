const { Dramatic } = require('../models/dramatic');
const { SeatType, Room, Seat } = require('../models/seats');
const { ShowTimeType, ShowTime } = require('../models/showtimes');
const { User } = require('../models/users');
const { Transaction } = require('../models/transactions');
const dramatics = require('./dramatic');
const bcrypt = require('bcrypt');
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
    res.redirect(301, '/admin/mainpage'); 
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

exports.adminStatistics = async function(req, res) {
    const showtime = await ShowTime.query()//.eager('showtime_type')
        .withGraphFetched('[room, showtime_type, dramatics, ticket]')
        //.where(ticket.status_id, 1);
    var data = showtime.map(temp => {
        var result = {};
        var sum3=0, buy3=0;
        var sum1=0, buy1=0;
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
            }else{
                sum1++;
                if(tempTicket.status_id == 2){
                    buy1++;
                }
            }
        })
        result.loai3 = buy3 + '/' + sum3;
        result.loai1 = buy1 + '/' + sum1;
        result.tongthu = buy3 * 200000 + buy1 * 100000;
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

exports.adminPerformManagement = async function(req, res) {
    const showtime = await ShowTime.query()//.eager('showtime_type')
        .withGraphFetched('[room, showtime_type, dramatics]');
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
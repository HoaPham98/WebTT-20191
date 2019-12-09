const { Dramatic } = require('../models/dramatic');
const { SeatType, Room, Seat } = require('../models/seats');
const { ShowTimeType, ShowTime } = require('../models/showtimes');
const dramatics = require('./dramatic');

exports.login = function(req, res) {
    // res.render('admin/login.ejs', {
    //     error : req.flash("error"),
    //     success: req.flash("success"),
    //     session:req.session,
    //     title: "Login"
    // });
    res.render('login.ejs', { message: req.flash('loginMessage') });

}

exports.adminMainPage = async function(req, res) {
    var data = await dramatics.getAllDramatic()
    console.log(data);
    res.render('admin/adminMainPage.ejs', {
        records: data,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Admin Main Page",
        
    });

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
        records: data,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Admin Main Page",
        
    });

}

exports.adminAddPerformance = function(req, res) {
    res.render('admin/adminAddPerformance.ejs', {
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
        records: dramatics,
        rooms: rooms,
        type: type,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Thêm lịch cho vở diễn"
    });
    
}
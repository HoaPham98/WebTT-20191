const { Dramatic } = require('../models/dramatic');
const { SeatType, Room, Seat } = require('../models/seats');
const dramatics = require('./dramatic');

exports.login = function(req, res) {
    res.render('admin/login.ejs', {
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Login"
    });
    //res.render('admin/login.ejs', { message: req.flash('loginMessage') });

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
    //})
    
    
}
exports.adminPerformManagement = function(req, res) {
    res.render('admin/adminPerformManagement.ejs', {
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Quản lý vở diễn"
    });
    
}
exports.adminAddSchedule = function(req, res) {
    res.render('admin/adminAddSchedule.ejs', {
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Thêm lịch cho vở diễn"
    });
    
}
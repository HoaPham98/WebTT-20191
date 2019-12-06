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


exports.adminEditPerformance = function(req, res) {
    var id = req.params.id;
    pool.connect(function(err,client,done){
        if(err){
            return console.error('error',err);
        }
        client.query( '*SELECT *FROM voDien WHERE id=' +id,function(err,result){
            done();
            if (err){
                res.end();
                return console.error('error running query',err);
            }

        })
        res.render('admin/adminEditPerformance.ejs', {
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Sửa vở diễn"
        })
    })
    ;
    
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
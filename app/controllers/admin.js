const { Dramatic } = require('../models/dramatic');
const { SeatType, Room, Seat } = require('../models/seats');

exports.login = function(req, res) {
    res.render('admin/login.ejs', {
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Login"
    });
    //res.render('admin/login.ejs', { message: req.flash('loginMessage') });

}
exports.adminMainPage = function(req, res) {
    res.render('admin/adminMainPage.ejs', {
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Admin Main Page"
    });

}
// exports.ok = function (req, res) {
//     res.send('hello');

// }
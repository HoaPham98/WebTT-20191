 exports.authenticate = function(req, res, next) {
    if (req.isAuthenticated()) { //trả về true nếu đã đăng nhập rồi
        next();
    } else {
        res.redirect('/admin/login');
    }
}

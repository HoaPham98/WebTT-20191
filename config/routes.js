var home = require('../app/controllers/home');
var admin = require('../app/controllers/admin');
var showtime = require('../app/controllers/showtime');

//you can include all your controllers

module.exports = function (app, passport) {

    app.get('/', home.home);//home
    app.get('/home', home.home);//home
    app.get('/schedule', home.schedule);
    app.get('/performance', home.performance);
    app.get('/news', home.news);
    app.get('/contact', home.contact);
    app.get('/booking', home.booking);

    app.post('/admin/dramatics', admin.insertDramatic);
    app.get('/admin/dramatics', admin.getDramatic);
    app.post('/admin/showtimes', showtime.insertShowTime);   
    //app.get('/ok', admin.ok);
    app.post('/admin/login', passport.authenticate("login", {
        successRedirect : '/admin/mainpage',
        failureRedirect : '/admin/login',
        failureFlash : true
    }));
    
    app.get('/admin/login',admin.login);
    app.get('/admin/mainpage',admin.adminMainPage);
    
}

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

    app.post('/admin/dramatics', admin.insertDramatic);
    app.get('/admin/dramatics', admin.getDramatic);

    app.post('/admin/showtimes', showtime.insertShowTime);
    
    app.get('/login', admin.login);
    app.get('/ok', admin.ok);
    app.post('/login', passport.authenticate("login", {
        successRedirect : '/ok',
        failureRedirect : '/login',
        failureFlash : true
    }));
}

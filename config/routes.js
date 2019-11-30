var home = require('../app/controllers/home');
var admin = require('../app/controllers/admin');
var dramatic = require('../app/controllers/dramatic');
var room = require('../app/controllers/room');
var showtime = require('../app/controllers/showtime');
var check_input = require('../app/controllers/utils/check_input')
//you can include all your controllers

module.exports = function (app, passport) {

    app.get('/', home.home);//home
    app.get('/home', home.home);//home
    app.get('/schedule', home.schedule);
    app.get('/performance', home.performance);
    app.get('/news', home.news);
    app.get('/contact', home.contact);
    app.get('/booking', home.booking);

    app.post('/admin/dramatics', check_input.isValidInsertDramatic,
        dramatic.insertDramatic);
    app.put('/admin/dramatics', check_input.isValidUpdateDramatic,
        dramatic.updateDramatic);
    app.delete('/admin/dramatics/:id', check_input.isValidParam,
        dramatic.delDramatic);
    app.get('/admin/dramatics/:id', check_input.isValidParam,
        dramatic.getDramatic);

    app.post('/admin/seats', room.insertSeat);
    app.put('/admin/seats', room.updateSeat);

    app.post('/admin/showtimes', showtime.insertShowTime);   
    app.post('/admin/login', passport.authenticate("login", {
        successRedirect : '/admin/mainpage',
        failureRedirect : '/admin/login',
        failureFlash : true
    }));
    
    app.get('/admin/login',admin.login);
    app.get('/admin/mainpage',admin.adminMainPage);
    
}

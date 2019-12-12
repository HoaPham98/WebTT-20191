var home = require('../app/controllers/home');

//you can include all your controllers

module.exports = function (app) {

    app.get('/', home.home);//home
    app.get('/home', home.home);//home
    app.get('/schedule', home.schedule);
    app.get('/performance', home.performance);
    app.get('/news', home.news);
    app.get('/contact', home.contact);
    app.get('/admin/login',home.login);
    app.get('/admin/mainpage',home.adminMainPage);
    app.get('/booking', home.booking);
    app.get('/performance_detail', home.performance_detail);
    app.get('/login_register', home.login_register);
    app.get('/news_detail', home.news_detail);
    app.get('/payment_success', home.payment_success);
    app.get('/payment_error', home.payment_error);



}

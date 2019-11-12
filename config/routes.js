var home = require('../app/controllers/home');

//you can include all your controllers

module.exports = function (app) {

    app.get('/', home.home);//home
    app.get('/home', home.home);//home
    app.get('/schedule', home.schedule);
    app.get('/performance', home.performance);
    app.get('/news', home.news);
    app.get('/contact', home.contact);


}

var home = require('../app/controllers/home');
var contact = require('../app/controllers/contact');
var news = require('../app/controllers/news');
var schedule = require('../app/controllers/schedule');

//you can include all your controllers

module.exports = function (app) {

    app.get('/', home.home);//home
    app.get('/home', home.home);//home
    //contact
    app.get('/contact.html', contact.getContact)
    //news
    app.get('/news.html', news.getNews)
    //schedule
    app.get('/schedule.html', schedule.getSchedule)

}

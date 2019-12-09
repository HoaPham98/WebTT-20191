var home = require('../app/controllers/home');
var admin = require('../app/controllers/admin');
var dramatic = require('../app/controllers/dramatic');
var room = require('../app/controllers/room');
var price = require('../app/controllers/price');
var tickets = require('../app/controllers/tickets');
var showtime = require('../app/controllers/showtime');
var check_input = require('../app/controllers/utils/check_input');
var auth = require('./authenticate');

var api_booking = require('../app/controllers/api/booking')
var api_payment = require('../app/controllers/api/payment')
//you can include all your controllers

module.exports = function (app, passport) {

    app.get('/', home.home);//home
    app.get('/home', home.home);//home
    app.get('/schedule', home.schedule);
    app.get('/performance', home.performance);
    app.get('/news', home.news);
    app.get('/contact', home.contact);
    app.get('/booking', home.booking);
    app.get('/performance_detail', home.performance_detail);
    app.get('/login_register', home.login_register);
    app.get('/news_detail', home.news_detail);

    app.post('/admin/dramatics', auth.authenticate,//check_input.isValidInsertDramatic,
        dramatic.insertDramatic);
    app.put('/admin/dramatics', auth.authenticate, check_input.isValidUpdateDramatic,
        dramatic.updateDramatic);
    app.delete('/admin/dramatics/:id', auth.authenticate, check_input.isValidParam,
        dramatic.delDramatic);
    app.get('/admin/dramatics/:id', check_input.isValidParam,
        dramatic.getDramatic);
    app.post('/admin/seats', room.insertSeat);
    app.put('/admin/seats', room.updateSeat);
    app.get('/admin/prices/all', price.getPrices);
    app.post('/admin/prices', price.insertPrice);
    app.delete('/admin/ticket-status/:id', tickets.delTicketStatus);

    app.get('/admin/add', auth.authenticate, admin.adminAddPerformance);
    app.get('/admin/edit', auth.authenticate, admin.adminEditPerformance);
    app.get('/admin/editschedule', auth.authenticate, admin.adminEditSchedule);
    app.get('/admin/manage', auth.authenticate, admin.adminPerformManagement);
    app.get('/admin/addschedule', auth.authenticate, admin.adminAddSchedule); 
    app.get('/admin/statistic', auth.authenticate, admin.adminStatistics); 

    app.get('/admin/users', auth.authenticate, admin.getAdminUser); 
    app.put('/admin/users', auth.authenticate, admin.updateAdminUser); 
    app.get('/admin/allusers', auth.authenticate, admin.getAllAdminUser); 

    app.post('/admin/showtimes', auth.authenticate, showtime.insertShowTime);
    app.put('/admin/showtimes', auth.authenticate, showtime.updateShowTime);   
    app.post('/admin/login', passport.authenticate("login", {
        successRedirect : '/admin/mainpage',
        failureRedirect : '/admin/login',
        failureFlash : true
    }));
    app.get('/admin/logout', function(req, res){
        req.logout();
        res.redirect('/admin/login');
    });    
    app.get('/admin/login', admin.login);
    app.get('/admin/mainpage', auth.authenticate, admin.adminMainPage);

    app.get('/admin/email', auth.authenticate, admin.getTemplateEmail);
    app.post('/admin/email', auth.authenticate, admin.sendEmail);   

    app.post('/api/booking/getBookingData', api_booking.getBookingData);

    app.post('/api/create_payment', api_payment.create_payment)
    app.get('/api/payment_return', api_payment.return_payment)
    
}

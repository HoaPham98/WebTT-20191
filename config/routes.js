var home = require('../app/controllers/home');
var admin = require('../app/controllers/admin');
var dramatic = require('../app/controllers/dramatic');
var room = require('../app/controllers/room');
var price = require('../app/controllers/price');
var tickets = require('../app/controllers/tickets');
var showtime = require('../app/controllers/showtime');
var check_input = require('../app/controllers/utils/check_input');

var api_booking = require('../app/controllers/api/booking')
var api_payment = require('../app/controllers/api/payment')
const { auth, authAdmin } = require('./auth')
//you can include all your controllers

module.exports = function (app, passport) {

    app.get('/', home.home);//home
    app.get('/home', home.home);//home
    app.get('/schedule', home.schedule);
    app.get('/performance', home.performance);
    app.get('/news', home.news);
    app.get('/contact', home.contact);
    app.get('/performance/:id', home.performance_detail);
    app.get('/login_register', home.login_register);
    app.get('/news/:id', home.news_detail);
    app.get('/payment_success', home.payment_success);
    app.get('/payment_error', home.payment_error);


    // Admin roles
    app.post('/admin/dramatics', authAdmin,
        dramatic.insertDramatic);
    app.put('/admin/dramatics', authAdmin, check_input.isValidUpdateDramatic,
        dramatic.updateDramatic);
    app.delete('/admin/dramatics/:id', authAdmin, check_input.isValidParam,
        dramatic.delDramatic);
    app.get('/admin/dramatics/:id', authAdmin, check_input.isValidParam,
        dramatic.getDramatic);

    app.post('/admin/seats', authAdmin, room.insertSeat);
    app.put('/admin/seats', authAdmin, room.updateSeat);

    app.get('/admin/prices/all', authAdmin, price.getPrices);
    app.post('/admin/prices', authAdmin, price.insertPrice);

    app.delete('/admin/ticket-status/:id', authAdmin, tickets.delTicketStatus);

    app.get('/admin/add', authAdmin, admin.adminAddPerformance);
    app.get('/admin/edit', authAdmin, admin.adminEditPerformance);
    app.get('/admin/editschedule', authAdmin, admin.adminEditSchedule);
    app.get('/admin/manage', authAdmin, admin.adminPerformManagement);
    app.get('/admin/addschedule', authAdmin, admin.adminAddSchedule);
    app.get('/admin/statistic', authAdmin, admin.adminStatistics);

    app.post('/admin/showtimes', authAdmin, showtime.insertShowTime);
    app.put('/admin/showtimes', authAdmin, showtime.updateShowTime);

    app.get('/admin/mainpage', authAdmin, admin.adminMainPage);

    app.post('/login', function (req, res, next) {
        passport.authenticate('local.login', function (err, user, info) {
            if (err) { return next(err); }
            if (!user) { return res.redirect('/login'); }
            req.logIn(user, function (err) {
                if (err) { return next(err); }
                if (user.isAdmin) {
                    return res.redirect('/admin/mainpage')
                }
                var redirectTo = req.session.redirectTo || '/';
                delete req.session.redirectTo;
                // is authenticated ?
                return res.redirect(redirectTo);
            });
        })(req, res, next);
    });

    app.post('/register', home.register)

    // User role
    app.get('/signout', function (req, res, next) {
        if (!req.isAuthenticated()) {
            notFound404(req, res, next);
        } else {
            req.logout();
            res.redirect('/');
        }
    })

    app.get('/user/history', auth, home.order_history)

    app.get('/booking/:id', auth, home.booking);

    app.get('/login', home.login_register);

    app.post('/api/booking/getBookingData', auth, api_booking.getBookingData);

    app.post('/api/create_payment', auth, api_payment.create_payment)
    app.get('/api/payment_return', auth, api_payment.return_payment)

}

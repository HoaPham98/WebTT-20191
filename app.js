var express = require('express');

var app = express();

var path = require('path');
var flash = require('connect-flash')
var morgan = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var methodOverride = require('method-override')
var session = require('express-session');
var passport = require('passport');

var booking = require('./app/controllers/api/booking')

var port = process.env.PORT || 8080;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(methodOverride(function (req, res) {
  if (req.body && typeof req.body === 'object' && '_method' in req.body) {
    // look in urlencoded POST bodies and delete it
    var method = req.body._method
    delete req.body._method
    return method
  }
}))

// Connect database


//set up our express application
app.use(morgan('dev')); // log every request to the console
app.use(cookieParser()); // read cookies (needed for auth)
//app.use(bodyParser()); // get information from html forms


//view engine setup
app.use(express.static(path.join(__dirname, 'app/views')));
app.use('/booking', express.static(path.join(__dirname, 'app/views')));
app.use('/performance', express.static(path.join(__dirname, 'app/views')));
app.use('/news', express.static(path.join(__dirname, 'app/views')));
app.use('/api', express.static(path.join(__dirname, 'app/views')));
app.set('views', path.join(__dirname, 'app/views'));
app.set('view engine', 'ejs');
//app.set('view engine', 'ejs'); // set up ejs for templating


//required for passport
//app.use(session({ secret: 'iloveyoudear...' })); // session secret

app.use(session({
    secret: 'I Love India...',
    resave: true,
    saveUninitialized: true
}));

app.use(passport.initialize());
app.use(passport.session()); // persistent login sessions
app.use(flash()); // use connect-flash for flash messages stored in session

app.use(function(req, res, next) {
    res.locals.user = req.user;
    next();
  });

// config passport
require('./config/passport.js')(passport); 
// routes ======================================================================
require('./config/routes.js')(app, passport); // load our routes and pass in our app and fully configured passport


//launch ======================================================================
var server = require("http").Server(app);
var io = require("socket.io")(server);
server.listen(port);
console.log('The magic happens on port ' + port);

io.on("connection", function(socket)
	{
		socket.on("disconnect", async function()
			{
                var transaction_id = socket.transaction_id
                var showtime_id = socket.showtime_id

                var codes = await booking.removeTransaction(transaction_id)
                if (codes == null) {

                } else {
                    socket.broadcast.emit('update_remove', showtime_id, codes, 'available')
                }
			});
         //server lắng nghe dữ liệu từ client
		socket.on("addTicket", async function(transaction_id, showtime_id, seat_code)
			{
                if (socket.transaction_id == null) {
                    socket.transaction_id = transaction_id
                    socket.showtime_id = showtime_id
                }
                var id = await booking.addTicket(transaction_id, showtime_id, seat_code)
                if (id == null) {
                    socket.emit('display_error', 'Có lỗi vừa xảy ra. Vui lòng thử lại!')
                    socket.emit('update_remove', showtime_id, seat_code, 'available')
                    socket.broadcast.emit('update_remove', showtime_id, seat_code, 'available')
                } else {
                    socket.broadcast.emit('update_add', showtime_id, seat_code, 'unavailable')
                }
            });
            
        socket.on("removeTicket", async function(transaction_id, showtime_id, seat_code)
        {
            var id = await booking.removeTicket(transaction_id, showtime_id, seat_code)
            
            if (id == null) {
                socket.emit('display_error', 'Có lỗi vừa xảy ra. Vui lòng thử lại!')
                socket.emit('update_add', showtime_id, seat_code, 'selected')
                socket.broadcast.emit('update_add', showtime_id, seat_code, 'unavailable')
            } else {
                socket.broadcast.emit('update_remove', showtime_id, seat_code, 'available')
            }
        });
	});


//catch 404 and forward to error handler
app.use(function (req, res, next) {
    res.status(404).render('404', {title: "Sorry, page not found", session: req.sessionbo});
});

app.use(function (req, res, next) {
    res.status(500).render('404', {title: "Sorry, page not found"});
});
exports = module.exports = app;
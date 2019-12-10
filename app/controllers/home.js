const { ShowTime, ShowTimeType } = require('../models/showtimes')
const { Ticket, TicketStatus, Price } = require('../models/tickets')
const { Dramatic } = require('../models/dramatic')
const { Seat, SeatType, Room } = require('../models/seats')
const { Transaction} = require('../models/transactions')


const DramaticRepository = require('../repositories/dramatics')
const SeatRepository = require('../repositories/seats')

exports.home = async function(req, res) {

	const dramatics = await DramaticRepository.getDramatics()

	res.render('index.ejs', {
		error: req.flash("error"),
		success: req.flash("success"),
		session: req.session,
		dramatics: dramatics,
		title: "Nhóm 04"
	});
}

exports.schedule = async function(req, res) {
	const showtimes = await ShowTime.query().distinct('dramatic_id').select('showtime.*').where('date', '>', new Date()).withGraphFetched('[dramatics]')
	res.render('schedule.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		showtimes: showtimes,
		session:req.session,
		title: "Lịch diễn"
	});
	 
}

exports.performance = function(req, res) {
	const id = req.params.id
	res.render('performance.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Vở diễn"
	});

}
exports.news = function(req, res) {
	res.render('news.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Tin tức"
	});

}
exports.contact = function(req, res) {
	res.render('contact.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Liên hệ"
	});

}

exports.booking = async function(req, res) {

	const showtime_id = req.params.id || 1

	var showtime = await ShowTime.query().findById(showtime_id)
	var dramatic = await showtime.$relatedQuery('dramatics')
	console.log(dramatic)
	
	const transaction = await Transaction.query().insert({showtime_id: showtime_id})

	console.log(transaction.id)

	res.render('booking.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		showtime: showtime,
		dramatic: dramatic,
		transaction_id: transaction.id,
		title: "Đặt vé"
	});

}

exports.performance_detail = function(req, res) {
	res.render('performance_detail.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Chi tiết vở diễn"
	});
}

exports.login_register = function(req, res) {
	if (req.isAuthenticated()) {
		res.redirect('/');
	}
	res.render('login_register.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		loginMessage: req.flash('loginMessage'),
		title: "Đăng nhập & Đăng ký"
	});
}

exports.news_detail = function(req, res) {
	res.render('news_detail.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Tin tức nổi bật"
	});
}

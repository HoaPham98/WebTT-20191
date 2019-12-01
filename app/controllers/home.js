const { ShowTime, ShowTimeType } = require('../models/showtimes')
const { Ticket, TicketStatus, Price } = require('../models/tickets')
const { Dramatic } = require('../models/dramatic')
const { Seat, SeatType, Room } = require('../models/seats')
const { Transaction} = require('../models/transactions')


exports.home = function(req, res) {
	res.render('index.ejs', {
		error: req.flash("error"),
		success: req.flash("success"),
		session: req.session,
		title: "Nhóm 04"
	});
}
	exports.schedule = function(req, res) {
		res.render('schedule.ejs', {
			error : req.flash("error"),
			success: req.flash("success"),
			session:req.session,
			title: "Lịch diễn"
		});
	 
}

exports.performance = function(req, res) {
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

	var showtime = await ShowTime.query().findById(1)
	var dramatic = await showtime.$relatedQuery('dramatics')
	console.log(dramatic)

	var prices = await Price.query().where('showtime_type_id', showtime.type_id)
	console.log(prices)
	
	const transaction = await Transaction.query().insert({})

	console.log(transaction.id)

	res.render('booking.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		showtime: showtime,
		dramatic: dramatic,
		prices: prices,
		transaction_id: transaction.id,
		title: "Đặt vé"
	});
}
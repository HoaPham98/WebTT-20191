const { ShowTime, ShowTimeType } = require('../models/showtimes')
const { Ticket, TicketStatus, Price } = require('../models/tickets')
const { Dramatic } = require('../models/dramatic')
const { Seat, SeatType, Room } = require('../models/seats')
const { Transaction} = require('../models/transactions')


const DramaticRepository = require('../repositories/dramatics')
const SeatRepository = require('../repositories/seats')

exports.home = async function(req, res) {

	const dramatics = await DramaticRepository.getDramatics()
	const rooms = await SeatRepository.getRooms()

	const room = rooms[0]

	const seats = await room.$relatedQuery('seats')

	res.render('index.ejs', {
		error: req.flash("error"),
		success: req.flash("success"),
		session: req.session,
		dramatics: dramatics,
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

	const showtime_id = req.body.showtime_id || 1

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
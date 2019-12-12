const { ShowTime, ShowTimeType } = require('../models/showtimes')
const { Ticket, TicketStatus, Price } = require('../models/tickets')
const { Dramatic } = require('../models/dramatic')
const { Seat, SeatType, Room } = require('../models/seats')
const { Transaction} = require('../models/transactions')


const DramaticRepository = require('../repositories/dramatics')
const SeatRepository = require('../repositories/seats')
const { News } = require('../models/news')

exports.home = async function(req, res) {

	const dramatics = await Dramatic.query().limit(3)

	res.render('index.ejs', {
		error: req.flash("error"),
		success: req.flash("success"),
		session: req.session,
		dramatics: dramatics,
		title: "Nhóm 04"
	});
}

async function asyncForEach(array, callback) {
	for (let index = 0; index < array.length; index++) {
	  await callback(array[index], index, array);
	}
  }

exports.schedule = async function(req, res) {

	const showtimes = await ShowTime.query().whereIn('date', function() {
		this.min('date').from('showtime').groupBy('dramatic_id').where('date', '>=' , new Date() - 60*60*1000*24)
	})
	var finalShowtimes = []
	await asyncForEach(showtimes, async (showtime) => {
		const dramatic = await showtime.$relatedQuery('dramatics')
		showtime.dramatics = dramatic
	})

	res.render('schedule.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		showtimes: showtimes,
		session:req.session,
		title: "Lịch diễn"
	});
	 
}

exports.performance = async function(req, res) {
	const dramatics = await Dramatic.query()
	res.render('performance.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		dramatics: dramatics,
		title: "Vở diễn"
	});

}

exports.news = async function(req, res) {
	const newses = await News.query()
	res.render('news.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		news: newses,
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
	
	const transaction = await Transaction.query().insert({showtime_id: showtime_id, user_id: req.user.id})

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

exports.performance_detail = async function(req, res) {
	const id = req.params.id || 1

	const dramatic = await Dramatic.query().findById(id)

	const showtimes = await ShowTime.query().where('dramatic_id', dramatic.id).where('date','>', Date.now() - 60*60*1000*24)
	res.render('performance_detail.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		dramatic: dramatic,
		showtimes: showtimes,
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

exports.news_detail = async function(req, res) {
	const id = req.params.id || 1

	const news = await News.query().findById(id)
	res.render('news_detail.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		news: news,
		title: "Tin tức nổi bật"
	});
}


exports.order_history = async function(req, res) {
	const user = req.user

	try {
		const transactions = await Transaction.query().where('user_id', user.id).whereNotNull('code')
		await asyncForEach(transactions, async (transaction) => {
			const tickets = await transaction.$relatedQuery('tickets')
			transaction.tickets = tickets
		})
		res.json(transactions)
	} catch (err) {
		res.status(400).json({error: err.message})
	}
}

exports.payment_success = async function(req, res) {
	if (req.session.transaction_id_success != null) {
		const transaction_id = req.session.transaction_id_success
		delete req.session.transaction_id_success

		const transaction = await Transaction.query().findById(transaction_id).withGraphFetched('[tickets, tickets.[seat, showtime, showtime.dramatics]]')
		const showtime = transaction.tickets[0].showtime

		const code = transaction.tickets.map( item => item.seat.code).join(', ')

		res.render('payment_success.ejs', {
			error : req.flash("error"),
			success: req.flash("success"),
			session:req.session,
			transaction: transaction,
			showtime: showtime,
			code: code,
			title: "Thanh toán thành công"
		});
	}
	
}

exports.payment_error = function(req, res) {
	res.render('payment_error.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Thanh toán thất bại"
	});
}
const { ShowTime, ShowTimeType } = require('../models/showtimes')
const { Ticket, TicketStatus, Price } = require('../models/tickets')
const { Dramatic } = require('../models/dramatic')
const { Seat, SeatType, Room } = require('../models/seats')
const { Transaction} = require('../models/transactions')
const { User } = require('../models/user')

const bcrypt = require('bcrypt')

const { News } = require('../models/news')

const { sendMail } = require('./mail')

var port = process.env.PORT || 8080;

exports.home = async function(req, res) {

	const dramatics = await Dramatic.query().limit(3)
	var news
	try {
		news = await News.query().findOne()
	} catch (err) {
		console.log(err)
	}

	res.render('index.ejs', {
		error: req.flash("error"),
		success: req.flash("success"),
		session: req.session,
		dramatics: dramatics,
		news: news,
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
		port: port,
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
	const isRegister = req.flash('isRegister').length > 0
	res.render('login_register.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		loginMessage: req.flash('loginMessage'),
		registerMessage: req.flash('registerMessage'),
		isRegister: isRegister,
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
		const id = req.session.transaction_id_success
		delete req.session.transaction_id_success

		const transaction = await Transaction.query().findById(id).withGraphFetched('[tickets, tickets.[seat], user]')
		const showtime = await ShowTime.query().findById(transaction.tickets[0].showtime_id).withGraphFetched('[dramatics]')

		const code = transaction.tickets.map( item => item.seat.code).join(', ')

		transaction.showtime = showtime
		transaction.seat_code = code
	
		sendMail("rubik0403@gmail.com", transaction.user.name, transaction)


		res.render('payment_success.ejs', {
			error : req.flash("error"),
			success: req.flash("success"),
			session:req.session,
			transaction: transaction,
			showtime: showtime,
			code: code,
			title: "Thanh toán thành công"
		});
	} else {
		res.redirect(302, '/404')
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

exports.register = async function(req, res) {
	try {
		const user = await User.query().findOne({
			'email': req.body.email
		})

		if (user) {
			console.log('email đã tồn tại')
			throw new Error('Email đã được sử dụng, vui lòng chọn email khác')
		}

		const password = bcrypt.hashSync(req.body.password, 8)
		const newUser = await User.query().insertAndFetch({
			name: req.body.name,
			email: req.body.email,
			password: password,
			phone: req.body.phone,
			isAdmin: false
		})

		req.flash('loginMessage', 'Đăng kí thành công')

		res.redirect('/login')

	} catch (err) {
		req.flash('isRegister', true)
		req.flash('registerMessage', err.message)
		res.redirect('/login')
	}
}

exports.sendMail = async function(req, res) {
	const id = req.query.id || 13
	try {
	const transaction = await Transaction.query().findById(id).withGraphFetched('[tickets, tickets.[seat], user]')
	const showtime = await ShowTime.query().findById(transaction.tickets[0].showtime_id).withGraphFetched('[dramatics]')

	const code = transaction.tickets.map( item => item.seat.code).join(', ')

	transaction.showtime = showtime
	transaction.seat_code = code
	
	sendMail("rubik0403@gmail.com", transaction.user.name, transaction)
	res.status(200).json({'message': 'done'})
	} catch (err) {
		console.log(err)
		res.status(400)
	}
}
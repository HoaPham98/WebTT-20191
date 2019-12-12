
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
exports.login = function(req, res) {
	res.render('admin/login.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Login"
	});

}
exports.adminMainPage = function(req, res) {
	res.render('admin/adminMainPage.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Admin Main Page"
	});

}

exports.booking = function(req, res) {
	res.render('booking.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
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
	res.render('login_register.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
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

exports.payment_success = function(req, res) {
	res.render('payment_success.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Thanh toán thành công"
	});
}

exports.payment_error = function(req, res) {
	res.render('payment_error.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Thanh toán thất bại"
	});
}

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
exports.adminAddPerformance = function(req, res) {
	res.render('admin/adminAddPerformance.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Thêm vở diễn"
	});
	
}


exports.adminEditPerformance = function(req, res) {
	var id = req.params.id;
	pool.connect(function(err,client,done){
		if(err){
			return console.error('error',err);
		}
		client.query( '*SELECT *FROM voDien WHERE id=' +id,function(err,result){
			done();
			if (err){
				res.end();
				return console.error('error running query',err);
			}

		})
		res.render('admin/adminEditPerformance.ejs', {
			error : req.flash("error"),
			success: req.flash("success"),
			session:req.session,
			title: "Sửa vở diễn"
		})
	})
	;
	
}
exports.adminPerformManagement = function(req, res) {
	res.render('admin/adminPerformManagement.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Quản lý vở diễn"
	});
	
}
exports.adminAddSchedule = function(req, res) {
	res.render('admin/adminAddSchedule.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Thêm lịch cho vở diễn"
	});
	
}
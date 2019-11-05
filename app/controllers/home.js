
exports.home = function(req, res) {
	res.render('index.ejs', {
		error : req.flash("error"),
		success: req.flash("success"),
		session:req.session,
		title: "Nhóm 04"
	 });
	 
}


    

const { News } = require('../models/news');
const dateFormat = require('dateformat');

exports.insertNews = async function (req, res) {
    var now = new Date();
    var created_at = dateFormat(now, "yyyy-mm-dd HH:MM:ss");
    var newsTemp = {};
    newsTemp.title = req.body.title;
    newsTemp.content = req.body.content;
    newsTemp.created_at = created_at;
    newsTemp.updated_at = updated_at;
    
    //console.log(newDramatic);
    const news = await News.query()
        .allowGraph('[title, content, created_at, updated_at]')
        .insert(newsTemp)
        //.then(res.send("okInsertDrama"))
    req.flash('flash', 'Thêm thành công');
    res.redirect(301, '/admin/news'); 
}

exports.updateNews = async function (req, res) {
    var now = new Date();
    var updated_at = dateFormat(now, "yyyy-mm-dd HH:MM:ss");
    const news = await News.query()
        .findById(req.body.id)
        .patch({
            title: req.body.title,
            content: req.body.content,     
            updated_at: updated_at
        })
    req.flash('flash', 'Cập nhật thành công');
    res.redirect(301, '/admin/news'); 
}

exports.delNews = async function (req, res) {
    const news = await News.query()
        .deleteById(req.params.id)
    res.send("success");
}

exports.getNewsUI = async function(req, res) {
    const news = await News.query()
    // console.log(req.user);
    res.render('admin/news_manage.ejs', {
        message: req.flash('flash'),
        user: req.user,
        records: news,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Admin Main Page",
        
    });

}

exports.getInsertNewsUI = function(req, res) {
    res.render('admin/news_insert.ejs', {
        user: req.user,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Thêm vở diễn"
    });
    
}

exports.getUpdateNewsUI = async function(req, res) {
    var id = req.query.id;
    const news = await News.query()
        .where('id', id);
    res.render('admin/news_update.ejs', {
        user: req.user,
        data: news,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Thêm vở diễn"
    });
    
}
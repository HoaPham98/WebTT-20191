const { News } = require('../models/news');
const dateFormat = require('dateformat');
const isEmpty = require('lodash.isempty');
const moment = require('moment');
exports.insertNews = async function (req, res) {
    var now = new Date();
    var created_at = dateFormat(now, "yyyy-mm-dd HH:MM:ss");
    var updated_at = created_at;
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
    var backOneWeek = new Date(now);
    backOneWeek.setDate(backOneWeek.getDate() - 7);
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

async function getNewsUIByTime(req, res) {
    var regex = /^((?:(?:1[6-9]|2[0-9])\d{2})(-)(?:(?:(?:0[13578]|1[02])(-)31)|((0[1,3-9]|1[0-2])(-)(29|30))))$|^(?:(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(-)02(-)29)$|^(?:(?:1[6-9]|2[0-9])\d{2})(-)(?:(?:0[1-9])|(?:1[0-2]))(-)(?:0[1-9]|1\d|2[0-8])$/
    var regexTitle = /\`|\~|\@|\#|\$|\%|\^|\&|\*|\(|\)|\+|\=|\[|\{|\]|\}|\||\\|\<|\>|\/|\""|\;/
    var title = req.query.title;
    var time = req.query.time;
    var start = time + " 00:00:00";
    var end = time + " 23:59:59";

    if(regex.test(time) && (!regexTitle.test(title)) && title.length > 0){
        var news = await News.query()
        .where('title', 'like', '%'+title+'%')
        .where('updated_at', '>', start)
        .where('updated_at', '<', end)
    }
    else if(!regexTitle.test(title) && time.length==0 && title.length > 0){
        var news = await News.query()
        .where('title', 'like', '%'+title+'%')

    }else if(!regexTitle.test(title) && regex.test(time) && title.length == 0){
        var news = await News.query()
        .where('updated_at', '>', start)
        .where('updated_at', '<', end)

    } else {              
        var news = []
    }
    
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

exports.getNewsUI = async function(req, res) {
    if(isEmpty(req.query)){
        var startTemp = moment().subtract(7, 'days');
        startTemp = startTemp.format('YYYY-MM-DD');
        var nowTemp = moment().format('YYYY-MM-DD');

        var start =  startTemp + " 00:00:00";
        var end = nowTemp + "23:59:59";
        const news = await News.query()
            .where('updated_at', '>', start)
            .where('updated_at', '<', end)

        res.render('admin/news_manage.ejs', {
            message: req.flash('flash'),
            user: req.user,
            records: news,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",
            
        });    
    }else{
        getNewsUIByTime(req, res);
    }
    

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
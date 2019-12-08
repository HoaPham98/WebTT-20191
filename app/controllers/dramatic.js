const { Dramatic } = require('../models/dramatic');

exports.insertDramatic = async function (req, res) {
    const newDramatic = req.body;
    console.log(newDramatic);
    const dramatic = await Dramatic.query()
        .allowGraph('[name, author, director, music, poster, decorator, actor, sumary]')
        .insert(newDramatic)
        //.then(res.send("okInsertDrama"))
    res.redirect(301, '/admin/mainpage'); 
}

exports.updateDramatic = async function (req, res) {
    const dramatic = await Dramatic.query()
        .findById(req.body.id)
        .patch({
            name: req.body.name,
            author: req.body.author,
            director: req.body.director,
            music: req.body.music,
            poster: req.body.poster,
            decorator: req.body.decorator,
            actor: req.body.actor,
            sumary: req.body.sumary
        })
    res.redirect(301, '/admin/mainpage'); 
}

exports.delDramatic = async function (req, res) {
    const dramatics = await Dramatic.query()
        .deleteById(req.params.id)
    res.send("success");
}

exports.getDramatic = async function (req, res) {
    console.log(req.params.id);
    const dramatics = await Dramatic.query()
        .where('id', req.params.id);
    res.send(dramatics);
}

exports.getAllDramatic = async function (req, res) {
    const dramatics = await Dramatic.query()
    return dramatics;
}
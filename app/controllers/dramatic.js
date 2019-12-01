const { Dramatic } = require('../models/dramatic');

exports.insertDramatic = async function (req, res) {
    const newDramatic = req.body;
    const dramatic = await Dramatic.query()
        .allowInsert('[name, author, director, music, poster, decorator, actor, sumary]')
        .insert(newDramatic)
        .then(res.send("okInsertDrama"))
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
        .then(res.send("okUpdateDrama"))
}

exports.delDramatic = async function (req, res) {
    const dramatics = await Dramatic.query()
        .deleteById(req.params.id)
    res.send("okDeleteDrama");
}

exports.getDramatic = async function (req, res) {
    console.log(req.params.id);
    const dramatics = await Dramatic.query()
        .where('id', req.params.id);
    res.send(dramatics);
}
const { Dramatic } = require('../models/dramatic');

var fs = require('fs');

// function to encode file data to base64 encoded string
function base64_encode(file) {
    // read binary data
    var bitmap = fs.readFileSync(file);
    // convert binary data to base64 encoded string
    return new Buffer(bitmap).toString('base64');
}

exports.insertDramatic = async function (req, res) {
    var newDramatic = req.body;
    const path = newDramatic.poster.path
    const image = 'data:image/jpeg;base64,' + base64_encode(path)
    newDramatic.poster = image
    console.log(newDramatic);
    const dramatic = await Dramatic.query()
        .allowGraph('[name, author, director, music, poster, decorator, actor, sumary]')
        .insert(newDramatic)
        //.then(res.send("okInsertDrama"))
    req.flash('flash', 'Thêm thành công');
    res.redirect(301, '/admin/mainpage'); 
}

exports.updateDramatic = async function (req, res) {
    const path = req.body.poster.path
    const image = 'data:image/jpeg;base64,' + base64_encode(path)
    const dramatic = await Dramatic.query()
        .findById(req.body.id)
        .patch({
            name: req.body.name,
            author: req.body.author,
            director: req.body.director,
            music: req.body.music,
            poster: image,
            decorator: req.body.decorator,
            actor: req.body.actor,
            sumary: req.body.sumary
        })
    req.flash('flash', 'Cập nhật thành công');
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
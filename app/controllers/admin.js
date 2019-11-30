const { Dramatic } = require('../models/dramatic');
const { SeatType, Room, Seat } = require('../models/seats');

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
    const dramatics = await Dramatic.query();
    res.send(dramatics);
}

exports.insertRoom = async function (req, res) {
    const newRoom = req.body;
    const room = await Room.query()
        .allowInsert('[column_number, name, row_number]')
        .insert(newRoom)
        .then(res.send("okInsertRoom"))
}

exports.updateRoom = async function (req, res) {
    const room = await Room.query()
        .findById(req.body.id)
        .patch({
            column_number: req.body.column_number,
            name: req.body.name,
            row_number: req.body.director
        })
        .then(res.send("okUpdateRoom"))
}

exports.delRoom = async function (req, res) {
    const room = await Room.query()
        .deleteById(req.params.id)
    res.send("okDeleteRoom");
}

exports.insertSeat = async function (req, res) {
    const room = await Room.query().findById(req.body.room_id)
    await room.$relatedQuery('seat')
        .allowInsert('[type_id, row, col]')
        .insert(req.body)
    res.send(idea)
}

exports.updateSeat = async function (req, res) {
    const room = await Room.query()
        .findById(req.body.id)
        .patch({
            room_id: req.body.room_id,
            type_id: req.body.type_id,
            row: req.body.row,
            col: req.body.col
        })
        .then(res.send("okUpdateRoom"))
}

// exports.insertShowtime = async function (req, res) {
//     const newShowtime = req.body;
//     const showtime = await Dramatic.query()
//         .allowInsert('[date, time, dramatic_id, room_id, type_id]')
//         .insert(newShowtime)
//         .then(res.send("okShowtime"))
// }

exports.login = function (req, res) {
    res.render('login.ejs', { message: req.flash('loginMessage') });
}

exports.ok = function (req, res) {
    res.send('hello');

}
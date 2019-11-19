const { ShowTimeType, ShowTime } = require('../models/showtimes');
const { SeatType, Room, Seat } = require('../models/seats');

exports.insertShowTimeType = async function (req, res) {
    const newShowTimeType = req.body;
    const showTimeType = await ShowTimeType.query()
        .allowInsert('[name]')
        .insert(newShowTimeType)
        .then(res.send("okInsertShowTimeType"))
}

exports.updateShowTimeType = async function (req, res) {
    const showTimeType = await ShowTimeType.query()
        .findById(req.body.id)
        .patch({
            name: req.body.name,
        })
        .then(res.send("okUpdateShowTimeType"))
}

exports.insertShowTime = async function (req, res) {
    const newShowTime = req.body;
    const showTime = await ShowTime.query()
        .allowInsert('[date, time, dramatic_id, room_id, type_id]')
        .insert(newShowTime)
        .then(res.send("okInsertShowTime"))
}

exports.updateShowTime = async function (req, res) {
    const showTime = await ShowTime.query()
        .findById(req.body.id)
        .patch({
            date: req.body.date, 
            time: req.body.time, 
            dramatic_id: req.body.dramatic_id, 
            room_id: req.body.room_id, 
            type_id: req.body.type_id
        })
        .then(res.send("okUpdateShowTime"))
}
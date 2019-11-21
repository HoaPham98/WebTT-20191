const { ShowTimeType, ShowTime } = require('../models/showtimes');
const { SeatType, Room, Seat } = require('../models/seats');
const { TicketStatus, Price, Ticket } = require('../models/tickets');

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
    console.log(newShowTime);
    const showTime = await ShowTime.query()
        .allowInsert('[date, time, dramatic_id, room_id, type_id]')
        .insert(newShowTime)

    const seat = await Seat.query()
        .where('room_id', req.body.room_id);
    var items = [];
    for (var i = 0; i < seat.length; i++) {
        var item = {
            showtime_id: showTime.id,
            seat_id: seat[i].id,
            status_id: 1,
            price_id: await checkPrice(seat[i], showTime)
        }
        items.push(item);
    }
    //console.log(items)
    const ticket = await Ticket.query()
        //.allowInsert('[showtime_id, seat_id, status_id, price_id]')
        .insertGraph(items)
    res.send('OK insert showtime');
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
}
async function checkPrice(seat, showTime) {
    const price = await Price
        .query()
        .where('seat_type_id', seat.type_id)
        .where('showtime_type_id', showTime.type_id)
    console.log(price[0].id)
    return price[0].id;
}
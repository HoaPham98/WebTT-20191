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
        .allowGraph('[date, time, dramatic_id, room_id, type_id]')
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
    res.redirect(301, '/admin/manage');}

exports.updateShowTime = async function (req, res) {
    const tempShowTime = req.body;
    //console.log(typeof tempShowTime.dramatic_id);
    const showTime = await ShowTime.query()
        .where('id', tempShowTime.id)
        .where('date', tempShowTime.date)
        .where('time', tempShowTime.time)
        .where('dramatic_id', tempShowTime.dramatic_id)
        .where('room_id', tempShowTime.room_id)
        .where('type_id', tempShowTime.type_id);
    if(showTime.length > 0){
        res.redirect(301, '/admin/manage');
    };

    const showTimeUpdate = await ShowTime.query()
        .findById(tempShowTime.id)
        .patch({
            date: tempShowTime.date,
            time: tempShowTime.time,
            dramatic_id: tempShowTime.dramatic_id,
            room_id: tempShowTime.room_id,
            type_id: tempShowTime.type_id
        })

    const seat = await Seat.query()
        .where('room_id', tempShowTime.room_id);
    var items = [];
    for (var i = 0; i < seat.length; i++) {
        var item = {
            showtime_id: tempShowTime.id,
            seat_id: seat[i].id,
            status_id: 1,
            price_id: await checkPrice(seat[i], tempShowTime)
        }
        items.push(item);
    }

    for (var i = 0; i < seat.length; i++) {
         const showTimeResult = await ShowTime.relatedQuery('ticket')
            .for(tempShowTime.id)
            .patch({ price_id: items[i].price_id  })
            .where('seat_id', seat[i].id);
    }
   
    res.redirect(301, '/admin/manage');
}
async function checkPrice(seat, tempShowTime) {
    const price = await Price
        .query()
        .where('seat_type_id', seat.type_id)
        .where('showtime_type_id', tempShowTime.type_id)
    return price[0].id;
}

function checkEqual(tempShowTime, showTime) {
    if((tempShowTime.date == showTime.date)){
        console.log(tempShowTime.date == showTime.date)
        return true;
    }      
}
// &&
//         (tempShowTime.time == showTime.time)&&
//         (tempShowTime.dramatic_id == showTime.dramatic_id)&&
//         (tempShowTime.room_id == showTime.room_id)&&
//         (tempShowTime.type_id == showTime.type_id)
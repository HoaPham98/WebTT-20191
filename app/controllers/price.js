const { TicketStatus, Price, Ticket } = require('../models/tickets');
const { SeatType } = require('../models/seats');
const { ShowTimeType } = require('../models/showtime_types');

exports.getPrices = async function (req, res) {
    //try{
        const room = await Price.query()//.eager('showtime_type')
            .withGraphFetched('[seat_type, showtime_type]');
        //const room2 = await room.$relatedQuery('seat_type')
        res.send(room);
    // }catch(err){
    //     res.send(err);
    // }
    
}

exports.getPrice = async function (req, res) {
    const room = await Price.query()
        .withGraphFetched('[seat_type, showtime_type]')
        .where('id', req.params.id)
    res.send(room);   
}

exports.insertPrice = async function (req, res) {
    const tempPrice = req.body;
    const seatType = await SeatType.query().where('id', req.body.seat_type_id);
    const showTimeType = await ShowTimeType.query().where('id', req.body.showtime_type_id);
    if(seatType.length > 0 && showTimeType.length > 0){
        const price = await Price.query()
            .allowInsert('[seat_type_id, showtime_type_id, price]')
            .insert(req.body)
            //.insert(tempPrice.seat_type_id, tempPrice.showtime_type_id, tempPrice.price)
        res.send("okInsertPrice")
    }else{
        res.send("invalid");
    }    
}

exports.updatePrice = async function (req, res) {
    const tempPrice = req.body;
    const seatType = await SeatType.query().where('id', req.body.seat_type_id);
    const showTimeType = await ShowTimeType.query().where('id', req.body.showtime_type_id);
    if(seatType.length > 0 && showTimeType.length > 0){
        const price = await Price.query()
        .findById(req.params.id)
        .patch({
            seat_type_id: req.body.seat_type_id,
            showtime_type_id: req.body.showtime_type_id,
            price: req.body.price
        })
        .then(res.send("okUpdatePrice"))
    }else{
        res.send("invalid");
    }    
}

exports.delPrice = async function (req, res) {
    const price = await Price.query()
        .deleteById(req.params.id)
    res.send("okDeletePrice");
}
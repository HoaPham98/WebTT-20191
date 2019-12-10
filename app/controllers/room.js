const { SeatType, Room, Seat } = require('../models/seats');

exports.getRoom = async function (req, res) {
    //console.log(req.params.id);
    const room = await Room.query()
        .where('id', req.params.id);
    res.send(room);
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

exports.getAllSeat = async function (req, res) {
    try{
        const seat = await Seat.query().withGraphFetched('[seat_type]')
        const room = await Room.query()
        var final = seat.map(flag => {
            var object = {}
            object.id = flag.id
            for(let j=0; j<room.length; j++){
                if(flag.room_id == room[j].id){
                    //console.log(flag.room_id == room[j].id)
                    object.room_name = room[j].name
                    break;
                }
            }
            object.room_id = flag.room_id
            object.type_id = flag.type_id
            object.row = flag.row
            object.col = flag.col
            object.seat_type = flag.seat_type
            return object;
        })
        console.log(final)    
        res.render('admin/adminManageSeat.ejs', {
            message: req.flash('flash'),
            user: req.user,
            records: final,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",
            
        });
    }catch(err){
        console.log(err);
    }
    
}

exports.insertSeat = async function (req, res) {
    try{
        const room = await Room.query().findById(req.body.room_id)
        console.log(room);
        await room.$relatedQuery('seats')
            .insert({type_id: req.body.type_id, row: req.body.row, col: req.body.col})
        res.send("ok")
    }catch(err){
        res.send(err);
    }
    
}

exports.updateSeat = async function (req, res) {
    try{
        const room = await Room.query().where('id', req.body.room_id);
        if(room.length > 0){
            const seat = await Seat.query()
                .findById(req.body.id)
                .patch({
                    room_id: req.body.room_id,
                    type_id: req.body.type_id,
                    row: req.body.row,
                    col: req.body.col
                })
                .then(res.send("okUpdateRoom"))
            res.send("okUpdateRoom")
        }else{
            res.send("invalid room id");
        }
    }catch(err){
        res.send("invalid room id");
    }
}
const { SeatType, Room, Seat } = require('../models/seats');
const isEmpty = require('lodash.isempty');

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

async function getSeatById(req, res) {
    try{
        const roomList = await Room.query()
        const room = await Room.query()
            .where('id', req.query.id);
        const seat = await Seat.query()
            .where('room_id', req.query.id)
            .withGraphFetched('[seat_type]')
        
        var final = seat.map(flag => {
            var object = {}
            object.id = flag.id          
            object.room_name = room[0].name         
            object.room_id = flag.room_id
            object.type_id = flag.type_id
            object.row = flag.row
            object.col = flag.col
            object.seat_type = flag.seat_type
            return object;
        })
        //console.log(final)    
        res.render('admin/adminManageSeat.ejs', {
            message: req.flash('flash'),
            user: req.user,
            rooms: roomList,
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

exports.getAllSeat = async function (req, res) {
    if(isEmpty(req.query)){
        try{
        // const seat = await Seat.query().withGraphFetched('[seat_type]')
        // const room = await Room.query()
        // var final = seat.map(flag => {
        //     var object = {}
        //     object.id = flag.id
        //     for(let j=0; j<room.length; j++){
        //         if(flag.room_id == room[j].id){
        //             //console.log(flag.room_id == room[j].id)
        //             object.room_name = room[j].name
        //             break;
        //         }
        //     }
        //     object.room_id = flag.room_id
        //     object.type_id = flag.type_id
        //     object.row = flag.row
        //     object.col = flag.col
        //     object.seat_type = flag.seat_type
        //     return object;
        // })
        const roomList = await Room.query()
        const room = await Room.query()
            .where('id', 1);
        const seat = await Seat.query()
            .where('room_id', 1)
            .withGraphFetched('[seat_type]')
        
        var final = seat.map(flag => {
            var object = {}
            object.id = flag.id          
            object.room_name = room[0].name         
            object.room_id = flag.room_id
            object.type_id = flag.type_id
            object.row = flag.row
            object.col = flag.col
            object.seat_type = flag.seat_type
            return object;
        })
        console.log(room);
        res.render('admin/adminManageSeat.ejs', {
            message: req.flash('flash'),
            user: req.user,
            rooms: roomList,
            records: final,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",
            
        });
        }catch(err){
        console.log(err);
        }
    }else{
        getSeatById(req, res)
    }
    
}

exports.getInsertTemplate = async function(req, res) {
    const room = await Room.query()
    console.log(room)
    const seat_type = await SeatType.query()
    res.render('admin/adminAddSeat.ejs', {
        user: req.user,
        room: room,
        type: seat_type,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Thêm vở diễn"
    });
    
}

exports.insertSeat = async function (req, res) {
    try{
        const room = await Room.query().findById(req.body.room_id)
        const seat = await Seat.query()
            .select(row, col)
            .where('room_id', 'req.body.room_id')
        if( req.body.row > room[0].row_number || 
            req.body.col > room[0].column_number){
            req.flash('flash', 'Thêm không thành công');
            res.redirect(301, '/admin/seats');
        }else{
            for(var i =0; i<seat.length; i++){
                if(req.body.row == seat[i].row_number && 
                req.body.col == seat[i].column_number){
                    req.flash('flash', 'Thêm không thành công');
                    res.redirect(301, '/admin/seats');
                }else{
                    await room.$relatedQuery('seats')
                    .insert({type_id: req.body.type_id, row: req.body.row, col: req.body.col})
                    req.flash('flash', 'Thêm thành công');
                    res.redirect(301, '/admin/seats');
                }
            }
        }
        
    }catch(err){
        req.flash('flash', 'Thêm không thành công');
        res.redirect(301, '/admin/seats');
    }
    
}

exports.getUpdateTemplate = async function(req, res) {
    var id = req.query.id;
    const dramatics = await Room.query()
        .where('id', id);
    res.render('admin/adminEditPerformance.ejs', {
        user: req.user,
        data: dramatics,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Sửa vở diễn"
    })
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
exports.delSeat = async function (req, res) {
    const seat = await Seat.query()
        .deleteById(req.params.id)
    res.send("okDeleteRoom");
}
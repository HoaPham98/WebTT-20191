const {Ticket, TicketStatus} = require('../../models/tickets')
const { ShowTime, ShowTimeType } = require('../../models/showtimes')
const { Transaction } = require('../../models/transactions')
const { Room, Seat } = require('../../models/seats')
 
exports.getBookingData = async function(req, res) {
    const { showtime_id } = req.body

    var showtime = await ShowTime.query().findById(showtime_id)
    var room = await showtime.$relatedQuery('room')
    console.log(room)
    var row = room.row_number
    var col = room.column_number
    var tickets = await Ticket.query().where('showtime_id', showtime_id)

    var map = []
    var row_map = ''
    if (col % 2 == 0) {
        var sub_col = col / 2
        
    }

    var sold = []
    var soldTickets = tickets.filter((ticket) => {
        return ticket.status_id == 3
    })
    for (var ticket in soldTickets) {
        var seat = await ticket.$relatedQuery('seat')

        sold.push(seat.code)
    }

    var unavailable = []
    var unavailableTickets = tickets.filter((ticket) => {
        return ticket.status_id == 2
    })
    for (var ticket in unavailableTickets) {
        var seat = await ticket.$relatedQuery('seat')

        unavailable.push(seat.code)
    }

    res.json({
        status: 'success',
        data: {
            room_name: room.name,
            row: row,
            col: col,
            sold: sold,
            unavailable: unavailable
        }
    })
}

exports.addTicket = async function(transaction_id, showtime_id, seat_code) {
    try {

        var transaction = await Transaction.query().findById(transaction_id)
        
        const showtime = await ShowTime.query().findById(showtime_id)
        const room = await showtime.$relatedQuery('room')
        const seat = await Seat.query().where('code', seat_code).where('room_id', room.id).first()
        const ticket = await Ticket.query().where('seat_id', seat.id).where('showtime_id', showtime_id).first()

        await transaction.$relatedQuery('tickets').relate(ticket)

        if (ticket.status_id != 1) {
            return null
        }
        await Ticket.query().findById(ticket.id).patch({
            status_id: 2
        })

        return transaction_id
    } catch (err) {
        return null
    }
}

exports.removeTicket = async function(transaction_id, showtime_id, seat_code) {
    try {
        var transaction = await Transaction.query().findById(transaction_id)
        
        const showtime = await ShowTime.query().findById(showtime_id)
        const room = await showtime.$relatedQuery('room')
        const seat = await Seat.query().where('code', seat_code).where('room_id', room.id).first()
        const ticket = await Ticket.query().where('seat_id', seat.id).where('showtime_id', showtime_id).first()

        await transaction.$relatedQuery('tickets').unrelate().where('ticket_id', ticket.id)

        if (ticket.status_id != 2) {
            return null
        }
        await Ticket.query().findById(ticket.id).patch({
            status_id: 1
        })

        return transaction_id
    } catch (err) {
        console.log(err)
        return null
    }
}
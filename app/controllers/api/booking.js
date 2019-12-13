const {Ticket, TicketStatus, Price } = require('../../models/tickets')
const { ShowTime, ShowTimeType } = require('../../models/showtimes')
const { Transaction } = require('../../models/transactions')
const { Room, Seat, SeatType } = require('../../models/seats')

Array.prototype.insert = function ( index, item ) {
    this.splice( index, 0, item );
};
 
exports.getBookingData = async function(req, res) {
    const { showtime_id } = req.body

    var showtime = await ShowTime.query().findById(showtime_id)
    var room = await showtime.$relatedQuery('room')
    console.log(room)
    var row = room.row_number
    var col = room.column_number
    var tickets = await Ticket.query().where('showtime_id', showtime_id)
    var seats = await room.$relatedQuery('seats')
    var prices = await Price.query().where('showtime_type_id', showtime.type_id)

    var getPrice = function(seat_type) {
        var _price = prices.filter((price) => price.seat_type_id == seat_type)
        if (_price.length > 0) {
            return _price[0].price
        } else {
            return 0
        }
    }

    var seattypes = {}
    var types = await SeatType.query()
    types.forEach((type) => {
        seattypes[String.fromCharCode(96+type.id)] = {
            price: getPrice(type.id),
            description: type.name
        }
    })



    var map2D = Array.from(new Array(row), () => new Array(col))
    seats.forEach((seat) => {
        map2D[seat.row-1][seat.col-1] = [...String.fromCharCode(96+seat.type_id),`[${seat.code},${seat.col}]`].join('')
    })

    var map = map2D.map((arr) => {
        if (col % 2 == 0) {
            arr.insert(col/2, '__')
        }
        const str = arr.join('')
        return str
    })
    // var map = []
    // var row_map = ''
    // if (col % 2 == 0) {
    //     var sub_col = col / 2
    //     const sub_row_map = Array(sub_col).fill('a')
    //     row_map = sub_row_map.join('') + '__' + sub_row_map.join('')
    // } else {
    //     row_map = Array(col).fill('a')
    // }

    // if (row % 2 == 0) {
    //     const sub_row = row / 2
    //     const space = Array(row_map.length).fill('_').join('')
    //     map = [...Array(sub_row).fill(row_map), space, ...Array(sub_row).fill(row_map)]
    // } else {
    //     map = Array(row).fill(row_map)
    // }

    if (row % 2 == 0){
        const len = col % 2 == 0 ? col + 2 : col
        const space = Array(len).fill('_').join('')
        
        map.insert(row/2, space)
    }

    const legendItems = types.map((type) => {
        return [...String.fromCharCode(96+type.id), 'available', type.name]
    })
    var legend = 'a'
    if (types.length > 0) {
        legend = String.fromCharCode(96 + types[0].id)
    }
    legendItems.push([legend, 'unavailable', 'Unavailable'])

    var unavailable = []
    var unavailableTickets = tickets.filter((ticket) => {
        return ticket.status_id != 1
    }).map((item) => item.seat_id)
    if (unavailableTickets.length > 0) {
        const _unavailable = await Seat.query().findByIds(unavailableTickets)
        unavailable = _unavailable.map((item) => item.code)
    }
    
    res.json({
        status: 'success',
        data: {
            room_name: room.name,
            map: map,
            price: seattypes,
            legendItems: legendItems,
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

        const price = await ticket.$relatedQuery('price')

        var total_price = transaction.total_price + price.price

        if (total_price < 0) {
            total_price = 0
        }

        await Transaction.query().findById(transaction_id).patch({
            total_price: total_price
        })
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

        const price = await ticket.$relatedQuery('price')

        var total_price = transaction.total_price - price.price

        if (total_price < 0) {
            total_price = 0
        }

        await Transaction.query().findById(transaction_id).patch({
            total_price: total_price
        })
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

exports.removeTransaction = async function(transaction_id) {
    try {
        var transaction = await Transaction.query().findById(transaction_id)
        if (transaction.code != null) {
            return []
        }
        var tickets = await transaction.$relatedQuery('tickets')
        var codes = []
        tickets.forEach(async (ticket) => {
            const seat = await ticket.$relatedQuery('seat')
            codes.push(seat.code)
        })

        await transaction.$relatedQuery('tickets').patch({
            status_id: 1
        })
        await transaction.$relatedQuery('tickets').unrelate()

        return codes
    } catch (err) {
        console.log(err)
        return null
    }

}
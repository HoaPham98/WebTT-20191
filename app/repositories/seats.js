const { SeatType, Seat, Room } = require('../models/seats')

exports.getSeats = function(roomId) {
    return null
}

exports.getRooms = async function() {
    const rooms = await Room.query().map(async (room) => {
        const seats = room.$relatedQuery('seats')
        room.seats = seats

        return room
    })

    return rooms
}
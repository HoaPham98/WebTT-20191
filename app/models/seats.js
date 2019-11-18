const Knex = require('knex')
const connection = require('../../knexfile')
const { Model } = require('objection')
const { Dramatic } = require('./dramatic')

const knexConnection = Knex(connection)

Model.knex(knexConnection)

class SeatType extends Model {
    static get tableName() {
        return 'seat_type'
    }
}


class Room extends Model {
    static get tableName() {
        return 'room'
    }

    static get relationMappings () {
        return {
            seats: {
                relation: Model.HasManyRelation,
                modelClass: Seat,
                join: {
                    from: 'room.id',
                    to: 'seat.room_id'
                }
            }
        }
    }
}

class Seat extends Model {
    static get tableName() {
        return 'seat'
    }

    static get relationMappings () {
        return {
            room: {
                relation: Model.BelongsToOneRelation,
                modelClass: Room,
                join: {
                    from: 'seat.room_id',
                    to: 'room.id'
                }
            },
            seat_type: {
                relation: Model.HasOneRelation,
                modelClass: SeatType,
                join: {
                    from: 'seat.type_id',
                    to: 'seat_type.id'
                }
            }
        }
    }
}

module.exports = { SeatType, Room, Seat }
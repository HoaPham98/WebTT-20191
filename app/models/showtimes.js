const Knex = require('knex')
const connection = require('../../knexfile')
const { Model } = require('objection')
const { Dramatic } = require('./dramatic')
const { Ticket } = require('./tickets')
const { SeatType, Room, Seat } = require('./seats')

const knexConnection = Knex(connection)

Model.knex(knexConnection)

class ShowTimeType extends Model {
    static get tableName() {
        return 'showtime_type'
    }
}

class ShowTime extends Model {
    static get tableName() {
        return 'showtime'
    }

    static get relationMappings () {
        return {
            room: {
                relation: Model.BelongsToOneRelation,
                modelClass: Room,
                join: {
                    from: 'showtime.room_id',
                    to: 'room.id'
                }
            },
            showtime_type: {
                relation: Model.BelongsToOneRelation,
                modelClass: ShowTimeType,
                join: {
                    from: 'showtime.type_id',
                    to: 'showtime_type.id'
                }
            },
            dramatics: {
                relation: Model.BelongsToOneRelation,
                modelClass: Dramatic,
                join: {
                    from: 'showtime.dramatic_id',
                    to: 'dramatics.id'
                }
            },
            ticket: {
                relation: Model.HasManyRelation,
                modelClass: Ticket,
                join: {
                    from: 'showtime.id',
                    to: 'ticket.showtime_id'
                }
            }
        }
    }
}

module.exports = { ShowTimeType, ShowTime }
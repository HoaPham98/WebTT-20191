const Knex = require('knex')
const connection = require('../../knexfile')
const { Model } = require('objection')

const { ShowTimeType } = require('./showtime_types')
//const { ShowTime } = require('./showtimes')

const { SeatType, Room, Seat } = require('./seats')

const knexConnection = Knex(connection)

Model.knex(knexConnection)

class TicketStatus extends Model {
    static get tableName() {
        return 'ticket_status'
    }

    static get relationMappings () {
        return {
            ticket: {
                relation: Model.HasManyRelation,
                modelClass: Ticket,
                join: {
                    from: 'ticket_status.id',
                    to: 'ticket.status_id'
                }
            }
        }
    }
}

class Price extends Model {
    static get tableName() {
        return 'price'
    }

    static get relationMappings () {
        return {
            seat_type: {
                relation: Model.BelongsToOneRelation,
                modelClass: SeatType,
                join: {
                    from: 'price.seat_type_id',
                    to: 'seat_type.id'
                }
            },
            showtime_type: {
                relation: Model.BelongsToOneRelation,
                modelClass: ShowTimeType,
                join: {
                    from: 'price.showtime_type_id',
                    to: 'showtime_type.id'
                }
            },
            ticket: {
                relation: Model.HasManyRelation,
                modelClass: Ticket,
                join: {
                    from: 'price.id',
                    to: 'ticket.price_id'
                }
            }
        }
    }
}

class Ticket extends Model {
    static get tableName() {
        return 'ticket'
    }

    static get relationMappings () {
        return {
            price: {
                relation: Model.BelongsToOneRelation,
                modelClass: Price,
                join: {
                    from: 'ticket.price_id',
                    to: 'price.id'
                }
            },
            // showtime: {
            //     relation: Model.BelongsToOneRelation,
            //     modelClass: ShowTime,
            //     join: {
            //         from: 'ticket.showtime_id',
            //         to: 'showtime.id'
            //     }
            // },
            seat: {
                relation: Model.BelongsToOneRelation,
                modelClass: Seat,
                join: {
                    from: 'ticket.seat_id',
                    to: 'seat.id'
                }
            },
            status: {
                relation: Model.BelongsToOneRelation,
                modelClass: TicketStatus,
                join: {
                    from: 'ticket.status_id',
                    to: 'ticket_status.id'
                }
            }
        }
    }
}

module.exports = { TicketStatus, Price, Ticket }
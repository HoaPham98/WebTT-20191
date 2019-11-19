const Knex = require('knex')
const connection = require('../../knexfile')
const { Model } = require('objection')
const { Dramatic } = require('./dramatic')

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
                relation: Model.HasOneRelation,
                modelClass: ShowTimeType,
                join: {
                    from: 'showtime.type_id',
                    to: 'showtime_type.id'
                }
            },
            dramatics: {
                relation: Model.HasOneRelation,
                modelClass: Dramatic,
                join: {
                    from: 'showtime.dramatic_id',
                    to: 'dramatics.id'
                }
            }
        }
    }
}

module.exports = { ShowTimeType, ShowTime }
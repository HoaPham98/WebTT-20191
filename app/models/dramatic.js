const Knex = require('knex')
const connection = require('../../knexfile')
const { Model } = require('objection')
// const { ShowTime } = require('./showtimes')

const knexConnection = Knex(connection)

Model.knex(knexConnection)

class Dramatic extends Model {
    static get tableName() {
        return 'dramatics'
    }

    // static get relationMappings() {
    //     return {
    //         showtimes: {
    //             relation: Model.HasManyRelation,
    //             modelClass: ShowTime,
    //             join: {
    //                 from: 'dramatics.id',
    //                 to: 'showtime.dramatic_id'
    //             }
    //         }
    //     }
    // }
}

module.exports = {
    Dramatic
}
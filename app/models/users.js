const Knex = require('knex')
const connection = require('../../knexfile')
const { Model } = require('objection')
//const { ShowTime } = require('./showtimes')

const knexConnection = Knex(connection)

Model.knex(knexConnection)

class User extends Model {
    static get tableName() {
        return 'user'
    }

    // static get relationMappings() {
    //     return {
    //         showtime: {
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
    User
}
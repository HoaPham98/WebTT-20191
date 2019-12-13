const Knex = require('knex')
const connection = require('../../knexfile')
const { Model } = require('objection')
const { ShowTimeType, ShowTime } = require('./showtimes')
const { TicketStatus, Price, Ticket } = require('./tickets')
const bcrypt = require('bcrypt')
const knexConnection = Knex(connection)

Model.knex(knexConnection)

class User extends Model {
    static get tableName() {
        return 'user'
    }

    verifyPassword (password, callback) {
        bcrypt.compare(password, this.password, callback)
    };
}

module.exports = { User }
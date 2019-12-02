const Knex = require('knex')
const connection = require('../../knexfile')
const { Model } = require('objection')

const knexConnection = Knex(connection)

Model.knex(knexConnection)

class ShowTimeType extends Model {
    static get tableName() {
        return 'showtime_type'
    }
}

module.exports = {
	ShowTimeType
}
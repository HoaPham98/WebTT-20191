const Knex = require('knex')
const connection = require('../../knexfile')
const { Model } = require('objection')
const { Ticket } = require('./tickets')
const { User } = require('./user')

const knexConnection = Knex(connection)

Model.knex(knexConnection)

class Transaction extends Model {
    static get tableName() {
        return 'transaction'
    }

    static get relationMappings () {
        return {
            tickets: {
                relation: Model.ManyToManyRelation,
                modelClass: Ticket,
                join: {
                    from: 'transaction.id',
                    through: {
                        from: 'transaction_detail.transaction_id',
                        to: 'transaction_detail.ticket_id'
                    },
                    to: 'ticket.id'
                }
            },
            user: {
                relation: Model.BelongsToOneRelation,
                modelClass: User,
                join: {
                    from: 'transaction.user_id',
                    to: 'user.id'
                }
            }
        }
    }
}

module.exports = { Transaction }
const Knex = require('knex')
const connection = require('../knexfile')
const { Model } = require('objection')
const { Dramatic } = require('./dramatic')

const knexConnection = Knex(connection)

Model.knex(knexConnection)
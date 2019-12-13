
exports.up = function (knex) {
  return Promise.all([
    knex.schema.createTable('price', table => {
      table.increments('id').primary()
      table.integer('seat_type_id').references('seat_type.id')
      table.integer('showtime_type_id').references('showtime_type.id')
      table.integer('price')
    }),
    knex.schema.createTable('ticket_status', table => {
      table.increments('id').primary()
      table.string('name')
    }),
    knex.schema.createTable('ticket', table => {
      table.increments('id').primary()
      table.integer('price_id').references('price.id')
      table.integer('showtime_id').references('showtime.id')
      table.integer('seat_id').references('seat.id')
      table.integer('status_id').references('ticket_status.id')
    })
  ])
};

exports.down = function (knex) {
  return Promise.all([
    knex.schema.dropTable('price'),
    knex.schema.dropTable('ticket_status'),
    knex.schema.dropTable('ticket')
  ])
};

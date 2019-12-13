
exports.up = function(knex) {
    return Promise.all([
        knex.schema.createTable('transaction', table => {
          table.increments('id').primary()
          table.string('code')
          table.integer('showtime_id').references('showtime.id')
          table.timestamp('time')
          table.integer('total_price')
          table.integer('user_id').references('user.id')
        }),
        knex.schema.createTable('transaction_detail', table => {
            table.increments('id').primary()
            table.integer('transaction_id').references('transaction.id')
            table.integer('ticket_id').references('ticket.id')
          })
      ])
};

exports.down = function(knex) {
    return Promise.all([
        knex.schema.dropTable('transaction'),
        knex.schema.dropTable('transaction_detail')
      ])
};

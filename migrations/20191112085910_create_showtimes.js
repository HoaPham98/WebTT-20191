
exports.up = function(knex) {
    return Promise.all([
        knex.schema.createTable('showtime_type', table => {
          table.increments('id').primary()
          table.string('name')
        }),
        knex.schema.createTable('showtime', table => {
            table.increments('id').primary()
            table.date('date')
            table.time('time')
            table.integer('dramatic_id').references('dramatics.id')
            table.integer('room_id').references('room.id')
            table.integer('type_id').references('showtime_type.id')
          })
      ])
};

exports.down = function(knex) {
    return Promise.all([
        knex.schema.dropTable('showtime_type'),
        knex.schema.dropTable('showtime')
      ])
};

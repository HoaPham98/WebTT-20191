
exports.up = function(knex) {
    return Promise.all([
        knex.schema.createTable('seat_type', table => {
          table.increments('id').primary()
          table.string('name')
        }),
        knex.schema.createTable('room', table => {
            table.increments('id').primary()
            table.integer('column_number')
            table.string('name')
            table.integer('row_number')
          }),
          knex.schema.createTable('seat', table => {
              table.increments('id').primary()
              table.integer('room_id').references('room.id')
              table.integer('type_id').references('seat_type.id'),
              table.integer('row')
              table.integer('col')
          })
      ])
};

exports.down = function(knex) {
    return Promise.all([
        knex.schema.dropTable('seat_type'),
        knex.schema.dropTable('room'),
        knex.schema.dropTable('seat')
      ])
};

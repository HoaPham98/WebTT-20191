
exports.up = function(knex) {
    return Promise.all([
        knex.schema.createTable('user', table => {
          table.increments('id').primary()
          table.string('name')
          table.string('email').notNullable()
          table.string('password').notNullable()
          table.string('phone').notNullable()
          table.boolean('isAdmin').defaultTo(false)
          table.timestamps(true, true)
        })
      ])
};

exports.down = function(knex) {
    return Promise.all([
        knex.schema.dropTable('user')
      ])
};

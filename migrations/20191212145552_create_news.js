
exports.up = function(knex) {
    return Promise.all([
        knex.schema.createTable('news', table => {
          table.increments('id').primary()
          table.string('title').notNullable()
          table.string('content').notNullable()
          table.timestamps(true, true)
        })
      ])
};

exports.down = function(knex) {
    return Promise.all([
        knex.schema.dropTable('news')
      ])
};

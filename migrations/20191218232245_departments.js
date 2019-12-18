
exports.up = function(knex) {
  return Promise.all([
        knex.schema.createTable('departments', table => {
          table.increments('id').primary()
          table.string('title').notNullable()
        })
      ])
};

exports.down = function(knex) {
  return Promise.all([
        knex.schema.dropTable('departments')
      ])
};

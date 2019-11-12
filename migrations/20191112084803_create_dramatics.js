
exports.up = function(knex) {
    return Promise.all([
        knex.schema.createTable('dramatics', table => {
          table.increments('id').primary()
          table.string('name')
          table.string('author')
          table.string('director')
          table.string('music')
          table.string('poster')
          table.string('decorator')
          table.string('actor')
          table.string('sumary')
        })
      ])
};

exports.down = function(knex) {
    return Promise.all([
        knex.schema.dropTable('dramatics')
      ])
};

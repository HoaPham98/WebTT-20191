
exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex('showtime_type').del()
    .then(function () {
      // Inserts seed entries
      return knex('showtime_type').insert([
        {id: 1, name: 'Suất chiếu thường'}
      ]);
    });
};


exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex('seat_type').del()
    .then(function () {
      // Inserts seed entries
      return knex('seat_type').insert([
        {
          name: 'Vé thường'
        },
        {
          name: 'Vé VIP'
        },
      ]);
    });
};

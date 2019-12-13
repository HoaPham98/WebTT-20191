
exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex('room').del()
    .then(function () {
      // Inserts seed entries
      return knex('room').insert([
        {id: 1, column_number: 12, name: "Phòng số 1", row_number: 10 }
      ]);
    });
};

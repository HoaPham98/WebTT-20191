const bcrypt = require('bcrypt')

exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex('user').del().then(() => bcrypt.hash('123456', 8))
    .then(password => {
      // Inserts seed entries
      return knex('user').insert([
        {id: 1, email: 'admin@admin.com', password: password, phone:'', isAdmin: true},
        {id: 2, email: 'hoapq.4398@gmail.com', password: password, phone: '0917035238'}
      ]);
    });
};

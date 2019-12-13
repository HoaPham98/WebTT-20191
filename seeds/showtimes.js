
Date.prototype.addDays = function(days) {
  var date = new Date(this.valueOf());
  date.setDate(date.getDate() + days);
  return date;
}

exports.seed = function(knex) {
  var today = new Date()
  today.setHours(0,0,0,0)
  // Deletes ALL existing entries
  return knex('showtime').del()
    .then(function () {
      // Inserts seed entries
      return knex('showtime').insert([
        {date: today, time: '20:00:00', dramatic_id: 1, room_id: 1, type_id: 1},
        {date: today.addDays(1), time: '20:00:00', dramatic_id: 1, room_id: 1, type_id: 1},
        {date: today.addDays(2), time: '20:00:00', dramatic_id: 1, room_id: 1, type_id: 1}
      ]);
    });
};

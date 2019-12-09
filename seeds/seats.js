
function generateSeat() {
  var arr = []
  for (var i = 0; i < 12; i++) {
    for (var j = 0; j < 10; j++) {
      var seat = {
        room_id: 1,
        type_id: 1,
        row: j+1,
        col: i+1,
        code: (j+1) + '_' + (i+1)
      }
      arr.push(seat)
    }
  }
  return arr
}

exports.seed = function (knex) {
  // Deletes ALL existing entries
  return knex('seat').del()
    .then(function () {
      // Inserts seed entries
      var seats = generateSeat()
      console.log(seats)
      return knex('seat').insert(seats);
    });
};

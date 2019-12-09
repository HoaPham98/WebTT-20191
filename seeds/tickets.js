
function generateTickets(showtime_id) {
  var arr = []
  
  for (var i = 1; i<=120; i++) {
    var ticket = {
      price_id: 1,
      showtime_id: showtime_id,
      seat_id: 120 * (showtime_id -1 ) + i,
      status_id: 1
    }

    arr.push(ticket)
  }
  
  return arr
}

exports.seed = function(knex) {
  // Deletes ALL existing entries
  return Promise.all([
    knex('ticket_status').del()
    .then(function () {
      // Inserts seed entries
      return knex('ticket_status').insert([
        {id: 1, name: 'Available'},
        {id: 2, name: 'Unavailable'},
        {id: 3, name: 'Sold'}
      ]);
    }),
    knex('price').del()
    .then(function () {
      // Inserts seed entries
      return knex('price').insert([
        {id: 1, seat_type_id: 1, showtime_type_id: 1, price: 50000}
      ]);
    }),
    knex('ticket').del()
    .then(function () {
      var tickets = []
      for (var i = 1; i<=1; i++) {
        var arr = generateTickets(i)
        tickets = tickets.concat(arr)
      }
      // Inserts seed entries
      return knex('ticket').insert(tickets);
    })
  ])
};

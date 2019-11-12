
exports.seed = function (knex) {
  // Deletes ALL existing entries
  return knex('dramatics').del()
    .then(function () {
      // Inserts seed entries
      return knex('dramatics').insert([
        { 
          id: 1,
          name: 'Romeo và Juniet', 
          author: 'William Shakepeare', 
          director: "Beverly Blankenship",
          music: "", 
          poster: "http://www.nhahattuoitre.vn/asset/upload/romeo_va_juliet/Poster_Romeo_A5.jpg", 
          decorator: "", 
          actor: "", 
          sumary: "" 
        },
      ]);
    });
};

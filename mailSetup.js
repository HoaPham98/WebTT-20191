const bcrypt = require('bcrypt')

const hash = bcrypt.hashSync("admin", 8)

const result = bcrypt.compareSync("admin", "$2b$08$mZ2eUYrMUt4cg95HcTVkouLg51bTK7Kws.DXf0y7xGemx1JQ52xuu")

console.log(hash)
console.log(result)
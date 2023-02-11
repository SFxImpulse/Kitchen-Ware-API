const Pool = require("pg").Pool;

const pool = new Pool({
  user: "postgres",
  password: "Xpert123",
  database: "kitchen",
  host: "localhost",
  port: 5432
});

module.exports = pool;
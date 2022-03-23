const { Pool } = require("pg")

const pool = new Pool({
  user: "",
  host: "",
  database: "",
  password: "",
  port: 5432,
});

pool.on('connect', () => {
  console.log('MoviesEafit DB up!');
});

module.exports = pool
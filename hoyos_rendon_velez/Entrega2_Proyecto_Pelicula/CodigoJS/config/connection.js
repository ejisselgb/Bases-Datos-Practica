const { Pool } = require("pg")

const pool = new Pool({
  user: "cvj",
  host: "db-course-eafit.cuqswoihgsp2.us-east-2.rds.amazonaws.com",
  database: "MoviesEafit",
  password: "cvj123",
  port: 5432,
});

pool.on('connect', () => {
  console.log('MoviesEafit DB up!');
});

module.exports = pool
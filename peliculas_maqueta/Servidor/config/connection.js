const { Pool } = require("pg")

const pool = new Pool({
  user: "sapos_g",
  host: "db-course-eafit.cuqswoihgsp2.us-east-2.rds.amazonaws.com",
  database: "MoviesEafit",
  password: "1q2w3e4r5t",
  port: 5432,
});

pool.on('connect', () => {
  console.log('MoviesEafit DB up!');
});

module.exports = pool
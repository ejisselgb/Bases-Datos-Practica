const { Pool } = require("pg")

const pool = new Pool({
  user: "avcoro",
  host: "db-course-eafit.cuqswoihgsp2.us-east-2.rds.amazonaws.com",
<<<<<<< HEAD
  database: "MoviesEafit",
=======
  database: "MovieEafit",
>>>>>>> 895791bcd8bb20fcc104748c490f39c3fc80b34b
  password: "avcoro987",
  port: 5432,
});

pool.on('connect', () => {
  console.log('MoviesEafit DB up!');
});

module.exports = pool
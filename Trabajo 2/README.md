# EafitMovies
## _Data bases practice EAFIT_


[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

EafiMovies is a database built in Postgrsql and allocated on AWS. It implements some web services using JavaScript and based on the popular multimedia service called Netflix.
## Screenshots

![Screenshot_110](https://user-images.githubusercontent.com/8409481/154873067-0dd4b0a7-d6dd-47ec-95f7-d825af988135.png)

## Endpoints

Using JavaScript, some endpoints are implemented and can be used to communicate with the AWS server and get data from the database.

The endpoints allow the user to get information from users, movies and series.

| Endpoint | URL |
| ------ | ------ |
| getUserByPasswrd | /api/loginUser/:username/:password |
| getMovieByCategory | api/getMovieByCategory/:category |
| getMovieByCategory | /api/getSerieByCategory/:category |
| getMovieBySearch | /api/getMovieBySearch/:input |
| getMovieById | /api/getMovieById/:id |
| getFavMoviesFromProfile | /api/getFavMoviesFromProfile/:id_profile |
| updateUserEmail | /api/updateUserEmail/:id_user/:email' |
| updateUserUsername | /api/updateUserUsername/:id_user/:username |
| updateUserPassword | /api/updateUserPassword/:id_user/:password |
| updateUserSubscription | /api/updateUserSubscription/:id_user/:plan |
| updateUserPhone | /api/updateUserPhone/:id_user/:phone |
| updateBillingDate | /api/updateBillingDate/:id_user/:date |
| updateMovieTrailer | /api/updateMovieTrailer/:id_movie/:url |
| updateMovieSynopsis | /api/updateMovieSynopsis/:id_movie/:synopsis |
| updateMovieTitle | /api/updateMovieTitle/:id_movie/:title |
| updateMoviePoster | /api/updateMoviePoster/:id_movie/:url |
| updateSerieTrailer | /api/updateSerieTrailer/:id_serie/:url |
| updateSerieSynopsis | /api/updateSerieSynopsis/:id_serie/:synopsis |
| updateSerieTitle | /api/updateSerieTitle/:id_serie/:title |
| updateSeriePoster | /api/updateSeriePoster/:id_serie/:url |
| getAveragePrice | /api/getAveragePrice |
| getAmountMoviesSeries | /api/getAmountMoviesSeries |
| getUnratedMovies | /api/getUnratedMovies |

All of this endpoints communicate with the database and gets information. Some of them receive parameters marked as ":param" in the url.

## Endpoints Screenshots

Here are some screenshots of the output given by some endpoints.

![Screenshot_110](https://i.imgur.com/O93RjOD.png)
![Screenshot_110](https://i.imgur.com/E90kvAF.png)
![Screenshot_110](https://i.imgur.com/LPHnPwy.png)

## License

MIT
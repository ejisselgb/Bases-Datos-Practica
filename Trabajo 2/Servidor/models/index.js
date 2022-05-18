const connection = require('../config/connection')

var schema = "Grupo 6 - T2";


module.exports = {

    async getPelicula() {
        const querySelect = `SELECT * FROM "Grupo 6"."content";`
        const result = await connection.query(querySelect)
        return result
    },

    async getPelicula(id) {
        const querySelect = `SELECT * FROM "Grupo 6"."content" WHERE content_id=${id};`
        const result = await connection.query(querySelect)
        return result
    },

    

    async getAllUser() {
        const querySelect = `SELECT * FROM "Grupo 2".usuario;`
        const result = await connection.query(querySelect)
        return result
    },

     async getUsuarios() {
        const querySelect = `SELECT * FROM "Grupo 6".accounts;`
        const result = await connection.query(querySelect)
        return result
    },

    async getUser(username, password) {
        const querySelect = `'${username}' and '${password}';`
        const result = await connection.query(querySelect)
        return result
    },

    async insertUser(username, password){
        const queryInsert = `'${username}' and '${password}';`
        const result = await connection.query(queryInsert)
        return result
    },

    async updateUser(username, newPassword){
        const queryUpdate = `'${newPassword}' and '${username}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateContent(content_id, information){
        const queryUpdate = `UPDATE "Grupo 6"."content" SET information = '${information}' WHERE content_id = '${content_id};`
        const result = await connection.query(queryUpdate)
        return result
    },

    async deleteUser(username){
        const queryDelete = `'${username}';`
        const result = await connection.query(queryDelete)
        return result
    },

    async getMovieId(id){
        const querySelect = `'${id}';`
        const result = await connection.query(querySelect)
        return result
    },
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Queries
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //First query
    async getUserByPasswrd(user, password) {
        const querySelect = `SELECT * FROM "${schema}"."USERS" WHERE username='${user}' AND password='${password}';`
        const result = await connection.query(querySelect)
        return result
    },
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Second query
    //Movies
    async getMovieByCategory(category) {
const querySelect = `SELECT mv.title,mv.poster_url,ca.name_category FROM "${schema}"."MOVIES_CATEGORIES" as mc INNER JOIN "${schema}"."CATEGORIES" as ca ON mc.id_category = ca.id_category INNER JOIN "${schema}"."MOVIES" as mv ON mc.id_movie = mv.id_movie WHERE ca.name_category = '${category}';`
        const result = await connection.query(querySelect)
        return result
    },
    
    //Series
    async getSerieByCategory(category) {
        const querySelect = `SELECT se.title, se.poster_url, ca.name_category FROM "${schema}"."SERIES_CATEGORIES" as sc INNER JOIN "${schema}"."CATEGORIES" as ca ON sc.id_category = ca.id_category INNER JOIN "${schema}"."SERIES" as se ON sc.id_serie = se.id_serie WHERE ca.name_category = '${category}';`
        const result = await connection.query(querySelect)
        return result
    },

    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Third Query (not working endpoint)
    async getMovieBySearch(input) {
        const querySelect = `SELECT * FROM "${schema}"."MOVIES" as mo WHERE mo.title ILIKE '%${input}%';`
        const result = await connection.query(querySelect)
        return result
    },


    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Fourth Query
    async getMovieById(id) {
        const querySelect = `SELECT * FROM "${schema}"."MOVIES" WHERE id_movie = '${id}';`
        const result = await connection.query(querySelect)
        return result
    },

    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Fifth Query
    async getSerieById(id) {
        const querySelect = `SELECT * FROM "${schema}"."SERIES" WHERE id_serie = '${id}';`
        const result = await connection.query(querySelect)
        return result
    },

    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Sixth Query
    async getFavMoviesFromProfile(id_profile) {
        const querySelect = `SELECT mv.title, mv.poster_url FROM "${schema}"."MOVIES" as mv INNER JOIN "${schema}"."FAVORITE_MOVIES" as fm ON fm.id_movie = mv.id_movie WHERE fm.id_profile = '${id_profile}';`
        const result = await connection.query(querySelect)
        return result
    },

    //-----------------------------------------------------------------------------------------------------------------------------------------
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Seventh Query
    async updateUserEmail(id_user, email){
        const queryUpdate = `UPDATE "${schema}"."USERS" SET email = '${email}' WHERE id_user = '${id_user}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateUserUsername(id_user, username){
        const queryUpdate = `UPDATE "${schema}"."USERS" SET username = '${username}' WHERE id_user = '${id_user}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateUserPassword(id_user, password){
        const queryUpdate = `UPDATE "${schema}"."USERS" SET password = '${password}' WHERE id_user = '${id_user}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateUserSubscription(id_user, plan){
        const queryUpdate = `UPDATE "${schema}"."SUBSCRIPTIONS" SET id_plan = '${plan}' WHERE id_user = '${id_user}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateUserPhone(id_user, plan){
        const queryUpdate = `UPDATE "${schema}"."PROFILES" SET phone = '${phone}' WHERE id_user = '${id_user}';`
        const result = await connection.query(queryUpdate)
        return result
    },
    
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Eighth Query
    async updateBillingDate(id_user, date){
        const queryUpdate = `UPDATE "${schema}"."SUBSCRIPTIONS" SET pyment_date = '${date}' WHERE id_user = '${id_user}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Nineth Query
    /////////////////////////////////////////////////
    //Movies
    async updateMovieTrailer(id_movie, url){
        const queryUpdate = `UPDATE "${schema}"."MOVIES" SET trailer_url = '${url}' WHERE id_movie = '${id_movie}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateMovieSynopsis(id_movie, synopsis){
        const queryUpdate = `UPDATE "${schema}"."MOVIES" SET synopsis = '${synopsis}' WHERE id_movie = '${id_movie}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateMovieTitle(id_movie, title){
        const queryUpdate = `UPDATE "${schema}"."MOVIES" SET title = '${title}' WHERE id_movie = '${id_movie}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateMoviePoster(id_movie, url ){
        const queryUpdate = `UPDATE "${schema}"."MOVIES" SET poster_url = '${url}' WHERE id_movie = '${id_movie}';`
        const result = await connection.query(queryUpdate)
        return result
    },
    /////////////////////////////////////////////////
    //Series
    async updateSerieTrailer(id_serie, url){
        const queryUpdate = `UPDATE "${schema}"."SERIES" SET trailer_url = '${url}' WHERE id_serie = '${id_serie}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateSerieSynopsis(id_serie, synopsis){
        const queryUpdate = `UPDATE "${schema}"."SERIES" SET synopsis = '${synopsis}' WHERE id_serie = '${id_serie}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateSerieTitle(id_serie, title){
        const queryUpdate = `UPDATE "${schema}"."SERIES" SET title = '${title}' WHERE id_serie = '${id_serie}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateSeriePoster(id_serie, url ){
        const queryUpdate = `UPDATE "${schema}"."SERIES" SET poster_url = '${url}' WHERE id_serie = '${id_serie}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Tenth Query
    async getAveragePrice() {
        const querySelect = `SELECT AVG(ALL price) FROM (SELECT sb.id_plan, price FROM "Grupo 6 - T2"."SUBSCRIPTIONS" AS sb INNER JOIN "Grupo 6 - T2"."PLANS" AS pl ON sb.id_plan = pl.id_plan WHERE active = true AND payment_date BETWEEN '2022-05-01' AND '2022-05-03') as average;`
        const result = await connection.query(querySelect)
        return result
    },
    

    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Eleventh Query
    async getAmountMoviesSeries() {
        const querySelect = `SELECT COUNT(*) FROM ("SELECT id_serie FROM "${schema}"."SERIES" UNION SELECT id_movie FROM "${schema}"."MOVIES");`
        const result = await connection.query(querySelect)
        return result
    },
    
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Twelfth
    async getUnratedMovies() {
        const querySelect = `SELECT * FROM "${schema}"."MOVIES" as mo LEFT JOIN "${schema}"."MOVIES_RATING" as mr on mo.id_movie = mr.id_movie WHERE  mr.id_movie IS NULL;`
        const result = await connection.query(querySelect)
        return result
    },




    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    //Functions to add data to each one of the tables
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////

    async createUser(id_user, username, email, password){
        const queryUpdate = `INSERT INTO "${schema}"."USERS"(id_user,username, email, password)VALUES('${id_user}','${username}','${email}','${password}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createProfile(id_profile, id_user, name, surname, phone, id_country, id_zone, id_city){
        const queryUpdate = `INSERT INTO "${schema}"."PROFILES"(id_profile, id_user, name, surname, phone, id_country, id_zone, id_city)VALUES('${id_profile}','${id_user}','${name}','${surname}','${phone}', '${id_country}','${id_zone}','${id_city}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createPlan(id_plan, screens, price){
        const queryUpdate = `INSERT INTO "${schema}"."PLANS"(id_plan, screens, price)VALUES('${id_plan}', '${screens}', '${price}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createSub(id_subscription, id_user, id_plan, payment_date, payment_method, active){
        const queryUpdate = `INSERT INTO "${schema}"."SUBSCRIPTIONS"(id_subscription, id_user, id_plan, payment_date, payment_method, active)VALUES('${id_subscription}', '${id_user}', '${id_plan}', '${payment_date}', '${payment_method}', '${active}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createMovie(id_movie, title, synopsis, director, poster_url, trailer_url){
        const queryUpdate = `INSERT INTO "${schema}"."MOVIES"(id_movie, title, synopsis, director, poster_url, trailer_url)VALUES('${id_movie}', '${title}', '${synopsis}', '${director}', '${poster_url}', '${trailer_url}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createSerie(id_serie, title, synopsis, director, poster_url, trailer_url){
        const queryUpdate = `INSERT INTO "${schema}"."SERIES"(id_serie, title, synopsis, director, poster_url, trailer_url)VALUES('${id_serie}', '${title}', '${synopsis}', '${director}', '${poster_url}', '${trailer_url}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createChapter(id_chapter, id_serie, number, season, title, img_url){
        const queryUpdate = `INSERT INTO "${schema}"."CHAPTERS_SERIES"(id_chapter, id_serie, number, season, title, img_url)VALUES('${id_chapter}', '${id_serie}', '${number}', '${season}', '${title}', '${img_url}');`
        const result = await connection.query(queryUpdate)
        return result
    },

   async createCategory(id_category, name_category){
        const queryUpdate = `INSERT INTO "${schema}"."CATEGORIES"(id_category, name_category)VALUES('${id_category}', '${name_category}');`
        const result = await connection.query(queryUpdate)
        return result
    }, 

    async createCategoryMovie(id_movie, id_category){
        const queryUpdate = `INSERT INTO "${schema}"."MOVIES_CATEGORIES"(id_movie, id_category)VALUES('${id_movie}', '${id_category}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createCategorySerie(id_serie, id_category){
        const queryUpdate = `INSERT INTO "${schema}"."SERIES_CATEGORIES"(id_serie, id_category)VALUES('${id_serie}', '${id_category}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createFavMovie(id_user, id_profile, id_movie){
        const queryUpdate = `INSERT INTO "${schema}"."FAVORITE_MOVIES"(id_user, id_profile, id_movie)VALUES('${id_user}', '${id_profile}', '${id_movie}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createFavSerie(id_user,id_profile, id_serie){
        const queryUpdate = `INSERT INTO "${schema}"."FAVORITE_SERIES"(id_user,id_profile, id_serie)VALUES('${id_user}', '${id_profile}','${id_serie}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createActor(id_actor, name, surname){
        const queryUpdate = `INSERT INTO "${schema}"."ACTORS"(id_actor, name, surname)VALUES('${id_actor}', '${name}', '${surname}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createActorMovie(id_actor, id_movie){
        const queryUpdate = `INSERT INTO "${schema}"."MOVIES_ACTORS"(id_actor, id_movie)VALUES('${id_actor}', '${id_movie}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createActorSerie(id_actor, id_serie){
        const queryUpdate = `INSERT INTO "${schema}"."SERIES_ACTORS"(id_actor, id_serie)VALUES('${id_actor}', '${id_serie}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createCountry(id_country, name, currency, time_zone){
        const queryUpdate = `INSERT INTO "${schema}"."COUNTRIES"(id_country, name, currency, time_zone)VALUES('${id_country}', '${name}', '${currency}', '${time_zone}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createZone(id_zone, id_country, name){
        const queryUpdate = `INSERT INTO "${schema}"."ZONES"(id_zone, id_country, name)VALUES('${id_zone}', '${id_country}', '${name}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createCity(id_city, id_zone, name){
        const queryUpdate = `INSERT INTO "${schema}"."CITIES"(id_city, id_zone, name)VALUES('${id_city}', '${id_zone}', '${name}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createLanguage(id_language, name){
        const queryUpdate = `INSERT INTO "${schema}"."LANGUAGES"(id_language, name)VALUES('${id_language}', '${name}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createLanguageSerie(id_serie, id_language){
        const queryUpdate = `INSERT INTO "${schema}"."SERIES_LANGUAGES"(id_serie, id_language)VALUES('${id_serie}', '${id_language}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createLanguageMovie(id_movie, id_language){
        const queryUpdate = `INSERT INTO "${schema}"."MOVIES_LANGUAGES"(id_movie, id_language)VALUES('${id_movie}', '${id_language}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createViewTSerie(id_user, id_profile, id_serie, chapter, season, time_){
        const queryUpdate = `INSERT INTO "${schema}"."VIEW_TIME_SERIES"(id_user, id_profile, id_serie, chapter, season, time_)VALUES('${id_user}', '${id_profile}', '${id_serie}', '${chapter}', '${season}', '${time_}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createViewTMovie(id_user, id_profile, id_movie, time_){
        const queryUpdate = `INSERT INTO "${schema}"."VIEW_TIME_MOVIES"(id_user, id_profile, id_movie, time_)VALUES('${id_user}', '${id_profile}', '${id_movie}', '${time_}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createMovieRating(id_movie, id_user, movie_rating){
        const queryUpdate = `INSERT INTO "${schema}"."MOVIES_RATING"(id_movie, id_user, movie_rating)VALUES('${id_movie}', '${id_user}', '${movie_rating}');`
        const result = await connection.query(queryUpdate)
        return result
    },

    async createSerieRating(id_serie, id_user, serie_rating){
        const queryUpdate = `INSERT INTO "${schema}"."SERIES_RATING"(id_serie, id_user, serie_rating)VALUES('${id_serie}', '${id_user}', '${serie_rating}');`
        const result = await connection.query(queryUpdate)
        return result
    },

}
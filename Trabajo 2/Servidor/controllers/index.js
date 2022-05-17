/** Rutas esperadas para este ejercicio practico:
 * /api/login
 * /api/profile or /api/user
 * /api/profile/create or /api/user/create
 * /api/profile/update or /api/user/update
 * /api/profile/crete or /api/user/delete
 * /api/movies
 * /api/movies/:id
 * /api/movies/create
 * /api/movies/update
 * /api/movies/delete
 */

const express = require('express')
const router = express.Router()
const moviesModel = require('../models')

router.get('/api', function (req, res, next) {
    res.status(200).send({
        success: 'true',
        message: 'Movies Eafit Api ',
        version: '1.0.0'
    })
})

router.get('/api/getPelicula', function (req, res, next) {
    moviesModel.getPelicula().then(content=>{
        res.status(200).send(content.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error getting Movies')
    })
})

router.get('/api/content/:id', function (req, res, next) {
    const id = req.params.id

    moviesModel.getPelicula(id).then(content=>{
        res.status(200).send(content.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error getting Movies')
    })
})

router.get('/api/listUsers/', function (req, res, next) {
    moviesModel.getUsuarios().then(users=>{
        res.status(200).send(users.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error getting Users')
    })
})


router.post('/api/user', function (req, res, next) {
    const { username, password } = req.body
    moviesModel.getUser(username, password).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.post('/api/user/create', function (req, res, next) {
    const { username, password } = req.body
    moviesModel.insertUser(username, password).then(user=>{
        res.status(200).send({message: 'insert data', rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.post('/api/user/update', function (req, res, next) {
    const { username, password } = req.body
    moviesModel.updateUser(username, password).then(user=>{
        res.status(200).send({message: 'update data user ' + username, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.post('/api/actualizarPeli', function (req, res, next) {
    const { content_id, information } = req.body
    moviesModel.updateContent(content_id, information).then(content=>{
        res.status(200).send(content.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting content')
    })
})

router.get('/api/movie/:id', function (req, res, next) {
    const id = req.params.id

    moviesModel.getMovieId(id).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})


//DESDE ACA
router.get('/api/loginUser/:username/:password', function (req, res, next) {
    const username = req.params.username
    const password = req.params.password

    moviesModel.getUserByPasswrd(username, password).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

//getMovieByCategory
router.get('/api/getMovieByCategory/:category', function (req, res, next) {
    const category = req.params.category
    
    moviesModel.getMovieByCategory(category).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies')
    })
})

//getSeriesByCategory
router.get('/api/getSerieByCategory/:category', function (req, res, next) {
    const category = req.params.category
    
    moviesModel.getMovieByCategory(category).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting series')
    })
})

//Get movie titles as user type it
router.get('/api/getMovieBySearch/:input', function (req, res, next) {
    const input = req.params.input
    
    moviesModel.getMovieBySearch(input).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movie tittle')
    })
})



//get movies by Id
router.get('/api/getMovieById/:id', function (req, res, next) {
    const id = req.params.id
    
    moviesModel.getMovieById(id).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movie by given id')
    })
})

//get series by Id
router.get('/api/getSerieById/:id', function (req, res, next) {
    const id = req.params.id
    
    moviesModel.getSerieById(id).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting serie by given id')
    })
})


//get favorite movies from user's profile
router.get('/api/getFavMoviesFromProfile/:id_profile', function (req, res, next) {
    const id_profile = req.params.id_profile
    
    moviesModel.getFavMoviesFromProfile(id_profile).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting favorite movies')
    })
})


//Update the information of a user
router.get('/api/updateUserEmail/:id_user/:email', function (req, res, next) {
    const id_user = req.params.id_user
    const email = req.params.email
    
    moviesModel.updateUserEmail(id_user,email).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateUserUsername/:id_user/:username', function (req, res, next) {
    const id_user = req.params.id_user
    const username = req.params.username
    
    moviesModel.updateUserUsername(id_user,username).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateUserPassword/:id_user/:password', function (req, res, next) {
    const id_user = req.params.id_user
    const password = req.params.password
    
    moviesModel.updateUserPassword(id_user,password).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateUserSubscription/:id_user/:plan', function (req, res, next) {
    const id_user = req.params.id_user
    const plan = req.params.plan
    
    moviesModel.updateUserSubscription(id_user,plan).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateUserPhone/:id_user/:phone', function (req, res, next) {
    const id_user = req.params.id_user
    const phone = req.params.plan
    
    moviesModel.updateUserPhone(id_user,phone).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})


//Update the billing date for a certain user
router.get('/api/updateBillingDate/:id_user/:date', function (req, res, next) {
    const id_user = req.params.id_user
    const date = req.params.date
    
    moviesModel.updateBillingDate(id_user,date).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})


//Update the information of a movie
router.get('/api/updateMovieTrailer/:id_movie/:url', function (req, res, next) {
    const id_movie = req.params.id_movie
    const url = req.params.url
    
    moviesModel.updateMovieTrailer(id_movie,url).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateMovieSynopsis/:id_movie/:synopsis', function (req, res, next) {
    const id_movie = req.params.id_movie
    const synopsis = req.params.synopsis
    
    moviesModel.updateMovieSynopsis(id_movie,synopsis).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateMovieTitle/:id_movie/:title', function (req, res, next) {
    const id_movie = req.params.id_movie
    const title = req.params.title
    
    moviesModel.updateMovieTitle(id_movie,title).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateMoviePoster/:id_movie/:url', function (req, res, next) {
    const id_movie = req.params.id_movie
    const url = req.params.url
    
    moviesModel.updateMoviePoster(id_movie,url).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

//Update the information of a serie
router.get('/api/updateSerieTrailer/:id_serie/:url', function (req, res, next) {
    const id_serie = req.params.id_serie
    const url = req.params.url
    
    moviesModel.updateSerieTrailer(id_serie,url).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateSerieSynopsis/:id_serie/:synopsis', function (req, res, next) {
    const id_serie = req.params.id_serie
    const synopsis = req.params.synopsis
    
    moviesModel.updateSerieSynopsis(id_serie,synopsis).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateSerieTitle/:id_serie/:title', function (req, res, next) {
    const id_serie = req.params.id_serie
    const title = req.params.title
    
    moviesModel.updateSerieTitle(id_serie,title).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})

router.get('/api/updateSeriePoster/:id_serie/:url', function (req, res, next) {
    const id_serie = req.params.id_serie
    const url = req.params.url
    
    moviesModel.updateSeriePoster(id_serie,url).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating')
    })
})


//Get the average price of all subscriptions in a month
router.get('/api/getAveragePrice', function (req, res, next) {
    moviesModel.getAveragePrice().then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting information')
    })
})


//Get the amount of movies and series
router.get('/api/getAmountMoviesSeries', function (req, res, next) {
    moviesModel.getAmountMoviesSeries().then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting information')
    })
})


//Get the unrated movies
router.get('/api/getUnratedMovies', function (req, res, next) {
    moviesModel.getUnratedMovies().then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting information')
    })
})



module.exports = router //aun no entiendo bien el funcionamiento de esta cosa

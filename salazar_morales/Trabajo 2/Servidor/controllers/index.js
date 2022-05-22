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

router.get('/api/allMovies', function (req, res, next) {
    moviesModel.getPeliculas().then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
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

router.post('/api/user/deleteUser', function (req, res, next) {
    const { username, password } = req.body
    moviesModel.deleteUser(username, password).then(user=>{
        res.status(200).send({message: 'update data user ' + username, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/searchMovie', function (req, res, next) {
    const { word } = req.body
    moviesModel.searchMovie(word).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/movieInfo', function (req, res, next) {
    const { movie } = req.body
    moviesModel.movieInfo(movie).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/serieInfo', function (req, res, next) {
    const { serie } = req.body
    moviesModel.serieInfo(serie).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/favoriteMovie', function (req, res, next) {
    moviesModel.favoriteMovie().then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.post('/api/user/updateInfo', function (req, res, next) {
    const { email, password, card, phone } = req.body
    moviesModel.updateInfo(username, password, card, phone).then(user=>{
        res.status(200).send({message: 'Actualizar información de usuario: ' + username, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.post('/api/updateMovieInfo', function (req, res, next) {
    const { dataToChange, dataChanged } = req.body
    moviesModel.updateMovieInfo(dataToChange, dataChanged).then(user=>{
        res.status(200).send({message: 'Actualizar información de usuario: ' + username, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.post('/api/changeSubDate', function (req, res, next) {
    const { fecha_pago } = req.body
    moviesModel.updateInfo(fecha_pago).then(user=>{
        res.status(200).send({message: 'Cambiar fecha de pago: ' + username, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/moviesCount', function (req, res, next) {
    moviesModel.moviesCount().then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/seriesCount', function (req, res, next) {
    moviesModel.seriesCount().then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/withoutRating', function (req, res, next) {
    moviesModel.withoutRating().then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/averagePrice', function (req, res, next) {
    moviesModel.averagePrice().then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})


module.exports = router

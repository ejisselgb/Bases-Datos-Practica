/**GENERACION DE ENDPOINTS 
 * 
 * Rutas esperadas para este ejercicio practico:
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

//Ejejrcicio practica
router.get('/api/getMovie/:tituloMovie', function (req, res, next) {
    const tituloMovie = req.params.tituloMovie

    moviesModel.getPeliculs(tituloMovie).then(movie=>{
        res.status(200).send(movie.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

//Ejercicios profe

router.get('/api/getMovies', function (req, res, next) {
    moviesModel.getPeliculas().then(movie=>{
        res.status(200).send(movie.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/allusers', function (req, res, next) {
    moviesModel.getAllUser().then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/getMovie/:id', function (req, res, next) {
    const id = req.params.id

    moviesModel.getPelicula(id).then(movie=>{
        res.status(200).send(movie.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.post('/api/updatePeli', function (req, res, next) {
    const { id_pelicula, descripcion } = req.body
    moviesModel.updatePeli(id_pelicula, descripcion).then(movie=>{
        res.status(200).send(movie.rows)
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

router.post('/api/user/update', function (req, res, next) {
    const { username, password } = req.body
    moviesModel.updateUser(username, password).then(user=>{
        res.status(200).send({message: 'update data user ' + username, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
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

router.get('/api/getPromedioMensual', function (req, res, next) {
    moviesModel.getPromedioMensual().then(promedio=>{
        res.status(200).send(promedio.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})
router.get('/api/getNumSeriesPelis', function (req, res, next) {
    moviesModel.getNumSeriesPelis().then(numSeriesPelis=>{
        res.status(200).send(numSeriesPelis.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})
router.get('/api/getSeriesPelisNoValoradas', function (req, res, next) {
    moviesModel.getSeriesPelisNoValoradas().then(noValoradas=>{
        res.status(200).send(noValoradas.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

module.exports = router

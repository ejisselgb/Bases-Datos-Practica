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

router.post('/api/user', function (req, res, next) {
    const { nombre_usuario, contrasena } = req.body
    moviesModel.getUser(nombre_usuario, contrasena).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user '+nombre_usuario)
    })
})

router.get('/api/allUsers', function (req, res, next) {
    moviesModel.getAllUsers().then(users=>{
        res.status(200).send(users.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting users')
    })
})

router.post('/api/user/create', function (req, res, next) {
    const { nombre_usuario,imagen, telefono, edad, nombre, apellido,contrasena,correo } = req.body
    moviesModel.insertUser(nombre_usuario,imagen,telefono, edad, nombre, apellido,contrasena,correo).then(user=>{
        res.status(200).send({message: 'create user '+nombre_usuario, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error creating user')
    })
})

router.post('/api/user/update', function (req, res, next) {
    const { nombre_usuario, contrasena } = req.body
    moviesModel.updateUser(nombre_usuario, contrasena).then(user=>{
        res.status(200).send({message: 'update data user '+nombre_usuario, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating user ')
    })
})

router.post('/api/user/delete', function (req, res, next) {
    const { nombre_usuario } = req.body
    moviesModel.deleteUser(nombre_usuario).then(user=>{
        res.status(200).send({message: 'delete user '+nombre_usuario, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error deleting user '+nombre_usuario)
    })
})

router.get('/api/movie/:id', function (req, res, next) {
    const id_pelicula = req.params.id
    moviesModel.getMovie(id_pelicula).then(movie=>{
        res.status(200).send(movie.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movie '+id_pelicula)
    })
})

router.get('/api/allMovies', function (req, res, next) {
    moviesModel.getAllMovies().then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies')
    })
})

router.post('/api/movie/create', function (req, res, next) {
    const { id_pelicula,nombre_pelicula,portada,restriccion_edad,duracion,fecha_estreno,link_pelicula} = req.body
    moviesModel.insertMovie(id_pelicula,nombre_pelicula,portada,restriccion_edad,duracion,fecha_estreno,link_pelicula).then(movie=>{
        res.status(200).send({message: 'create movie '+id_pelicula, rowCount: movie.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error creating movie')
    })
})

router.post('/api/movie/update', function(req,res,next){
    const {id_pelicula, portada} = req.body
    moviesModel.uptadeMovie(id_pelicula, portada).then(movie=>{
        res.status(200).send({message: 'update movie '+id_pelicula, rowCount: movie.rowCount})
    }).catch(err=>{
        console.log(err)
        return res.status(500).send('Error updating movie '+id_pelicula)
    })
})

router.post('/api/movie/delete', function (req, res, next) {
    const { id_pelicula } = req.body
    moviesModel.deleteMovie(id_pelicula).then(movie=>{
        res.status(200).send({message: 'delete movie '+id_pelicula, rowCount: movie.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error deleting movie '+id_pelicula)
    })
})

module.exports = router
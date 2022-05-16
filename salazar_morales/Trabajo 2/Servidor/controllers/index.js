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
    const { username, password } = req.body
    moviesModel.getUser(username, password).then(user=>{
        res.status(200).send(user.rows)
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

router.get('/api/allmovies', function (req, res, next) {
    moviesModel.getAllMovie().then(user=>{
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

    moviesModel.getPelicula(id).then(movie=>{
        res.status(200).send(movie.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

module.exports = router
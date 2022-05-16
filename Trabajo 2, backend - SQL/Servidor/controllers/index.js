
const express = require('express')
const { password, user } = require('pg/lib/defaults')
const router = express.Router()
const moviesModel = require('../models')

router.get('/api', function (req, res, next) {
    res.status(200).send({
        success: 'true',
        message: 'Movies Eafit Api ',
        version: '1.0.0'
    })
})
//Traer la información de un usuario por medio del nombre de usuario y contraseña.
router.get('/api/getUserByMailAndPass/:email/:password', function (req, res, next) {
    const email = req.params.email
    const password = req.params.password
    moviesModel.getMoviesByNameAndPass(email, password).then(user=>{
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

//Traer series según coincida con la o las categorías, para crear los banners con la estructura que se muestran en la imagen.
router.get('/api/getSeriesBycat', function (req, res, next) {
    moviesModel.getSeriesBycat().then(cat=>{
        res.status(200).send(cat.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting series')
    })
})
//Traer peliculas según coincida con la o las categorías, para crear los banners con la estructura que se muestran en la imagen.
router.get('/api/getMoviesBycat', function (req, res, next) {
    moviesModel.getMoviesBycat().then(cat=>{
        res.status(200).send(cat.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting series')
    })
})
//Traer las películas que concidan con la palabra que va insertando en el buscador. Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa.
router.get('/api/moviesBySearch/:search', function (req, res, next) {
    const search = req.params.search
    moviesModel.moviesBySearch(search).then(busqueda=>{
        res.status(200).send(busqueda.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error searching movies')
    })
})
//Traer toda la información de una película cuando esta se selecciona como sinopsis, poster, enlace de trailer (link de youtube).
router.get('/api/getMovies/:id_pelicula', function (req, res, next) {
    const id_pelicula = req.params.id_pelicula
    moviesModel.getMovies(id_pelicula).then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies')
    })
})
//Traer toda la información de una serie cuando esta se selecciona como sinopsis, cantidad capítulos, poster, enlace de trailer (link de youtube).
router.get('/api/getSeries/:id_serie', function (req, res, next) {
    const id_serie = req.params.id_serie
    moviesModel.getSeries(id_serie).then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting Series')
    })
})

//Traer la información de las películas favoritas de un usuario (nombre película, poster)
router.get('/api/getFavoritesMovies/:id_perfil', function (req, res, next) {
    const id_perfil = req.params.id_perfil
    moviesModel.getFavoritesMovies(id_perfil).then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting favorites Movies')
    })
})
//Permitir al usuario editar la información de su perfil como por ejemplo modificar la tarjeta vinculada, contraseña, teléfono, correo
router.get('/api/updateProfilePass', function (req, res, next) {
    const { password, id_usuario } = req.body
    moviesModel.updateProfilePass().then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting updating pass')
    })
})

router.get('/api/updateProfileCard', function (req, res, next) {
    const {card, id_usuario} = req.body
    moviesModel.updateProfileCard(card, id_usuario).then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting updating card')
    })
})

router.get('/api/updateProfileEmail', function (req, res, next) {
    const {mail, id_usuario} = req.body
    moviesModel.updateProfileEmail(mail, id_usuario).then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting updating email')
    })
})
router.get('/api/updateProfilePhone', function (req, res, next) {
    const {numberP, id_usuario} = req.body
    moviesModel.updateProfilePhone(numberP, id_usuario).then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting updating card')
    })
})
//Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan
router.get('/api/updateDateOfPlan', function (req, res, next) {
    const {fechaVenNueva, id_usuario} = req.body
        moviesModel.updateDateOfPlan(fechaVenNueva, id_usuario).then(movies=>{
            res.status(200).send(movies.rows)
        }).catch(err => {
            console.log(err)
            return res.status(500).send('Error getting updating plan')
        })
    })

//Permitir editar la información de una película o serie
router.get('/api/updateInfoMovie', function (req, res, next) {
    const {description, id_pelicula} = req.body
    moviesModel.updateInfoMovie(description, id_pelicula).then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting updating movie info')
    })
})

router.get('/api/updateInfoSerie', function (req, res, next) {
    const {description, id_serie} = req.body
    moviesModel.updateInfoSerie(description, id_serie).then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting updating movie info')
    })
})

//Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma
router.get('/api/getAvg', function (req, res, next) {
    moviesModel.getAvg().then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting avg')
    })
})

//Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma
router.get('/api/getCountMovies', function (req, res, next) {
    moviesModel.getCountMovies().then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting count')
    })
})

router.get('/api/getCountSeries', function (req, res, next) {
    moviesModel.getCountSeries().then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting count')
    })
})

//Obtener la información de todas las películas que aún no han sido calificadas o valoradas
router.get('/api/getMoviesAndSeriesWithNo', function (req, res, next) {
    moviesModel.getMoviesAndSeriesWithNo().then(movies=>{
        res.status(200).send(movies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies and series no ')
    })
})
module.exports = router

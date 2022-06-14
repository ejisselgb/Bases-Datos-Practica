
const express = require('express')
const router = express.Router()
const moviesModel = require('../models')

//consulta prueba


router.get('/api', function (req, res, next) {
    res.status(200).send({
        success: 'true',
        message: 'Movies Eafit Api ',
        version: '1.0.0'
    })
})

//consultas Usuarios

//consulta login
//Traer la información de un usuario por medio del nombre de usuario y contraseña.
router.get('/login/user', function (req, res, next) {
    const { nombre_usuario, contrasena } = req.body
    moviesModel.getUser(nombre_usuario, contrasena).then(user=>{
       // console.log(user)
        if(user.rows.length != 0){
            res.status(200).send(user.rows)
        }else{
            res.status(404).send({"mensaje":"usuario no encontrado o contraseña incorrecta"})
        }
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error encontrando '+ nombre_usuario)
    })
})

//Traer las peliculas o series segun coincidan con la categoria para mostrar banners.
router.get('/movie/category', function (req, res, next) {
    const { categoria } = req.body
    moviesModel.getMoviesByCategory(categoria).then(movies=>{
        if(movies.rows.length != 0){
            res.status(200).send(movies.rows)
        }else{
            res.status(404).send({"mensaje":"peliculas de esta categoria no encontradas"})
        }
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies ')
    })
})

//Traer peliculas que coincidan con la palabra en el buscador  puede cntener cualquier cosa adelante y atras de la palabra que se ingresa.
router.get('/movie/search', function (req, res, next) {
    const { search } = req.body
    moviesModel.getMoviesSearch(search).then(movies=>{
        if(movies.rows.length != 0){
            res.status(200).send(movies.rows)
        }else{
            res.status(404).send({"mensaje":"peliculas no encontradas"})
        }
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies ')
    })
})


 //Traer informacion de las peliculas favoritas de un usuario
router.get('/movie/user/favorite', function (req, res, next) {
    const { id } = req.body
    moviesModel.getMoviesByUserFavorite(id).then(movies=>{
        if(movies.rows.length != 0){
            res.status(200).send(movies.rows)
        }else{
            res.status(404).send({"mensaje":" usuario sin peliculas favoritas"})
        }
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies ')
    })
})


//Permitir al usuario editar la informacion de su perfil, como por ejemplo la tarjerta, contraseña,correo,telefono
router.post('/user/update/password', function (req, res, next) {
    const { password, id } = req.body
    moviesModel.updateUserPassword(id, password).then(user=>{
        if(user.rowCount != 0){
         
            res.status(200).send({"mensaje": "Contraseña cambiada correctamente"})
        }else{
            res.status(400).send({"mensaje": "No se pudo cambiar la contraseña"})
        } 
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send(' Error cambiando contraseña ')
    })
})

router.post('/user/update/telefono', function (req, res, next) {
    const { telefono, id } = req.body
    moviesModel.updateUserTelefono(id, telefono).then(user=>{
        if(user.rowCount != 0){
            
            res.status(200).send({"mensaje": "Telfono cambiado correctamente"})
        }else{
            res.status(400).send({"mensaje": "No se pudo cambiar el telefono"})
        } 
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando Telefono ')
    })
})

router.post('/user/update/username', function (req, res, next) {
    const { user, id } = req.body
    moviesModel.updateUserNombre_user(id, user).then(user=>{
        if(user.rowCount != 0){
            
            res.status(200).send({"mensaje": "Username cambiado correctamente"})
        }else{
            res.status(400).send({"mensaje": "No se pudo cambiar el username"})
        }
           
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando username ')
    })
})

 //Permitir al usuario cambiar la fecha de su planes facturacion acaaaa
router.post('/user/update/paymentdate', function (req, res, next) {
    const { date, id } = req.body
    moviesModel.updatePaymentDate(id, date).then(user=>{
        
            res.status(200).send({"mensaje": "fecha de pago cambiada correctamente"})
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando fecha de pago')
    })
})

 //Permitir editar la informacion de una pelicula o serie
 router.post('/movie/update/name', function (req, res, next) {
    const { name, id } = req.body
    moviesModel.updateNameMovie(id, name).then(user=>{

        res.status(200).send({"mensaje": "Nombre de la pelicula cambiado correctamente"})
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando nombre de la pelicula')
    })
})

router.post('/movie/update/restriccion', function (req, res, next) {
    const { edad, id } = req.body
    moviesModel.updateRestriccionMovie(id, edad).then(user=>{
        
            res.status(200).send({"mensaje": "restriccion de edad cambiado correctamente"})
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando fecha de pago')
    })
})

router.post('/movie/update/poster', function (req, res, next) {
    const { poster, id } = req.body
    moviesModel.updatePosterMovie(id, poster).then(user=>{
        
            res.status(200).send({"mensaje": "Poster de pelicula cambiado correctamente"})
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando fecha de pago')
    })
})

router.post('/movie/update/link', function (req, res, next) {
    const { link, id } = req.body
    moviesModel.updateLinkMovie(id, link).then(user=>{
        
        res.status(200).send({"mensaje": "link de pelicula cambiado correctamente"})
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando link')
    })
})

//series cambiando

router.post('/series/update/restriccion', function (req, res, next) {
    const { edad, id } = req.body
    moviesModel.updateRestriccionSerie(id, edad).then(user=>{
        
        res.status(200).send({"mensaje": "Restriccion de edad de la serie cambiado correctamente"})
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando fecha de pago')
    })
})

router.post('/series/update/poster', function (req, res, next) {
    const { poster, id } = req.body
    moviesModel.updatePosterSeries(id, poster).then(user=>{
        
        res.status(200).send({"mensaje": "Poster de la serie cambiado correctamente"})
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando poster')
    })
})

router.post('/series/update/nombre', function (req, res, next) {
    const { nombre, id } = req.body
    moviesModel.updateNombreSeries(id, nombre).then(user=>{
        
        res.status(200).send({"mensaje": "Nombre de la serie cambiado correctamente"})
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando poster')
    })
})

router.post('/series/update/link', function (req, res, next) {
    const { link, id } = req.body
    moviesModel.updateLinkSeries(id, link).then(user=>{
        
        res.status(200).send({"mensaje": "Link de la serie cambiado correctamente"})
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error cambiando link')
    })
})

//Traer toda la informacion de una pelicula cuando esta se selecciona como sipnosis, poster, enlace trailer

router.get('/movies/select', function (req, res, next) {
    const { id } = req.body
    moviesModel.getPeliculaSelect(id).then(user=>{
        
        res.status(200).send(user.rows)
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error trayendo peliculas')
    })
})

//Traer toda la informacion de una serie cuando esta se selecciona como sipnosis, poster, enlace trailer

router.get('/series/select', function (req, res, next) {
    const { id } = req.body
    moviesModel.getSerieSelect(id).then(user=>{
        
        res.status(200).send(user.rows)
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error trayendo series')
    })
})

//obtener el valor promedio que se debe pagar al mes segun las suscripciones de los usuarios a los planes que ofrece la plataforma

router.get('/user/promedio/valor', function (req, res, next) {
    const { id } = req.body
    moviesModel.getValorPromedio(id).then(user=>{
        
        res.status(200).send(user.rows)
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error trayendo promedio')
    })
})

//obtener la informacion de todas las peliculas que aun no han sido valoradas o calificadas

router.get('/movies/sinCalificacion', function (req, res, next) {

    moviesModel.getMoviesWithoutCalification().then(user=>{
        
        res.status(200).send(user.rows)
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error trayendo peliculas sin calificacion')
    })
})

//Obtener la cantidad de peliculas  que se encuentran en la base de datos de la plataforma
router.get('/movies/count', function (req, res, next) {

    moviesModel.getMoviesCount().then(user=>{
        
        res.status(200).send(user.rows)
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error trayendo cuenta de peliculas')
    })
})

//Obtener la cantidad series que se encuentran en la base de datos de la plataforma

router.get('/series/count', function (req, res, next) {

    moviesModel.getSeriesCount().then(user=>{
        
        res.status(200).send(user.rows)
        
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error trayendo cuenta de series')
    })
})




module.exports = router
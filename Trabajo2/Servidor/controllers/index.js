const express = require('express')
const router = express.Router()
const moviesModel = require('../models')


// --Punto 1: Traer la información de un usuario por medio del nombre de usuario y contraseña.

router.get('/api/getInfoUsuario/:nombre/:contrasena', function (req, res, next) {
    const nombre = req.params.nombre
    const contrasena_usuario = req.params.contrasena
    moviesModel.getInfoUsuario(nombre, contrasena_usuario).then(serie=>{
        res.status(200).send(serie.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

// --Punto 2: Traer películas o series según coincida con la o las categorías, para crear los banners con la estructura que se muestran en la imagen.

router.get('/api/getPeliculaSerieDeCategoria/:nombre', function (req, res, next) {
    const nombre = req.params.nombre
    moviesModel.getPeliculaSerieDeCategoria(nombre).then(categoria=>{
        res.status(200).send(categoria.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting categories')
    })
})

// --Punto 3: Traer las películas que concidan con la palabra que va insertando en el buscador. Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa.

router.get('/api/getPeliculaDeBuscador/:busqueda', function (req, res, next) {
    const busqueda = req.params.busqueda
    moviesModel.getPeliculaDeBuscador(busqueda).then(peliculas=>{
        res.status(200).send(peliculas.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies')
    })
})

// --Punto 4: Traer toda la información de una película cuando esta se selecciona como sinopsis, poster, enlace de trailer (link de youtube).
//PROBLEMAS
router.get('/api/getPeliculaSeleccionada/:seleccion', function (req, res, next) {
    const seleccion = req.params.seleccion
    moviesModel.getPeliculaSeleccionada(seleccion).then(peliculas=>{
        res.status(200).send(peliculas.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting the movie')
    })
})

// --Punto 5: Traer toda la información de una serie cuando esta se selecciona como sinopsis, cantidad capítulos, poster, enlace de trailer (link de youtube).

router.get('/api/infoSeries/:id_serie', function (req, res, next) {
    const  id_serie  = req.params.id_serie
    moviesModel.getInfoSerie(id_serie).then(series=>{
        res.status(200).send(series.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting serie')
    })
})

// --Punto 6: Traer la información de las películas favoritas de un usuario (nombre película, poster)

router.get('/api/favMovies/:id_perfil', function (req, res, next) {
    const  id_perfil  = req.params.id_perfil
    moviesModel.getFavMovies(id_perfil).then(favMovies=>{
        res.status(200).send(favMovies.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting favorite movies')
    })
})

// --Punto 7: Permitir al usuario editar la información de su perfil como por ejemplo modificar la tarjeta vinculada, contraseña, teléfono, correo
//PENDIENTE
router.post('/api/updateProfile', function (req, res, next) {
    const { correo, id_usuario } = req.body
    moviesModel.updateProfile(correo, id_usuario).then(user=>{
        res.status(200).send({message: 'update data user ' + id_usuario, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

// --Punto 8: Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan
//PENDIENTE

router.post('/api/updatePayDate', function (req, res, next) {
    const { fecha_pago, id_usuario } = req.body
    moviesModel.updatePayDate(fecha_pago, id_usuario).then(user=>{
        res.status(200).send({message: 'update data user ' + id_usuario, rowCount: user.rowCount})
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

// --Punto 9: Permitir editar la información de una película o serie
//PENDIENTE

router.post('/api/updatePeliSerie', function (req, res, next) {
    const { id_serie, titulo } = req.body
    moviesModel.updatePeliSerie(id_serie, titulo).then(serie=>{
        res.status(200).send(serie.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})


// --Punto 10: Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma

router.get('/api/getPromedioMensual', function (req, res, next) {
    moviesModel.getPromedioMensual().then(promedio=>{
        res.status(200).send(promedio.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

// --Punto 11: Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma

router.get('/api/getNumSeriesPelis', function (req, res, next) {
    moviesModel.getNumSeriesPelis().then(numSeriesPelis=>{
        res.status(200).send(numSeriesPelis.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

// --Punto 12: Obtener la información de todas las películas que aún no han sido calificadas o valoradas

router.get('/api/getSeriesPelisNoValoradas', function (req, res, next) {
    moviesModel.getSeriesPelisNoValoradas().then(noValoradas=>{
        res.status(200).send(noValoradas.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

module.exports = router

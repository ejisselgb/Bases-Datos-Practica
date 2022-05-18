const express = require('express')
const router = express.Router()
const moviesModel = require('../models')

router.post('/getUsuario', function(req,res,next){
    const {nombre_usuario, contrasenia} = req.body
    moviesModel.getUsuario(nombre_usuario,contrasenia).then(usuario=>{
        res.status(200).send(usuario.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error obteniendo el usuario '+nombre_usuario)
    })
})


router.get('/categorias/:categoria', function(req,res,next){
    const nombre_categoria = req.params.categoria
    moviesModel.getCategoria(nombre_categoria).then(peliculasYseries=>{
        res.status(200).send(peliculasYseries.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error obteniendo las peliculas y series correspondientes a las categorias '+nombre_categoria)
    })
})


router.get('/buscar/:titulo', function(req,res,next){
    const titulo = req.params.titulo
    moviesModel.getPeliculasYseriesPorTitulo(titulo).then(peliculas=>{
        res.status(200).send(peliculas.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error obteniendo peliculas, no exsiten resultados similares a '+titulo)
    })
})


router.get('/pelicula/click/:id', function(req,res,next){
    const id_pelicula = req.params.id
    moviesModel.getPeliculaPorClick(id_pelicula).then(pelicula=>{
        res.status(200).send(pelicula.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error accediendo a la pelicula.')
    })
})


router.get('/serie/click/:id', function(req,res,next){
    const id_serie = req.params.id
    moviesModel.getSeriePorClick(id_serie).then(serie=>{
        res.status(200).send(serie.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error accediendo a la serie.')
    })
})

//Punto 6
router.get('/favoritos/:id', function(req,res,next){
    const id_perfil = req.params.id
    moviesModel.getPeliculasYseriesFavoritas(id_perfil).then(peliculas=>{
        res.status(200).send(peliculas.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error obteniendo peliculas peliculas favoritas.')
    })
})

//Punto 7
router.post('/editar/perfil/:id/idioma', function(req,res,next){
    const id_perfil = req.params.id
    const {idioma_preferencia} = req.body
    moviesModel.updateIdioma(id_perfil, idioma_preferencia).then(perfil=>{
        res.status(200).send({message: 'Se ha editado información del perfil correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar el perfil.')
    })
})

router.post('/editar/perfil/:id/nombre', function(req,res,next){
    const id_perfil = req.params.id
    const {nombre_perfil} = req.body
    moviesModel.updateNombre(id_perfil, nombre_perfil).then(perfil=>{
        res.status(200).send({message: 'Se ha editado información del perfil correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar el perfil.')
    })
})

router.post('/editar/perfil/:id/foto', function(req,res,next){
    const id_perfil = req.params.id
    const {foto_perfil} = req.body
    moviesModel.updateFoto(id_perfil, foto_perfil).then(perfil=>{
        res.status(200).send({message: 'Se ha editado información del perfil correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar el perfil.')
    })
})

router.post('/editar/perfil/:id/preferencias', function(req,res,next){
    const id_perfil = req.params.id
    const {preferencias} = req.body
    moviesModel.updatePreferencias(id_perfil, preferencias).then(perfil=>{
        res.status(200).send({message: 'Se ha editado información del perfil correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar el perfil.')
    })
})

router.post('/editar/perfil/:id/edad', function(req,res,next){
    const id_perfil = req.params.id
    const {edad} = req.body
    moviesModel.updateEdad(id_perfil, edad).then(perfil=>{
        res.status(200).send({message: 'Se ha editado información del perfil correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar el perfil.')
    })
})


router.post('/editar/perfil/:id/pin', function(req,res,next){
    const id_perfil = req.params.id
    const {pin} = req.body
    moviesModel.updatePin(id_perfil, pin).then(perfil=>{
        res.status(200).send({message: 'Se ha editado información del perfil correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar el perfil.')
    })
})

//Punto 8
router.post('/editar/suscripcion/:id/facturacion', function(req,res,next){
    const id_usuario = req.params.id
    const {nueva_fecha} = req.body
    moviesModel.updateFacturacion(id_usuario, nueva_fecha).then(perfil=>{
        res.status(200).send({message: 'Se ha editado la fecha de facturación correctamente.', rowCount:perfil.rowCount})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la fecha de facturación.')
    })
})

//Punto 9
router.post('/editar/pelicula/:id/titulo', function(req,res,next){
    const id_pelicula = req.params.id
    const {titulo} = req.body
    moviesModel.updatePeliculaTitulo(id_pelicula, titulo).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/pelicula/:id/titulo', function(req,res,next){
    const id_pelicula = req.params.id
    const {poster} = req.body
    moviesModel.updatePeliculaPoster(id_pelicula, poster).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/pelicula/:id/restriccion', function(req,res,next){
    const id_pelicula = req.params.id
    const {restriccion_edad} = req.body
    moviesModel.updatePeliculaRestriccionEdad(id_pelicula, restriccion_edad).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/pelicula/:id/duracion', function(req,res,next){
    const id_pelicula = req.params.id
    const {duracion} = req.body
    moviesModel.updatePeliculaDuracion(id_pelicula, duracion).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/pelicula/:id/fechaEstreno', function(req,res,next){
    const id_pelicula = req.params.id
    const {fecha_estreno} = req.body
    moviesModel.updatePeliculaFechaEstreno(id_pelicula, fecha_estreno).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/pelicula/:id/trailer', function(req,res,next){
    const id_pelicula = req.params.id
    const {trailer} = req.body
    moviesModel.updatePeliculaTrailer(id_pelicula, trailer).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/pelicula/:id/descripcion', function(req,res,next){
    const id_pelicula = req.params.id
    const {descripcion} = req.body
    moviesModel.updatePeliculaDescripcion(id_pelicula, descripcion).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/pelicula/:id/link', function(req,res,next){
    const id_pelicula = req.params.id
    const {link_pelicula} = req.body
    moviesModel.updatePeliculaLink(id_pelicula, link_pelicula).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})

router.post('/editar/serie/:id/titulo', function(req,res,next){
    const id_pelicula = req.params.id
    const {titulo} = req.body
    moviesModel.updateSerieTitulo(id_pelicula, titulo).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/serie/:id/poster', function(req,res,next){
    const id_pelicula = req.params.id
    const {poster} = req.body
    moviesModel.updateSeriePoster(id_pelicula, poster).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/serie/:id/restriccion', function(req,res,next){
    const id_pelicula = req.params.id
    const {restriccion_edad} = req.body
    moviesModel.updateSerieRestriccionEdad(id_pelicula, restriccion_edad).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/serie/:id/trailer', function(req,res,next){
    const id_pelicula = req.params.id
    const {trailer} = req.body
    moviesModel.updateSerieTrailer(id_pelicula, trailer).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/serie/:id/descripcion', function(req,res,next){
    const id_pelicula = req.params.id
    const {descripcion} = req.body
    moviesModel.updateSerieDescripcion(id_pelicula, descripcion).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/serie/:id/fechaEstreno', function(req,res,next){
    const id_pelicula = req.params.id
    const {fecha_estreno} = req.body
    moviesModel.updateSerieFechaEstreno(id_pelicula, fecha_estreno).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})
router.post('/editar/serie/:id/numeroTemporadas', function(req,res,next){
    const id_pelicula = req.params.id
    const {numero_temporadas} = req.body
    moviesModel.updateSerieNumeroTmeporadas(id_pelicula, numero_temporadas).then(pelicula=>{
        res.status(200).send({message: 'Se ha editado información de la pelicula correctamente'})
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error al intentar editar la pelicula.')
    })
})

//Punto 10
router.get('/valorPromedio', function(req,res,next){
    moviesModel.getValorPromedio().then(valor=>{
        res.status(200).send(valor.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Surgió un error mientras se obtene el valor promedio.')
    })
})

//Punto 11
router.get('/cantidad/peliculas', function(req,res,next){
    moviesModel.getCantidadPeliculas().then(peliculas=>{
        res.status(200).send(peliculas.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error obteniendo la cantidad de peliculas.')
    })
})
router.get('/cantidad/series', function(req,res,next){
    moviesModel.getCantidadSeries().then(series=>{
        res.status(200).send(series.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error obteniendo la cantidad de series')
    })
})
router.get('/cantidad/peliculasYseries', function(req,res,next){
    moviesModel.getCantidadPeliculasYSeries().then(peliculasYseries=>{
        res.status(200).send(peliculasYseries.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error obteniendo la cantidad de peliculas y series')
    })
})

//Punto 12
router.get('/peliculas/noCalificadas', function(req,res,next){
    moviesModel.getPeliculasNoCalificadas().then(peliculas=>{
        res.status(200).send(peliculas.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error obteniendo peliculas sin calificación')
    })
})

router.get('/series/noCalificadas', function(req,res,next){
    moviesModel.getSeriesNoCalificadas().then(peliculas=>{
        res.status(200).send(peliculas.rows)
    }).catch(err=> {
        console.log(err)
        return res.status(500).send('Error obteniendo series sin calificación')
    })
})

module.exports = router
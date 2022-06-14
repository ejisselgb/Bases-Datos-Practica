const mongoose = require('./conexion');
mongoose.pluralize(null);

const pelicula = mongoose.model('PELICULAS', {
    id_pelicula: String,
    nombre_pelicula: String,
    portada: String,
    restriccion_edad: Number,
    duracion: String,
    fecha_estreno: Date,
    trailer_pelicula: String,
    sinopsis: String,
    calificacion_pelicula: Number,
    actores_pelicula: Array,
    idioma_pelicula: String,
    comentarios: Array
});

let peliculas = [{
    "id_pelicula": "11211401",
    "nombre_pelicula": "sonic 2",
    "portada": "/src/portadas/peliculas/sonic.png",
    "restriccion_edad": 10,
    "duracion": "2h 2m",
    "fecha_estreno": new Date('2022-05-07'),
    "trailer_pelicula": "/src/trailer/peliculas/sonic.mp4",
    "sinopsis": "Después de establecerse en Green Hills, Sonic quiere demostrar que tiene madera de héroe. La prueba de fuego llega con el retorno del malvado Robotnik, y su nuevo compinche, Knuckles, en busca de una esmeralda que destruye civilizaciones.",
    "calificacion_pelicula": 2.5,
    "actores_pelicula": ["Hitoshi Okuno", "Haruki Satomi", "Neal H. Moritz", "Hajime Satomi", "Toby Ascher", "Toru Nakahara", "samuel"],
    "idioma_pelicula": "Español, Ingles, Frances, Italiano",
    "comentarios": ["pelicula Regular no me llamo la atencion", "le falto mejorar a la pelicula", "algo mas de trama le falto"]
},
{
    "id_pelicula": "11211402",
    "nombre_pelicula": "Amigos Intocables",
    "portada": "/src/portadas/peliculas/amigos_intocables.png",
    "restriccion_edad": 15,
    "duracion": "1h 52m",
    "fecha_estreno": new Date('2012-08-07'),
    "trailer_pelicula": "/src/trailer/peliculas/amigos_intocables.mp4",
    "sinopsis": "Una extraña amistad se desarrolla entre un millonario que quedó paralítico en un accidente y un joven de los suburbios.",
    "calificacion_pelicula": 4.9,
    "actores_pelicula": ["pepito","François Cluzet", "Omar Sy", "samuel"],
    "idioma_pelicula": "Español, Ingles, Frances",
    "comentarios": ["me gusto mucho esta pelicula", "esta pelicula merece muchas vistas"]
},
{
    "id_pelicula": "11257412",
    "nombre_pelicula": "El juego de Ender",
    "portada": "/src/portadas/peliculas/el_juego_de_ender.png",
    "restriccion_edad": 13,
    "duracion": "1h 54m",
    "fecha_estreno": new Date('2023-04-06'),
    "trailer_pelicula": "/src/trailer/peliculas/el_juego_de_ender.mp4",
    "sinopsis": "Un joven talentoso exhibe un talento inusual que hace que sea elegido para un entrenamiento militar avanzado para encabezar a las fuerzas de la Tierra en una guerra intensa contra los Formics, unos invasores extraterrestres.",
    "calificacion_pelicula": 4.3,
    "actores_pelicula": ["pepito","Asa butterfield", "Harrison Ford", "Hailee Steinfeld", "Gavin Hood", "Abigail Breslin", "Ben Kingsley", "samuel"],
    "idioma_pelicula": " Ingles, Frances",
    "comentarios":["Estuvo buena la pelicula aunque muy predecible", "la pelicula me llamo la atencion pero mi esposa se durmio"]
},
]

for (let i =0 ; i<peliculas.length; i++){
    const nuevoElemento = new pelicula(peliculas[i]);
    nuevoElemento.save().then(res => console.log(res)).catch(err => 'Error en el guardado: ' + err);
}

  
const mongoose = require('./conexion');
mongoose.pluralize(null);

const serie = mongoose.model('SERIES', {
    id_serie: String,
    nombre_serie: String,
    numero_capitulos: Number,
    numero_temporadas: Number,
    portada: String,
    restriccion_edad: Number,
    fecha_estreno: Date,
    trailer_serie: String,
    calificacion_serie: Number,
    actores_Serie: Array,
    idioma_serie: String
});

let nuevaSerie = [{
    "id_serie": "101011",
    "nombre_serie": "Stranger Things",
    "numero_capitulos": 15,
    "numero_temporadas": 2,
    "portada": "/src/images/portada.png",
    "restriccion_edad": 15,
    "fecha_estreno": new Date('2022-07-20'),
    "trailer_serie": "/src/series/trailer.mp4",
    "calificacion_serie": 4.0,
    "actores_serie": ["Finn Wolfhard", "Milli Bobby Brown", "Noah Schnapp", "Gaten Matarazzo"],
    "idioma_serie": "Español, Ingles, Aleman, Costeño, Polaco"
},
{
    "id_serie": "101012",
    "nombre_serie": "sens8",
    "numero_capitulos": 20,
    "numero_temporadas": 2,
    "portada": "/src/images/portada3.png",
    "restriccion_edad": 18,
    "fecha_estreno": new Date('2020-07-20'),
    "trailer_serie": "/src/series/trailer3.mp4",
    "calificacion_serie": 5.0,
    "actores_serie": ["Jamie Clayton","Brian J.Smith", "Max Riemelt", "Lana Wachowski", "Miguel Angel Silvestre", "Toby Onwumere", "Bae Doona"],
    "idioma_serie": "Español, Ingles, Aleman, Polaco, Japones, Indu"
},
{
    "id_serie": "101013",
    "nombre_serie": "How to get Away with a murderer",
    "numero_capitulos": 90,
    "numero_temporadas": 6,
    "portada": "/src/images/portada2.png",
    "restriccion_edad": 17,
    "fecha_estreno": new Date('2014-09-14'),
    "trailer_serie": "/src/series/trailer5.mp4",
    "calificacion_serie": 5.0,
    "actores_serie": ["Viola Davis", "Jack Falahee" , "Aja Naomi King", "Liza Weil", "Alfred Enoch"],
    "idioma_serie": "Español, Ingles, Aleman, Costeño, Polaco"
}
]

for (let i =0 ; i<nuevaSerie.length; i++){
    const nuevoElemento = new serie(nuevaSerie[i]);
    nuevoElemento.save().then(res => console.log(res)).catch(err => 'Error en el guardado: ' + err);
}

  
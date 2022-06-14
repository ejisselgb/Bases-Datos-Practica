const mongoose = require('./conexion');
mongoose.pluralize(null);


const episodio = mongoose.model('EPISODIOS', {
    id_episodio: String,
    id_temporada: String,
    nombre_episodio: String,
    numero_episodio: Number,
    ruta_episodio: String,
    descripcion_episodio: String
});


let episodios = [{
    id_episodio: "11411101001",
    id_temporada: "1101001",
    nombre_episodio: "Resonancia Limbica",
    numero_episodio: 1,
    ruta_episodio: "/src/episodios/1101001/episodio1.mp4",
    descripcion_episodio: "A través de visiones, ocho desconocidos son testigos de la misteriosa muerte de una mujer. Los desconocidos Capheus, Sun, Nomi, Kala, Riley, Lito, Will y Wolfgang viven en distintas partes del mundo (Nairobi, Seúl, San Francisco, Mumbai, Londres, Ciudad de México, Chicago y Berlín respectivamente) y a partir de las visiones compartidas comienzan a experimentar una conexión sobrenatural que les permite entrar en los pensamientos y emociones de sus pares. Mientras lidian con lo que creen son alucinaciones, son forzados a lidiar con las adversidades en sus vidas."
},
{
    id_episodio: "114111055241",
    id_temporada: "1101002",
    nombre_episodio: "La desaparicion de Will Byers",
    numero_episodio: 1,
    ruta_episodio: "/src/episodios/1101002/episodio1.mp4",
    descripcion_episodio: "Cuando vuelve en bici a su casa, Will ve algo horroroso. Cerca de allí, un siniestro secreto acecha en las profundidades de un laboratorio estatal."
},
{
    id_episodio: "11419875001",
    id_temporada: "1101003",
    nombre_episodio: "Resonancia Limbica",
    numero_episodio: 1,
    ruta_episodio: "/src/episodios/1101001/episodio.mp4",
    descripcion_episodio: "A través de visiones, ocho desconocidos son testigos de la misteriosa muerte de una mujer. Los desconocidos Capheus, Sun, Nomi, Kala, Riley, Lito, Will y Wolfgang viven en distintas partes del mundo (Nairobi, Seúl, San Francisco, Mumbai, Londres, Ciudad de México, Chicago y Berlín respectivamente) y a partir de las visiones compartidas comienzan a experimentar una conexión sobrenatural que les permite entrar en los pensamientos y emociones de sus pares. Mientras lidian con lo que creen son alucinaciones, son forzados a lidiar con las adversidades en sus vidas."
},
]

for (let i =0 ; i<episodios.length; i++){
    const nuevoElemento = new episodio(episodios[i]);
    nuevoElemento.save().then(res => console.log(res)).catch(err => 'Error en el guardado: ' + err);
}

  
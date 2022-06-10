### Peliculas que salieron despues del 2017

``` JSON
db.Peliculas.find( { "ano_estreno_pelicula": { "$gt": 2017} }, {"nombre_pelicula": 1, "ano_estreno_pelicula": 1} )

```



### Actores de una pelicula que participaron en otras

``` JSON
db.Peliculas.find ({ "actores": { "$elemMatch": { "nombre_actor":"Kazuto Kirigaya", "nombre_actor":"Asuna Yuuki" } } }, {"nombre_pelicula": 1, "actores": 1})

```




### Comentarios puntuacion mayor a 3 

-------------------------

``` json

db.Peliculas.aggregate([

    {

       $project: {

          comentarios: {

             $filter: {

                input: "$comentarios",

                as: "com",

                cond: { $and: [   { $gte: [ "$$com.calificacion_com", 3 ] },

                         { $eq: [ "$$com.nombre_pelicula", "Fate Stay Night: Heavens Feel" ] }

  

             ]}

  

             }

          }

       }

    }

 ])

```



---------------------------------------------------------------------

### Comentarios puntuacion menor a 3 

``` JSON

db.Peliculas.aggregate([

    {

       $project: {

          comentarios: {

             $filter: {

                input: "$comentarios",

                as: "com",

                cond: { $and: [   { $lte: [ "$$com.calificacion_com", 3 ] },

                         { $eq: [ "$$com.nombre_pelicula", "Fate Stay Night: Heavens Feel" ] }

  

             ]}

  

             }

          }

       }

    }

 ])

```



-------------------------------------------




#### Update:
primera pelicula "nombre_pelicula":"Shrek 2" --> "nombre_pelicula":"Shrek"


``` json

db.Peliculas.update(
{"_id":"PE01"},
{ $set: {

  "nombre_pelicula": "Shrek",
  "duracion_pelicula": "01:59:24",
  "miniatura_pelicula": "https://www.movieseafit.com/Shrek-2/SHREK2.jpg",
  "restriccion_edad_pelicula": "ALL",
  "trailer_pelicula": "https://youtu.be/xBxVgh-kgAI",
  "enlace_pelicula": "https://www.movieseafit.com/Shrek-2/TrKFWR3%2b0kKf6pFRqswKWw%3d%3d",
  "ano_estreno_pelicula": 2001,
  "sinopsis_pelicula": "Cuando Shrek y la princesa Fiona regresan de su luna de miel, los padres de ella los invitan a visitar el reino de Muy Muy Lejano para celebrar la boda. Para Shrek, al que nunca abandona su fiel amigo Asno, esto constituye un gran problema. Los padres de Fiona, por su parte, no esperaban que su yerno tuviera un aspecto semejante y, mucho menos, que su hija hubiera cambiado tanto. Todo esto trastoca los planes del rey respecto al futuro del reino. Pero entonces entran en escena la maquiavélica Hada Madrina, su arrogante hijo el Príncipe Encantador y un minino muy especial: el Gato con Botas, experto cazador de ogros.",
  "calificacion":"5",

  "id_categorias": [
	{"id_cat1":"CAT01"},
	{"id_cat2":"CAT02"},
	{"id_cat3":"CAT03"},
	{"id_cat4":"CAT04"} ],

    "actores":[
        {"nombre_actor": "Shrek"},
        {"nombre_actor": "Gato con botas"}
    ],

    "idiomas":[
        {"descricpion": "Espanol"},
        {"descripcion": "Ingles"}
    ],

    "subtitulos":[
        {"idioma": "Español"},
        {"idioma": "Ingles"}
    ],

    "comentarios": [
        {"id_perfil":"PF001" , "nombre_perfil":"valen","nombre_pelicula":"Shrek 2","comentario": "Me encanto, lo tiene todo, excelente trama y muyyy entretenida.", "calificacion_com": 5},
        {"id_perfil":"PF008" , "nombre_perfil":"loveryan","nombre_pelicula":"Shrek 2","comentario": "Pienso que sigue siendo la mejor de toda la saga definitivamente. Pero la animacion de la ultima es superior ", "calificacion_com": 4},
        {"id_perfil":"PF010" , "nombre_perfil":"pepepe10", "nombre_pelicula":"Shrek 2", "comentario": "soy hater ", "calificacion_com": 2}
    ]

}})


```







by. Sebastian Salazar and Valentina Morales :)
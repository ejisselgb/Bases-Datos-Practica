# CREACION DE LA BD 
````json
use Movies_Proyecto_3
````
# CREAMOS LAS COLECCIONES
````json
db.createCollection("Usuarios")
db.createCollection("Peliculas")
db.createCollection("Series")
````
# MIGRAMOS EL MODELO
````json
db.Usuarios.insert([
    {
        "correo":"mapita0121@gmail.com",
        "nombre":"Maria Paula",
        "contrasena_usuario":"hola123",
        "telefono":"3206592746",
        "tarjeta":"5063 0584 1225",
        "ciudad":{
            "nombre":"Bogota",
            "zona":{
                "nombre":"Cundinamarca",
                "pais":{
                    "nombre":"Colombia"
                }
            }
        },
        "perfiles":[
            {
                "id_perfil":1,
                "nombre":"mapa",
                "edad":19,
                "foto":"https://jeje",
                "contrasena_perfil":"d6fb51f5",
                "fecha_nacimiento":new Date("2003,01,21"),
                "restriccion_edad":0,
                "peliculas_favoritas":[ ],
                "peliculas_visualizacion":[],
                "series_favoritas":[ ],
                "series_visualizacion":[]
            },
            {
                "id_perfil":2,
                "nombre":"mama",
                "edad":44,
                "foto":"https://jeje",
                "contrasena_perfil":"f15416df",
                "fecha_nacimiento":new Date("1978,03,06"),
                "restriccion_edad":0,
                "peliculas_favoritas":[ ],
                "peliculas_visualizacion":[],
                "series_favoritas":[ ],
                "series_visualizacion":[]
            }
        ],
        "plan_activo":true,
        "suscripciones":[
            {
                "nombre_plan":"Cortesía",
                "precio":0,
                "duracion":30,
                "fecha_pago":new Date("2022,04,21"),
                "fecha_vencimiento":new Date("2022,05,21")
            }
        ]
        
    },
    {
        "correo":"jfpinzon@yahoo.com",
        "nombre":"Juan Felipe",
        "contrasena_usuario":"q1w2e3",
        "telefono":"3116021379",
        "tarjeta":"8172 3849 7457",
        "ciudad":{
            "nombre":"Soacha",
            "zona":{
                "nombre":"Cundinamarca",
                "pais":{
                    "nombre":"Colombia"
                }
            }
        },
        "perfiles":[
            {
                "id_perfil":1,
                "nombre":"juan",
                "edad":21,
                "foto":"https://jeje",
                "contrasena_perfil":"",
                "fecha_nacimiento":new Date("2000,09,13"),
                "restriccion_edad":7,
                "peliculas_favoritas":[ ],
                "peliculas_visualizacion":[ ],
                "series_favoritas":[ ],
                "series_visualizacion":[ ]
            }
        ],
        "plan_activo":true,
        "suscripciones":[
            {
                "nombre_plan":"Premium",
                "precio":38900,
                "duracion":30,
                "fecha_pago":new Date("2022,05,01"),
                "fecha_vencimiento":new Date("2022,05,31")
            }
        ]
        
    },
    {
        "correo" : "juespitia@hotmail.com",
        "nombre": "Javier",
        "contrasena_usuario": "electrones",
        "telefono": "3126783409",
        "tarjeta": "7812 9370 9099",
        "ciudad":{
            "nombre":"Soacha",
            "zona":{
                "nombre": "Cundinamarca",
                "pais":{
                    "nombre": "Colombia"            
                }
            }
        },
        "perfiles": [
            {
            "id_perfil":1,
            "nombre": "familia",
            "edad": 14,
            "foto": "https://jeje",
            "contrasena_perfil": "igenirn4",
            "fecha_nacimieinto":new Date("2008-02-29"),
            "restricion_edad":0,
            "peliculas_favoritas":[],
            "peliculas_visualizacion":[],
            "series_favoritas":[],
            "series_visualizacion":[]   
            }
        ],
        "plan_activo":true,
        "suscripciones": [
            {
                "nombre_plan":"Estandar",
                "precio": 26900,
                "duracion": 30,
                "fecha_pago": new Date("2022-04-06"),
                "fecha_vencimiento": new Date("2022-05-06")
            }
        ]
    }
])

db.Peliculas.insert([
    {
        "titulo":"Chernobyl la pelicula",
        "duracion":135,
        "sinopsis":"Un bombero lucha por comenzar una nueva historia con su novia y su hijo, pero un accidente en la planta nuclear de Chernobyl lo cambia todo.",
        "ano_estreno":2021,
        "restriccion_edad":13,
        "cartel":"https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABYwzQv4kzMSv3TsZKP6Tz5XAZsp8wxVmcJYrVVKffLf7KtY9QRLLJTgBDoCRGDxq7dVj5yRwkQ6JNjar8ws07_wyHs4RSo6FwdWm.jpg?r=143",
        "archivo_trailer":"https://youtu.be/9DkXQM3eR8I",
        "archivo_pelicula":"https://youtu.be/9DkXQM3eR8I",
        "actores":["Danila Kozlovski","Oksana Akínshina","Filipp Avdeyev","Nikolái Kozak"],
        "categorias":["Drama","Romance","Historico"],
        "idiomas":["Ingles","Español"],
        "calificaciones":[],
        "calificacion_promedio":5
    },
    {
        "titulo":"Emoji la pelicula",
        "duracion":87,
        "sinopsis":"En textópolis, donde se supone que los emojis solo deben mostrar una emoción, las diversas expresiones de Gene se vuelven un problema. Su solición, volverse normal.",
        "ano_estreno":2017,
        "restriccion_edad":7,
        "cartel":"https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABXjSoNU3zoksPuB84pnFh99YvK595sEy-XIq0EY6MCUGZC7KF7giS_MXW55ydCp3LTpVJqvYdPtsvNr7Ez9SIKBYqakGTJnoHWio.jpg?r=01d",
        "archivo_trailer":"https://youtu.be/r8pJt4dK_s4",
        "archivo_pelicula":"https://youtu.be/r8pJt4dK_s4",
        "actores":["T. J. Miller","Anna Faris","James Corden","Patrick Stewart","Maya Rudolph"],
        "categorias":["Infantil","Animacion"],
        "idiomas":["Ingles","Español"],
        "calificaciones":[],
        "calificacion_promedio":5
    },
    {
        "titulo":"Milagros del cielo",
        "duracion":109,
        "sinopsis":"Christy, una madre devota con una hija muy enferma, sufre una crsis de fe mientras intenta desesperadamente salvar a su pequeña y mantener unida a su familia",
        "ano_estreno":2016,
        "restriccion_edad":13,
        "cartel":"https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABfsQeIF0ZeJBQ54CRBKn-_naWAt8tm1EQAXtK8f3sWt8FvE6-1-EE9dEGicfle0CdDcEcQABtor7VDq7h2XXMwo7dTMnJkChOn2G.jpg?r=756",
        "archivo_trailer":"https://youtu.be/3uD-APD8sXU",
        "archivo_pelicula":"https://youtu.be/3uD-APD8sXU",
        "actores":["Jennifer Garner","Kylie Rogers","Martin Henderson","Patrick Stewart"],
        "categorias":["Drama","Infantil"],
        "idiomas":["Ingles","Español"],
        "calificaciones":[],
        "calificacion_promedio":5
    }
])

db.Series.insert([
    {
        "titulo": "The Vampire Diaries",
        "temporadas": 8,
        "sinopsis" : "Pocos meses después de que sus padres fallecieron en un accidente automovilístico, Elena Gilbert y su hermano, Jeremy tratan de mitigar la pena de su pérdida. Elena  se encuentra extasiada con un nuevo estudiante apuesto y misterioso, Stefan, desconociendo que él es un vampiro de varios siglos de edad que está tratando de hacer lo mejor para vivir en paz junto a los humanos. Su hermano, Damon por el contrario encarna, el estereotipo de un vampiro incluyendo el ser violento y brutal.",
        "ano_estreno" : 2009,
        "restriccion_edad": 12,
        "cartel" : "rKNnzmOA1REgxODY5wVe5UEr70w.webp",
        "archivo_trailer": "https://youtu.be/RO3Qp_XdR0w",
        "actores" : ["Ian Somerhalder", "Paul Wesley", "Nina Dobrev"],
        "categorias": ["Terror", "Ficcion", "Drama", "Sobrenatural"],
        "idiomas" : ["ingles", "español", "portugues"],
        "capitulos" :
        [
            {
                "id_cap": 1,
                "titulo":"Friday Night Bites",
                "temporada": 1,
                "descripcion": "Bonnie tiene un mal presentimiento sobre Stefan, así que Elena decide invitar a Stefan y Bonnie a cenar y así pueden conocerse mejor. En la escuela, Tyler quiere humillar a Stefan lanzándole un balón de fútbol difícil, pero Stefan lo agarra fuertemente y se la pasa de vuelta. Stefan termina uniéndose al equipo de fútbol. Durante la cena, Damon y Caroline llegan de repente, y Elena invita a Damon a su casa. Stefan le da a Elena un collar lleno de verbena para protegerse de Damon.",
                "duracion": 43,
                "archivo_capitulo": "https://youtu.be/RO3Qp_XdR0w"
            },
            {
                "id_cap": 2,
                "titulo":"Plan B",
                "temporada": 2,
                "descripcion": "Elena y Stefan despiertan juntos en la cama, mientras la cámara se divide entre ellos y Katherine y Mason, que también están en una cama en otro lugar. Jeremy va a ver a Damon y le ofrece ayudarlo a deshacerse de Katherine. Se ponen en marcha los preparativos para el baile de disfraces en la mansión Lockwood, y Damon y Stefan le piden a Bonnie que los ayude a detener a Mason. Caroline trata de estrechar sus lazos familiares con su madre y más tarde la obliga a olvidar que ella es una vampiresa. Damon tortura a Mason, quien cree que Katherine lo ama. Bonnie tiene una visión de la piedra de luna escondida en un pozo. Stefan la busca, pero pronto descubre que el pozo se llena de verbena y pide auxilio. Caroline y Bonnie llegan a ayudar a Elena para poder rescatar a Stefan y recuperar la piedra de luna. Jenna se encuentra para estar en alianza con Katherine a través de la coacción y se ve obligada a apuñalarse a sí misma, como Katherine se burla de Elena a través de una llamada telefónica. Elena decide romper con Stefan. Damon mata a Mason y le dice a Katherine de su muerte. En su necesidad de otro hombre lobo, Katherine obliga a Matt que enfurezca a Tyler, por lo que la maldición se disparará en Tyler.",
                "duracion": 45,
                "archivo_capitulo": "https://youtu.be/RO3Qp_XdR0w"
            }
        ],
        "calificacion_general": 3,
        "calificacion": []
    },
    {
        "titulo": "Emily en Paris",
        "temporadas": 2,
        "sinopsis" : "Emily Cooper, una joven ejecutiva de marketing de Chicago, es contratada para proporcionar una perspectiva estadounidense en una empresa de marketing en París.",
        "ano_estreno" : 2020,
        "restriccion_edad": 15,
        "cartel" : "AAAABX9JgAba-sJSvKdVr867PgA8fs-vbgdaN2B-01YUvRkhz68plLZ6krFVszKRqwj2K5SDP6LeoKOZ94seUswNWbdTctKJ1SdmFLaO_RDXG2TowJbdLfK_mNj5LCv85BbOU7ta3g.jpg",
        "archivo_trailer": "https://youtu.be/HvYcfmPPows",
        "actores" : ["Lily Collins", "Ashley Park", "Philippine Leroy Beaulieu", "Lucas Bravo"],
        "categorias": ["Comedia", "Romance"],
        "idiomas" : ["ingles", "español", "frances"],
        "capitulos" :
        [
            {
                "id_cap": 1,
                "titulo":"Masculin Féminin",
                "temporada": 1,
                "descripcion": "Emily se mueve por los entresijos del amor francés cuando su entusiasmo en una fiesta de trabajo impresiona a un cliente ligón... y casado.",
                "duracion": 26,
                "archivo_capitulo": "https://youtu.be/HvYcfmPPows"
            },
            {
                "id_cap": 2,
                "titulo":"Ringarde",
                "temporada": 1,
                "descripcion": "Una reunión con una mítica casa de alta costura se viene abajo por culpa de una horterada y Emily halla consuelo en la compañía de un profesor que parece encantador.",
                "duracion": 29,
                "archivo_capitulo": "https://youtu.be/HvYcfmPPows"
            },
            {
                "id_cap": 3,
                "titulo":"Cancel Couture",
                "temporada": 1,
                "descripcion": "El trabajo de Emily pende de un hilo por la debacle de la Fashion Week, así que piensa en un nuevo plan mientras se prepara para despedirse de un buen amigo.",
                "duracion": 34,
                "archivo_capitulo": "https://youtu.be/HvYcfmPPows"
            }
        ],
        "calificacion_general": 4,
        "calificacion": []
    },
    {
        "titulo": "La casa de papel",
        "temporadas": 5,
        "sinopsis" : "Un misterioso hombre conocido como «el Profesor» ha pasado toda su vida planeando el mayor de los atracos de la historia: entrar en la Fábrica Nacional de Moneda y Timbre e imprimir 2400 millones de euros. Para llevar a cabo este ambicioso plan, el Profesor recluta a un equipo de ocho personas con ciertas habilidades y que no tienen nada que perder.",
        "ano_estreno" : 2017,
        "restriccion_edad": 18,
        "cartel" : "AAAABXtKAjjGokOpXGk_79FyZxd7JxAOqcL1-nAms3XDqz8QNZi9LrEYCgTpCSlAYGOB9kaXozzsZlVLJ4aK4PBP2ANRM5uG2TUcTZSkTIVJzD8tUFRR7vcNo0JFajf4aC8TRbOjyA.jpg",
        "archivo_trailer": "https://youtu.be/3y-6iaveY6c",
        "actores" : ["Álvaro Morte", "Itziar Ituño", "Úrsula Corberó"],
        "categorias": ["Comedia", "Drama", "Suspenso", "Crimen"],
        "idiomas" : ["ingles", "español"],
        "capitulos" :
        [
            {
                "id_cap": 1,
                "titulo":"A Family Tradition",
                "temporada": 5,
                "descripcion": "Con varias vidas pendientes de un hilo y la economía de España en juego, el Profesor y Tamayo se ven las caras en un último enfrentamiento.",
                "duracion": 76,
                "archivo_capitulo": "https://youtu.be/3y-6iaveY6c"
            }
        ],
        "calificacion_general": 5,
        "calificacion": []
    }
])

db.Usuarios.update({"nombre":"Maria Paula"},{ $set:{"perfiles.0.peliculas_favoritas":["Chernobyl la pelicula"]}})
db.Usuarios.update({"nombre":"Maria Paula"},{ $set:{"perfiles.1.peliculas_favoritas":["Chernobyl la pelicula","Milagros del cielo"]}})
db.Usuarios.update({"nombre":"Juan Felipe"},{ $set:{"perfiles.0.peliculas_favoritas":["Milagros del cielo"]}})
db.Usuarios.update({"nombre":"Javier"},{ $set:{"perfiles.0.peliculas_favoritas":["Emoji la pelicula"]}})

db.Usuarios.update({"nombre":"Maria Paula"},{ $set:{"perfiles.0.peliculas_visualizacion":[
    {"nombre":"Chernobyl la pelicula","tiempo":25},
    {"nombre":"Milagros del cielo","tiempo":50}]}})
db.Usuarios.update({"nombre":"Maria Paula"},{ $set:{"perfiles.1.peliculas_visualizacion":[
    {"nombre":"Emoji la pelicula","tiempo":100},
    {"nombre":"Chernobyl la pelicula","tiempo":15}]}})
db.Usuarios.update({"nombre":"Juan Felipe"},{ $set:{"perfiles.0.peliculas_visualizacion":[
    {"nombre":"Milagros del cielo","tiempo":43},
    {"nombre":"Emoji la pelicula","tiempo":50}]}})
db.Usuarios.update({"nombre":"Javier"},{ $set:{"perfiles.0.peliculas_visualizacion":[
    {"nombre":"Chernobyl la pelicula","tiempo":26},
    {"nombre":"Milagros del cielo","tiempo":33}]}})

db.Usuarios.update({"nombre":"Maria Paula"},{ $set:{"perfiles.0.series_favoritas":["The Vampire Diaries","Emily en Paris"]}})
db.Usuarios.update({"nombre":"Maria Paula"},{ $set:{"perfiles.1.series_favoritas":["Emily en Paris"]}})
db.Usuarios.update({"nombre":"Juan Felipe"},{ $set:{"perfiles.0.series_favoritas":["Milagros del cielo","La casa de papel"]}})
db.Usuarios.update({"nombre":"Javier"},{ $set:{"perfiles.0.series_favoritas":["Emily en Paris","La casa de papel"]}})

db.Usuarios.update({"nombre":"Maria Paula"},{ $set:{"perfiles.0.series_visualizacion":[{"nombre": "The Vampire Diaries","temporada": 1,"capitulo":1,"tiempo":30},{"nombre": "Emily en Paris","temporada": 1,"capitulo":2,"tiempo":25}]}})
db.Usuarios.update({"nombre":"Maria Paula"},{ $set:{"perfiles.1.series_visualizacion":[{"nombre": "Emily en Paris","temporada": 1,"capitulo":1,"tiempo":25},{"nombre": "Emily en Paris","temporada": 1,"capitulo":2,"tiempo":10}]}})
db.Usuarios.update({"nombre":"Juan Felipe"},{ $set:{"perfiles.0.series_visualizacion":[{"nombre": "La casa de papel","temporada": 1,"capitulo":1,"tiempo":8},{"nombre": "La casa de papel","temporada": 1,"capitulo":2,"tiempo":32},{}]}})
db.Usuarios.update({"nombre":"Javier"},{ $set:{"perfiles.0.series_visualizacion":[{"nombre": "The Vampire Diaries","temporada": 1,"capitulo":1,"tiempo":9}]}})

db.Series.update(
    {
        "titulo": "La casa de papel"
    }, 
    {
        $set : 
        {
            "calificacion": 
            [
                {
                    "id_usuario": "629bd9ffb9ae5fed1cf7b361",
                    "id_perfil": 1,
                    "puntaje": 5,
                    "comentario": "El mejor final de todos"
                },
                {
                    "id_usuario": "629bd9ffb9ae5fed1cf7b362",
                    "id_perfil": 1,
                    "puntaje": 5,
                    "comentario": "Mi serie favorita con un final épico!!"
                }
            ]
        }
    }
) 
db.Series.update(
    {
        "titulo": "Emily en Paris"
    }, 
    {
        $set : 
        {
            "calificacion": 
            [
                {
                    "id_usuario": "629bd9ffb9ae5fed1cf7b361",
                    "id_perfil": 2,
                    "puntaje": 5,
                    "comentario": "La serie perfecta para pasar el tiempo"
                },
                {
                    "id_usuario":"629bd9ffb9ae5fed1cf7b362",
                    "id_perfil": 1,
                    "puntaje": 3,
                    "comentario": "Podría ser mejor"
                },
                {
                    "id_usuario":"629bd9ffb9ae5fed1cf7b363",
                    "id_perfil": 1,
                    "puntaje": 4,
                    "comentario": "Me gusta, pero solo cuando estoy aburrida"
                }
            ]
        }
    }
)
db.Series.update(
    {
        "titulo": "The Vampire Diaries"
    }, 
    {
        $set : 
        {
            "calificacion": 
            [
                {
                    "id_usuario": "629bd9ffb9ae5fed1cf7b363",
                    "id_perfil": 1,
                    "puntaje": 3,
                    "comentario": "Que serie tan aburrida"
                },
                {
                    "id_usuario": "629bd9ffb9ae5fed1cf7b362",
                    "id_perfil": 1,
                    "puntaje": 4,
                    "comentario": "Es buena, pero se vuelve monotona"
                }
            ]
        }
    }
)

db.Peliculas.update({"titulo":"Chernobyl la pelicula"},{$set:
    {
        "calificaciones":[
            {
                "id_usuario":"629bd9ffb9ae5fed1cf7b362",
                "id_prefil":1,
                "puntuacion":4,
                "comentario":"Ta buena"
            }
        ],
        "calificacion_promedio":4
    }
})
db.Peliculas.update({"titulo":"Emoji la pelicula"},{$set:
    {
        "calificaciones":[
            {
                "id_usuario":"629bd9ffb9ae5fed1cf7b361",
                "id_perfil":2,
                "puntuacion":2,
                "comentario":"Igual de mala que mapa"
            },
            {
                "id_usuario":"629bd9ffb9ae5fed1cf7b361",
                "id_perfil":1,
                "puntuacion":2,
                "comentario":"Malisima como Felipe"
            }
        ],
        "calificacion_promedio":2
    }
})
db.Peliculas.update({"titulo":"Milagros del cielo"},{$set:
    {
        "calificaciones":[
            {
                "id_usuario":"629bd9ffb9ae5fed1cf7b363",
                "id_prefil":1,
                "puntuacion":5,
                "comentario":"Excelente pelicula, muy buenas físicas"
            }
        ],
        "calificacion_promedio":5
    }
})
````

# CONSULTAS

## CONSULTA 1
````json
db.Peliculas.find({ano_estreno:{$gt:2017}}) //en caso de ser estrictamente despues de 2017

db.Peliculas.find({ano_estreno:{$gte:2017}})//en caso de incluir el 2017
````
## CONSULTA 2
````json
db.Peliculas.find({"titulo":"Emoji la pelicula"}).forEach(function(docComparar){

    const actoresComparar = docComparar.actores
    const tituloComparar = docComparar.titulo

    for(var i = 0; i<actoresComparar.length;i++){

        var actor = actoresComparar[i]

        var message = actor+" has worked in the movies: "+tituloComparar

        db.Peliculas.find().forEach(function(doc){

            var titulo = doc.titulo
            var actores = doc.actores

            if(titulo === tituloComparar){
                
            }
            else{
                for(var j = 0; j<actores.length; j++){
                    if(actor === actores[j]){
                        message += ", "+titulo
                    }
                }
            }
    
        })

        print(message) //se cambió el console.log por incompatibilidad en cmd
    
    }

})
````
## CONSULTA 3
````json
db.Peliculas.find({"calificacion_promedio":{$lte:3}},{"calificaciones.comentario":1,"_id":0}) //en caso de hablar de la puntuación general

db.Peliculas.find({"calificaciones.puntuacion":{$lte:3}},{"calificaciones.comentario":1,"_id":0}) //en caso que haya un comentario con puntuación inferior o igual a este
````
## CONSULTA 4
````json
db.Peliculas.find({"calificacion_promedio": {$gt:3}}, {"calificaciones.comentario": 1, "_id":0})//en caso de hablar de la puntuación general

db.Peliculas.find({"calificaciones.puntuacion": {$gt:3}}, {"calificaciones.comentario": 1, "_id":0})//en caso que haya un comentario con puntuación inferior o igual a este
````
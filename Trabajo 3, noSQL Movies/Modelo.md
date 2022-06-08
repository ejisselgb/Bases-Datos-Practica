# Modelo no relacional 

Para efectos del proyecto, se agruparon los datos en tres colecciones

## Usuarios

````json
{
    "correo":"string",
    "nombre":"string",
    "contrasena_usuario":"string",
    "telefono":"string",
    "tarjeta":"string",
    "ciudad":{
        "nombre":"string",
        "zona":{
            "nombre":"string",
            "pais":{
                "nombre":"string"
            }
        }
    },
    "perfiles":[
        {
            "id_perfil":int,
            "nombre":"string",
            "edad":int,
            "foto":"string",
            "contrasena_perfil":"string",
            "fecha_nacimiento":Date,
            "restriccion_edad":int,
            "peliculas_favoritas":[ "string" , "string" ],
            "peliculas_visualizacion":[ 
                {
                    "nombre":"string",
                    "tiempo":int
                }
            ],
            "series_favoritas":[ "string" , "string" ],
            "series_visualizacion":[ 
                {
                    "nombre": "string",
                    "temporada": int,
                    "capitulo":int,
                    "tiempo":int
                }
            ]
        }
    ],
    "plan_activo":bool,
    "suscripciones":[
        {
            "nombre_plan":"string",
            "precio":int,
            "duracion":int,
            "fecha_pago":date,
            "fecha_vencimiento":date
        }
    ]
    
}
````

## Peliculas

````json
 {
    "titulo":"string",
    "duracion":int,
    "sinopsis":"string",
    "ano_estreno":int,
    "restriccion_edad":int,
    "cartel":"string",
    "archivo_trailer":"string",
    "archivo_pelicula":"string",
    "actores":["string","string","string","string"],
    "categorias":["string","string","string"],
    "idiomas":["string","string"],
    "calificaciones":[
        {
            "id_usuario": "Object_id",
            "id_perfil": int,
            "puntaje": int,
            "comentario": "string"
        }
    ],
    "calificacion_promedio":int
}
````

## Series

````json
{
    "titulo": "string",
    "temporadas": int,
    "sinopsis" : "string",
    "ano_estreno" : int,
    "restriccion_edad": int,
    "cartel" : "string",
    "archivo_trailer": "string",
    "actores" : ["string", "string", "string"],
    "categorias": ["string", "string", "string", "string"],
    "idiomas" : ["string", "string", "string"],
    "capitulos" :
    [
        {
            "id_cap": int,
            "titulo":"string",
            "temporada": int,
            "descripcion": "string",
            "duracion": int,
            "archivo_capitulo": "string"
        },
        {
            "id_cap": int,
            "titulo":"string",
            "temporada": int,
            "descripcion": "string",
            "duracion": int,
            "archivo_capitulo": "string"
        }
    ],
    "calificacion_general": int,
    "calificacion": [
        {
            "id_usuario": "Object_id",
            "id_perfil": int,
            "puntaje": int,
            "comentario": "string"
        }
    ]
}
````
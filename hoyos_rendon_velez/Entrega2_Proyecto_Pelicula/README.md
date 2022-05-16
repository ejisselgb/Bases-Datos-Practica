# Rutas de endpoints para la api
- ###### Rutas para observar informacion general
		/api/allUsers
	Sirve para observar la información de todos los usuarios de la aplicación (email,contraseña,tarjeta,teléfono).
```		
		/api/Perfil
```
Este sirve para observar info general de los perfiles existentes en la base de datos.
------------
- ##### Traer la información de un usuario por medio del nombre de usuario y contraseña:  (Consulta tipo get pero senencia mediante json)
		
		/api/user/info
		
###### ejemplo:

```
Se envia email y contraseña

               {"email": "velez_pro12@hotmail.com",
                "contrasena":"rayomcqueen01"}
```

###### Se obtiene la siguiente informacion
```
           [ {"nombre_perfil": "McQueen",
        "foto_perfil": "fotofachera3.jpg",
        "edad": 21,
        "nombre_pais": "Colombia",
        "nombre_zona": "Antioquia",
        "nombre_ciudad": "Medellin"
    },
    {
        "nombre_perfil": "Juan",
        "foto_perfil": "fotofachera5.jpg",
        "edad": 30,
        "nombre_pais": "Venezuela",
        "nombre_zona": "Monagas",
        "nombre_ciudad": "Maturin"}]
```
------------


- ##### Traer películas o series según coincida con la o las categorías.
Muestra todas las peliculas o series que tengan la categoria dicha en parametro
		
		/api/peliculas_series/categoria/:categoria
		
###### estas son las categorias:
- Terror
- Romance
- Comedia
- Accion
- Aventura
- Drama
- Fantasia
- Animacion
- Documental
- Clasicas
- Investigacion
- Suspenso
- Ciencia Ficcion
	- *No es  necesario escribir las categorias tal cual, es decir, ignora mayúsculas y minúsculas*
------------


- ##### Traer las películas que concidan con la palabra que va insertando en el buscador. Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa.
Se hace mediente parametros en el buscador
```
/api/peliculas/busqueda/:termino
```
------------

- ##### Traer toda la información de una película cuando esta se selecciona como sinopsis, poster, enlace de trailer (link de youtube).
***Lo realizamos mediante la selección de un id***
```
/api/pelicula/:id
```
###### Ids y películas:
- ID: 1,    Pelicula: Rapidos y furiosos.
- ID: 2,   Pelicula: Shrek.
- ID: 3,    Pelicula: El viaje de chihiro.
- ID: 4,   Pelicula: El aro.
- ID: 5,   Pelicula: Dr strange: Multiverso de locura.
- ID: 6,   Pelicula: Cars.
- ID: 7,   Pelicula: Ghost in the Shell: SAC_2045.
- ID: 8,   Pelicula: Interestelar.

------------


- ##### Traer toda la información de una serie cuando esta se selecciona como sinopsis, cantidad capítulos, poster, enlace de trailer (link de youtube).

		/api/serie_capitulo/:id
###### Ids y series:
- ID: 1,    Pelicula: Palpito.
- ID: 2,   Pelicula: Gambito de dama.
- ID: 3,    Pelicula: Kakegurui.
- ID: 4,   Pelicula: You.
- ID: 5,   Pelicula: Viva el Rey Julien.
- ID: 6,   Pelicula: Cuerpo Humano.

------------
- ##### Traer la información de las películas favoritas de un usuario (nombre película, poster)
		
		/api/peliculas_favoritas/:nombre_perfil
	- Fue pensado para obtenerlo de cada perfil (así como netflix, que no mira esto por cuenta sino por el perfil del usuario).

------------
- ##### Permitir al usuario editar la información de su perfil como por ejemplo modificar la tarjeta vinculada, contraseña, teléfono, correo. (**TIPO POST**)
		/api/user/update
	Ejemplo:
```json
    {"email":"veronica@gmail.com",
    "contrasena":"santi16900",
    "newEmail":"veronica127@gmail.com",
    "newContrasena":"vero69001",
    "newTarjeta":"678954321999084",
    "newTelefono":"3178990766"}
```
------------
se obtiene:
```
json
    {
        "message": "update data user veronica127@gmail.com",
        "rowCount": 1
    }

```

------------


- ##### Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan (TIPO POST)
		
		/api/user/suscripciones/renovar
		
	Para esto se requiere usar el e-mail y la contraseña para poder actualizar (renovar) la suscripcion
```
		{"email":"veronica@gmail.com",
		"contrasena":"vero69001",
		"nuevaFecha":"2022-05-17T05:00:00.000Z"}
```
Saldrá
```
		 "message": "update fecha de facturacion de este usuario veronica@gmail.com"
```
------------
- ##### Actualizar toda la info de una película o serie (POST)
		
		/api/update/peliculas_series
		

Se envia el tipo, si es serie o película, luego se llenan los demás campos correspondientes
- ####### Ejemplo:
Para el caso en el que se requiera cambiar la info de una serie
```

                {"tipo": "serie",
                "id":"1",
                "nombre": "Palpito",
                "trailer":"https://www.youtube.com/watch?v=YITf1X6hNls&ab_channel=NetflixLatinoam%C3%A9rica",
                "poster":"https://pics.filmaffinity.com/P_lpito_Serie_de_TV-187571288-large.jpg",
                "restriccion":"18",
                "fecha":"2022-04-10T05:00:00.000Z",
                "sinopsis":"La esposa de Simón es asesinada para quitarle el corazón y trasplantarlo a la esposa de un poderoso millonario",
                "tiempo":""}
```
Para el caso de película:
```

                {"tipo": "pelicula",
                "id":"2",
                "nombre": "Shrek",
                "trailer":"https://www.youtube.com/watch?v=CwXOrWvPBPk&ab_channel=MovieclipsClassicTrailers",
                "poster":"https://images-na.ssl-images-amazon.com/images/S/pv-target-images/6d0b08a81e519ca8b33e518b80891097fed2b4b96f0e9453a9991f846bba133d._RI_V_TTW_.jpg",
                "restriccion":"10",
                "fecha":"2001-05-22T05:00:00.000Z",
                "sinopsis":"Érase una vez un ogro verde llamado Shrek que vivía en un pantano muy lejano, feliz con sus baños de barro y su particular concepto de la higiene. Pero un buen día, su preciada soledad se ve interrumpida por la invasión de un grupo de molestos personajes salidos de cuentos clásicos",
                "tiempo":"01:30:00" }


           
```

------------
- ##### Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma(get)
		
		/api/getNumeroContenido
		

------------

- ##### Obtener la información de todas las películas que aún no han sido calificadas o valoradas
		
		/api/getPeliculas/no_calificadas
		


------------
- ##### Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma (Con body)
		
		/api/promedio_suscripciones/Mes
		
###### ejemplo:
```
                   { "month": "10",
                    "year":"2023"}
```
###### Result postman
```
    	{
        "promedio_suscripciones": 36500
   		 }
```


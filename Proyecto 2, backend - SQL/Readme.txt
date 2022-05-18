Enpoints creados:
-/getUsuario, obtener la informacion de un usuario entregando el nombre de usuario y la contraseña (una especie de login).

-/categorias/:categoria, muestra la multimedia que se encuentra relacionada con la categoría especificada en el endpoint.

-/buscar/:titulo, muestra la multimedia que tiene un titulo similar al especificado en el endpoint.

-/pelicula/click/:id, obtiene la informacion de la pelicula a la cual se le esta dando click, es decir, la especificada en el endpoint.

-/serie/click/:id, obtiene la informacion de la serie a la cual se le esta dando click, es decir, la especificada en el endpoint.

-/favoritos/:id, obtiene la informacion de las series y peliculas favoritas del usuario especificado en el endpoint.

-/editarperfil/:id/idioma
-/editar/perfil/:id/nombre
-/editar/perfil/:id/foto
-/editar/perfil/:id/preferencias
-/editar/perfil/:id/edad
-/editar/perfil/:id/pin
Estas ultimas conforman conjutno de las endpoint necesarias para editar la informacion del usuario.

-/editar/suscripcion/:id/facturacion, permite editar la fecha de facturacion del usuario.

-/editar/pelicula/:id/titulo
-/editar/pelicula/:id/titulo
-/editar/pelicula/:id/restriccion
-/editar/pelicula/:id/duracion
-/editar/pelicula/:id/fechaEstreno
-/editar/pelicula/:id/trailer
-/editar/pelicula/:id/descripcion
-/editar/pelicula/:id/link
-/editar/serie/:id/titulo
-/editar/serie/:id/poster
-/editar/serie/:id/restriccion
-/editar/serie/:id/trailer
-/editar/serie/:id/descripcion
-/editar/serie/:id/fechaEstreno
-/editar/serie/:id/numeroTemporadas
Estas endpoint sirven para editar la informacion de una pelicula o serie.

-/valorPromedio, esta enpoint permite obtener el valor promedio de las ganancias del presente mes.

-/cantidad/peliculas
-/cantidad/series
/cantidad/peliculasYseries
Estas tres sirven para calcular la cantidad de peliculas y series que contiene nuestra base de datos.

-/peliculas/noCalificadas
-/series/noCalificadas
Ultimas endpoint que nos brindan las peliculas o series que no han sido calificadas al momento de la consulta.
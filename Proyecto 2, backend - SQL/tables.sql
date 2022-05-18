CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."ZONAS"(id_zona serial PRIMARY KEY,
								   id_pais serial,
								   nombre_zona varchar(20) NOT NULL UNIQUE,
								   CONSTRAINT id_pais FOREIGN KEY(id_pais) REFERENCES "Grupo8 - T2"."PAISES"(id_pais)
								   );
								   
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."CIUDADES"(id_ciudad serial PRIMARY KEY,
									  id_zona serial,
									  nombre_ciudad varchar(20) NOT NULL UNIQUE,
									  CONSTRAINT id_zona FOREIGN KEY(id_zona) REFERENCES "Grupo8 - T2"."ZONAS"(id_zona)
									  );
									  
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."IDIOMAS"(id_idioma serial PRIMARY KEY,
									 nombre_idioma varchar(20) NOT NULL UNIQUE
									 );
									  
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."USUARIOS"(id_usuario serial PRIMARY KEY,
									  id_ciudad serial,
									  correo varchar(30)UNIQUE NOT NULL, 
									  telefono varchar(10)UNIQUE NOT NULL,
									  contrasenia varchar(12) NOT NULL,
									  nombre_usuario varchar(40) NOT NULL UNIQUE,
									  numero_tarjeta varchar(16) NOT NULL UNIQUE,
									  CONSTRAINT id_ciudad FOREIGN KEY(id_ciudad) REFERENCES "Grupo8 - T2"."CIUDADES"(id_ciudad)
									  );
									  
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."PERFILES"(id_perfil serial PRIMARY KEY,
									  id_usuario serial,
									  idioma_preferencia varchar(20) NOT NULL,
									  nombre_perfil varchar(10) NOT NULL,
									  foto_perfil varchar(50),
									  preferencias varchar(100),
									  edad int2 CHECK (edad>0),
									  pin varchar(4),
									  CONSTRAINT id_usuario FOREIGN KEY(id_usuario) REFERENCES "Grupo8 - T2"."USUARIOS" (id_usuario)
									  );
									  
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."PLANES"(id_plan serial PRIMARY KEY, 
									nombre_plan varchar(40) NOT NULL UNIQUE, 
									descripcion varchar(250) NOT NULL UNIQUE,
									valor int4 NOT NULL);
									
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."SUSCRIPCIONES"(id_suscripcion serial PRIMARY KEY, 
										   id_usuario serial,
										   id_plan serial, 
										   fecha_compra date NOT NULL, 
										   fecha_vencimiento date NOT NULL, 
										   fecha_facturacion date,
										   activa boolean NOT NULL, 
										   CONSTRAINT id_usuario FOREIGN KEY(id_usuario) REFERENCES "Grupo8 - T2"."USUARIOS"(id_usuario), 
										   CONSTRAINT id_plan FOREIGN KEY(id_plan) REFERENCES "Grupo8 - T2"."PLANES"(id_plan)
										   );
										   
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."PELICULAS"(id_pelicula serial PRIMARY KEY, 
									   titulo varchar(60) NOT NULL UNIQUE, 
									   poster varchar(300) NOT NULL UNIQUE, 
									   restriccion_edad int2 NOT NULL, 
									   duracion time NOT NULL, 
									   fecha_estreno date NOT NULL, 
									   trailer varchar(300) NOT NULL UNIQUE, 
									   descripcion varchar(250) NOT NULL UNIQUE,
									   link_pelicula varchar(300) NOT NULL UNIQUE
									   );
									   
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."SERIES"(id_serie serial PRIMARY KEY, 
									titulo varchar(60) NOT NULL UNIQUE, 
									poster varchar(300) NOT NULL UNIQUE, 
									restriccion_edad int2 NOT NULL,
									trailer varchar(300) NOT NULL UNIQUE,
									descripcion varchar(250) NOT NULL UNIQUE,
									fecha_estreno date NOT NULL,
									numero_temporadas int2 NOT NULL
								    );

CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."TEMPORADAS_SERIES"(id_temporada serial PRIMARY KEY, 
											   id_serie serial,
											   numero_temporada int2 NOT NULL,
											   cantidad_capitulos int2 NOT NULL,
											   trailer varchar(300) NOT NULL UNIQUE,
											   nombre_temporada varchar(40) NOT NULL,
											   CONSTRAINT id_serie FOREIGN KEY(id_serie) REFERENCES "Grupo8 - T2"."SERIES"(id_serie)
											   );
									
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."CAPITULOS_SERIES"(id_capitulo serial PRIMARY KEY,
											  id_temporada serial,
											  nombre_capitulo varchar(60) NOT NULL UNIQUE,
											  numero_capitulo int2 NOT NULL,
											  duracion time NOT NULL,
											  descripcion_capitulo varchar(250) NOT NULL UNIQUE,
											  fecha_estreno date NOT NULL,
											  link_capitulo varchar(300) NOT NULL,
											  CONSTRAINT id_temporada FOREIGN KEY(id_temporada) REFERENCES "Grupo8 - T2"."TEMPORADAS_SERIES"(id_temporada)
											  );
											  			  
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."CATEGORIAS"(id_categoria serial PRIMARY KEY,
									   	nombre_categoria varchar(30) NOT NULL UNIQUE
									    );
										
										
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."PELICULAS_CATEGORIAS"(id_pelicula serial,
												  id_categoria serial,
												  CONSTRAINT id_pelicula FOREIGN KEY(id_pelicula) REFERENCES "Grupo8 - T2"."PELICULAS"(id_pelicula),
												  CONSTRAINT id_categoria FOREIGN KEY(id_categoria) REFERENCES "Grupo8 - T2"."CATEGORIAS"(id_categoria)
												  );
												  
												  
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."SERIES_CATEGORIAS"(id_serie serial,
											   id_categoria serial,
											   CONSTRAINT id_serie FOREIGN KEY(id_serie) REFERENCES "Grupo8 - T2"."SERIES" (id_Serie),
											   CONSTRAINT id_categoria FOREIGN KEY(id_categoria) REFERENCES "Grupo8 - T2"."CATEGORIAS"(id_categoria) 
											   );
											   
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."PELICULAS_FAVORITAS"(id_perfil serial,
												 id_pelicula serial,
												 CONSTRAINT id_perfil FOREIGN KEY(id_perfil) REFERENCES "Grupo8 - T2"."PERFILES"(id_perfil),
												 CONSTRAINT id_pelicula FOREIGN KEY(id_pelicula) REFERENCES "Grupo8 - T2"."PELICULAS"(id_pelicula)
												 );
												
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."SERIES_FAVORITAS"(id_perfil serial,
											  id_serie serial,
											  CONSTRAINT id_perfil FOREIGN KEY(id_perfil) REFERENCES "Grupo8 - T2"."PERFILES"(id_perfil),
											  CONSTRAINT id_serie FOREIGN KEY(id_serie) REFERENCES "Grupo8 - T2"."SERIES"(id_serie)
											  );
												 
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."ACTORES"(id_actor serial PRIMARY KEY,
									 nombre_actor varchar(60) NOT NULL
									 );
									 
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."ACTORES_PELICULAS"(id_actor serial,
											   id_pelicula serial,
											   CONSTRAINT id_actor FOREIGN KEY(id_actor) REFERENCES "Grupo8 - T2"."ACTORES"(id_actor),
											   CONSTRAINT id_pelicula FOREIGN KEY(id_pelicula) REFERENCES "Grupo8 - T2"."PELICULAS"(id_pelicula) 
											   );
											   
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."ACTORES_SERIES"(id_actor serial,
										    id_serie serial,
											CONSTRAINT id_actor FOREIGN KEY(id_actor) REFERENCES "Grupo8 - T2"."ACTORES"(id_actor),
											CONSTRAINT id_serie FOREIGN KEY(id_serie) REFERENCES "Grupo8 - T2"."SERIES" (id_Serie)
										    );
									 
									 
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."IDIOMAS_PELICULAS"(id_pelicula serial,
											   id_idioma serial,
											   CONSTRAINT id_pelicula FOREIGN KEY(id_pelicula) REFERENCES "Grupo8 - T2"."PELICULAS"(id_pelicula),
											   CONSTRAINT id_idioma FOREIGN KEY(id_idioma) REFERENCES "Grupo8 - T2"."IDIOMAS"(id_idioma)
											   );
											   
											   
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."IDIOMAS_SERIES"(id_serie serial,
										    id_idioma serial,
											CONSTRAINT id_serie FOREIGN KEY(id_serie) REFERENCES "Grupo8 - T2"."SERIES" (id_Serie),
											CONSTRAINT id_idioma FOREIGN KEY(id_idioma) REFERENCES "Grupo8 - T2"."IDIOMAS"(id_idioma)
										    );
																			
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."TIEMPO_VISUALIZACION_PELICULAS"(id_perfil serial,
												id_pelicula serial,
												tiempo_visto time,
												CONSTRAINT id_perfil FOREIGN KEY(id_perfil) REFERENCES "Grupo8 - T2"."PERFILES"(id_perfil),
												CONSTRAINT id_pelicula FOREIGN KEY(id_pelicula) REFERENCES "Grupo8 - T2"."PELICULAS"(id_pelicula)
												);

CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."TIEMPO_VISUALIZACION_SERIES"(id_perfil serial,
												id_capitulo serial,
												tiempo_visto time,
												CONSTRAINT id_perfil FOREIGN KEY(id_perfil) REFERENCES "Grupo8 - T2"."PERFILES"(id_perfil),
												CONSTRAINT id_capitulo FOREIGN KEY(id_capitulo) REFERENCES "Grupo8 - T2"."CAPITULOS_SERIES"(id_capitulo)
												);
														 
CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."CALIFICACION_PELICULAS"(id_calificacion_pelicula serial PRIMARY KEY,
												    id_pelicula serial,
													id_perfil serial,
													comentario varchar(250),
													calificacion int2 NOT NULL CHECK (calificacion <=5 AND calificacion >=0),
													CONSTRAINT id_pelicula FOREIGN KEY(id_pelicula) REFERENCES "Grupo8 - T2"."PELICULAS"(id_pelicula),
													CONSTRAINT id_perfil FOREIGN KEY(id_perfil) REFERENCES "Grupo8 - T2"."PERFILES"(id_perfil)
												    );

CREATE TABLE IF NOT EXISTS "Grupo8 - T2"."CALIFICACION_SERIES"(id_calificacion_serie serial PRIMARY KEY,
												 id_serie serial,
												 id_perfil serial,
												 comentario varchar(250),
												 calificacion int2 NOT NULL CHECK (calificacion <=5 AND calificacion >=0),
												 CONSTRAINT id_serie FOREIGN KEY(id_serie) REFERENCES "Grupo8 - T2"."SERIES"(id_serie),
												 CONSTRAINT id_perfil FOREIGN KEY(id_perfil) REFERENCES "Grupo8 - T2"."PERFILES"(id_perfil)
												 );
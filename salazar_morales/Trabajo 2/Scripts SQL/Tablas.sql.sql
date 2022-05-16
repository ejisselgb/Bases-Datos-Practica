CREATE TABLE "Grupo 7 - T2"."USUARIOS" (
    id_usuario VARCHAR (7) UNIQUE,
    correo VARCHAR (35) UNIQUE,
    contrasena VARCHAR (20),
    registro_login VARCHAR (300),
    tarjeta VARCHAR (10),
    telefono VARCHAR (10),
    CONSTRAINT pk_usuario PRIMARY KEY (id_usuario)
    
);

CREATE TABLE "Grupo 7 - T2"."PAIS" (
    id_pais VARCHAR (7) UNIQUE,
    descripcion_pais VARCHAR (20),
    CONSTRAINT pk_pais PRIMARY KEY (id_pais)
);

CREATE TABLE "Grupo 7 - T2"."ZONA" (
    id_zona VARCHAR (7) UNIQUE,
	id_pais VARCHAR (7) UNIQUE,
    descripcion_zona VARCHAR (20),
    CONSTRAINT pk_id_zona PRIMARY KEY (id_zona),
    CONSTRAINT fk_id_pais FOREIGN KEY (id_pais) REFERENCES "Grupo 7 - T2"."PAIS" (id_pais)
);

CREATE TABLE "Grupo 7 - T2"."CIUDAD" (
    id_ciudad VARCHAR (7) UNIQUE,
    id_zona VARCHAR (7) UNIQUE,
    descripcion_ciudad VARCHAR (20),
    CONSTRAINT pk_id_ciudad PRIMARY KEY (id_ciudad),
    CONSTRAINT fk_id_zona FOREIGN KEY (id_zona) REFERENCES "Grupo 7 - T2"."ZONA" (id_zona)  
);

CREATE TABLE "Grupo 7 - T2"."IDIOMAS" (
    id_idioma VARCHAR (7) UNIQUE,
    descripcion_idioma VARCHAR (10),
    CONSTRAINT pk_id_idioma PRIMARY KEY (id_idioma)
);

CREATE TABLE "Grupo 7 - T2"."IDIOMAS_PELICULAS" (
    id_idioma_pelicula VARCHAR (7) UNIQUE,
    id_idioma VARCHAR (7) UNIQUE,
    id_pelicula VARCHAR (7) UNIQUE,
    CONSTRAINT pk_idioma_pelicula PRIMARY KEY (id_idioma_pelicula),
    CONSTRAINT fk_id_idioma FOREIGN KEY (id_idioma) REFERENCES "Grupo 7 - T2"."IDIOMAS" (id_idioma),
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 7 - T2"."PELICULAS" (id_pelicula)
);

CREATE TABLE "Grupo 7 - T2"."IDIOMAS_SERIES" (
    id_idioma_serie VARCHAR (7) UNIQUE,
    id_idioma VARCHAR (7) UNIQUE,
    id_serie VARCHAR (7) UNIQUE,
    CONSTRAINT pk_idioma_serie PRIMARY KEY (id_idioma_serie),
    CONSTRAINT fk_id_idioma FOREIGN KEY (id_idioma) REFERENCES "Grupo 7 - T2"."IDIOMAS" (id_idioma),
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES "Grupo 7 - T2"."SERIES" (id_serie)
);

CREATE TABLE "Grupo 7 - T2"."ACTORES_PELICULAS" (
    id_actor_pelicula VARCHAR (7) UNIQUE,
    id_actor VARCHAR (7) UNIQUE,
    id_pelicula VARCHAR (7) UNIQUE,
    CONSTRAINT pk_id_actor_pelicula PRIMARY KEY (id_actor_pelicula),
    CONSTRAINT fk_id_actor FOREIGN KEY (id_actor) REFERENCES "Grupo 7 - T2"."ACTORES" (id_actor),
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 7 - T2"."PELICULAS" (id_pelicula)
);

CREATE TABLE "Grupo 7 - T2"."ACTORES_SERIES" (
    id_actor_serie VARCHAR (7) UNIQUE,
    id_actor VARCHAR (7) UNIQUE,
    id_serie VARCHAR (7) UNIQUE,
    CONSTRAINT pk_id_actor_serie PRIMARY KEY (id_actor_serie),
    CONSTRAINT fk_id_actor FOREIGN KEY (id_actor) REFERENCES "Grupo 7 - T2"."ACTORES" (id_actor),
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES "Grupo 7 - T2"."SERIES" (id_serie)
);

CREATE TABLE "Grupo 7 - T2"."SUSCRIPCIONES" (
    id_suscripcion VARCHAR (7) UNIQUE,
    id_usuario VARCHAR (7) UNIQUE,
    id_plan VARCHAR (7) UNIQUE,
    fecha_pago DATETIME,
    fecha_vencimiento DATETIME,
    estado VARCHAR (10),
    CONSTRAINT pk_suscripcion PRIMARY KEY (id_suscripcion),
    CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES "Grupo 7 - T2"."USUARIO" (id_usuario),
    CONSTRAINT fk_id_plan FOREIGN KEY (id_plan) REFERENCES "Grupo 7 - T2"."PLANES" (id_plan)
);


CREATE TABLE "Grupo 7 - T2"."PELICULAS" (
    id_pelicula VARCHAR(7) UNIQUE,
    miniatura_pelicula VARCHAR(70),
    duracion_pelicula TIME,
    restriccion_edad_pelicula VARCHAR(3),
    trailer_pelicula  VARCHAR(50),
    sinopsis_pelicula VARCHAR(200),
    ano_estreno_pelicula VARCHAR(3),
    enlace_pelicula VARCHAR(50) UNIQUE,

    CONSTRAINT pk_pelicula PRIMARY KEY (id_pelicula)

)

CREATE TABLE "Grupo 7 - T2"."SERIES" (
    id_serie VARCHAR(7) UNIQUE,
    miniatura_serie VARCHAR(70),
    cantidad_capitulos VARCHAR(10),
    restriccion_edad_serie VARCHAR(3),
    trailer_serie  VARCHAR(50),
    sinopsis_serie VARCHAR(200),
    ano_estreno_serie VARCHAR(3),
    enlace_serie VARCHAR(50) UNIQUE,

    CONSTRAINT pk_serie PRIMARY KEY (id_serie)

)

CREATE TABLE "Grupo 7 - T2"."CAPITULOS_SERIES" (
    id_capitulo VARCHAR(7) UNIQUE,
    id_serie VARCHAR(7) UNIQUE,
    numero_capitulo VARCHAR(10),
    nombre_capitulo VARCHAR(30),
    descripcion_capitulo VARCHAR(150),
    duracion_capitulo TIME,
    enlace_capitulo VARCHAR(50),
    miniatura_capitulo VARCHAR(70),

    CONSTRAINT pk_capitulo PRIMARY KEY (id_capitulo),
    CONSTRAINT fk_capituloSerie FOREIGN KEY (id_serie) REFERENCES "Grupo 7 - T2"."SERIES"
)

CREATE TABLE "Grupo 7 - T2"."CATEGORIAS" (
    id_categoria VARCHAR(7) UNIQUE,
    descripcion_categoria VARCHAR(150),

    CONSTRAINT pk_categoria PRIMARY KEY (id_categoria)
)

CREATE TABLE "Grupo 7 - T2"."CATEGORIAS_PELICULAS" (
    id_categorias_peliculas VARCHAR(7) UNIQUE,
    id_categoria VARCHAR(7) UNIQUE,
    id_pelicula VARCHAR(7) UNIQUE,

    CONSTRAINT pk_categorias_peliculas PRIMARY KEY (id_categorias_peliculas),
    CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES "Grupo 7 - T2"."CATEGORIAS",
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 7 - T2"."PELICULAS"
)

CREATE TABLE "Grupo 7 - T2"."CATEGORIAS_SERIES" (
    id_categorias_series VARCHAR(7) UNIQUE,
    id_categoria VARCHAR(7) UNIQUE,
    id_serie VARCHAR(7) UNIQUE,

    CONSTRAINT pk_categorias_series PRIMARY KEY (id_categorias_series),
    CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES "Grupo 7 - T2"."CATEGORIAS",
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES "Grupo 7 - T2"."SERIES"
)

CREATE TABLE "Grupo 7 - T2"."ACTORES" (
    id_actor VARCHAR(7) UNIQUE,
    nombre_actor VARCHAR(30),

    CONSTRAINT pk_actor PRIMARY KEY (id_actor)
)

CREATE TABLE "Grupo 7 - T2"."TIEMPO_VISUALIZACION_PELICULA" (
    id_tiempo_pelicula VARCHAR(7) UNIQUE,
    id_pelicula VARCHAR(7) UNIQUE,
    id_perfil VARCHAR(7) UNIQUE,
    tiempo_pelicula TIME,

    CONSTRAINT pk_tiempo_pelicula PRIMARY KEY (id_tiempo_pelicula),
    CONSTRAINT fk_tiempoPelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 7 - T2"."PELICULAS",
    CONSTRAINT fk_tiempoPerfil FOREIGN KEY (id_perfil) REFERENCES "Grupo 7 - T2"."PERFILES"

)

CREATE TABLE "Grupo 7 - T2"."TIEMPO_VISUALIZACION_SERIE" (
    id_tiempo_capitulo VARCHAR(7) UNIQUE,
    id_capitulo VARCHAR(7) UNIQUE,
    id_perfil VARCHAR(7) UNIQUE,
    tiempo_capitulo TIME,

    CONSTRAINT pk_tiempo_capitulo PRIMARY KEY (id_tiempo_capitulo),
    CONSTRAINT fk_tiempoCapitulo FOREIGN KEY (id_capitulo) REFERENCES "Grupo 7 - T2"."CAPITULOS_SERIES",
    CONSTRAINT fk_tiempoPerfil FOREIGN KEY (id_perfil) REFERENCES "Grupo 7 - T2"."PERFILES"

)

CREATE TABLE "Grupo 7 - T2"."CALIFICACION_PELICULA" (
    id_calificacion_pelicula VARCHAR(7) UNIQUE,
    id_pelicula VARCHAR(7) UNIQUE,
    id_perfil VARCHAR(7) UNIQUE,
    calificacion_pelicula VARCHAR(4),
    comentarios_pelicula VARCHAR(300),

    CONSTRAINT pk_calificacion_pelicula PRIMARY KEY (id_calificacion_pelicula),
    CONSTRAINT fk_calificacionPelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 7 - T2"."PELICULAS",
    CONSTRAINT fk_calificacionPerfil FOREIGN KEY (id_perfil) REFERENCES "Grupo 7 - T2"."PERFILES"

)

CREATE TABLE "Grupo 7 - T2"."CALIFICACION_SERIE" (
    id_calificacion_serie VARCHAR(7) UNIQUE,
    id_serie VARCHAR(7) UNIQUE,
    id_perfil VARCHAR(7) UNIQUE,
    calificacion_serie VARCHAR(4),
    comentarios_serie VARCHAR(300),

    CONSTRAINT pk_calificacion_serie PRIMARY KEY (id_calificacion_serie),
    CONSTRAINT fk_calificacionSerie FOREIGN KEY (id_serie) REFERENCES "Grupo 7 - T2"."SERIES",
    CONSTRAINT fk_calificacionPerfil FOREIGN KEY (id_perfil) REFERENCES "Grupo 7 - T2"."PERFILES"

)

CREATE TABLE "Grupo 7 - T2"."PERFILES" (
    id_perfil VARCHAR(7) UNIQUE,
    id_usuario VARCHAR(7) UNIQUE,
    id_plan VARCHAR(7) UNIQUE,

    nombre_perfil VARCHAR(15),
    biografia VARCHAR(50),
    foto_perfil VARCHAR(70),

    CONSTRAINT pk_perfil PRIMARY KEY (id_perfil),
    CONSTRAINT fk_perfilUsuario FOREIGN KEY (id_usuario) REFERENCES "Grupo 7 - T2"."USUARIOS",
    CONSTRAINT fk_perfilPlan FOREIGN KEY (id_plan) REFERENCES "Grupo 7 - T2"."PLANES"
    
)

CREATE TABLE "Grupo 7 - T2"."PERFILES_USUARIO"(
    id_perfiles_usuario VARCHAR(7) UNIQUE,
    id_perfil VARCHAR(7) UNIQUE,
    id_usuario VARCHAR(7) UNIQUE,

    CONSTRAINT pk_perfiles_usuario PRIMARY KEY (id_perfiles_usuario),
    CONSTRAINT fk_perfilesPerfil FOREIGN KEY (id_perfil) REFERENCES "Grupo 7 - T2"."PERFILES",
    CONSTRAINT fk_perfilesUsuario FOREIGN KEY (id_usuario) REFERENCES "Grupo 7 - T2"."USUARIOS"
)

CREATE TABLE "Grupo 7 - T2"."PELICULAS_FAVORITAS" (
    id_favorita VARCHAR(7) UNIQUE,
    id_perfil VARCHAR(7) UNIQUE,
    id_pelicula VARCHAR(7) UNIQUE,

    CONSTRAINT pk_favorita PRIMARY KEY (id_favorita),
    CONSTRAINT fk_favoritasPerfil FOREIGN KEY (id_perfil) REFERENCES "Grupo 7 - T2"."PERFILES",
    CONSTRAINT fk_favoritasPelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 7 - T2"."PELICULAS"
)

CREATE TABLE "Grupo 7 - T2"."PLANES" (
    id_plan VARCHAR(7) UNIQUE,
    descripcion_plan VARCHAR(10),
    precio_plan VARCHAR(12),
    duracion_plan TIME,
    calidad_video VARCHAR(10),
    numero_pantallas INTEGER,

    CONSTRAINT pk_plan PRIMARY KEY (id_plan)  
)




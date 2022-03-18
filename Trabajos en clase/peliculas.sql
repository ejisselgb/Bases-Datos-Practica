ALTER USER se_va WITH PASSWORD 'lionelmessi'

CREATE TABLE "Grupo 7".Usuario (
    nombre_usuario VARCHAR(20),
    contrasena VARCHAR(20),
    correo VARCHAR(20),
    CONSTRAINT pk_usuario PRIMARY KEY (nombre_usuario),
);

CREATE TABLE "Grupo 7".Pelicula (
    id_pelicula SERIAL,
    marca_tiempo TIMESTAMP,
    subtitulos VARCHAR(10000000),
    idiomas VARCHAR(20),
    enlace_pelicula VARCHAR(100),
    miniatura VARCHAR(100),
    duracion TIME
);

CREATE TABLE "Grupo 7".Generos (
   id_genero SERIAL,
   ciencia_ficcion VARCHAR(20),
   infantil VARCHAR(20),
   accion_aventura VARCHAR(20),
   musicales VARCHAR(20),
   aventura VARCHAR(20),
   terror VARCHAR(20),
   documental VARCHAR(20),
   animacion VARCHAR(20),
   drama VARCHAR(20),
);

ALTER TABLE "Grupo 7"."Usuario" ADD CONSTRAINT pk_usuario PRIMARY KEY (nombre_usuario)

ALTER TABLE "Grupo 7"."Pelicula" ADD CONSTRAINT pk_pelicula PRIMARY KEY (id_pelicula)

ALTER TABLE "Grupo 7"."Generos" ADD CONSTRAINT pk_genero PRIMARY KEY (id_genero)



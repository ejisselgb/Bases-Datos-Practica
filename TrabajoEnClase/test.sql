ALTER USER sa_ma_hu WITH PASSWORD 'LOSLINDOS'

CREATE TABLE "Grupo1"."USUARIO" (
	id SERIAL,
	nombre varchar(50),
	correo varchar(30),
	telefono varchar(10),
	pais varchar(20)
);

CREATE TABLE "Grupo1"."CUENTA" (
	nombre_usuario varchar(20),
	correo varchar(30),
	id_perfil SERIAL,
	contraseña varchar(10),
	membresia varchar(10)
);

CREATE TABLE "Grupo1"."PERFIL" (
	id_perfil SERIAL,
	id_catalogo SERIAL,
	nombre varchar(20)
	tipo varchar(15),
	avatar varchar,
	preferencias varchar(100)
)

CREATE TABLE "Grupo1"."CATALOGO" (
	id_catalogo SERIAL,
	id_pelicula SERIAL,
	mas_vistos varchar(100),
	region varchar(30)
)

ALTER TABLE "Grupo1"."USUARIO" ADD CONSTRAINT pk_id_usuario PRIMARY KEY(id);
ALTER TABLE "Grupo1"."CUENTA" ADD CONSTRAINT pk_nombre_usuario PRIMARY KEY(nombre_usuario);
ALTER TABLE "Grupo1"."CUENTA" ADD CONSTRAINT fk_correo FOREIGN KEY (correo) REFERENCES "USUARIO"(correo);
ALTER TABLE "Grupo1"."CUENTA" ADD CONSTRAINT fk_id_perfiles FOREIGN KEY (id_perfiles) REFERENCES "PERFIL" (id_perfil);
ALTER TABLE "Grupo1"."PERFIL" ADD CONSTRAINT pk_id_perfil PRIMARY KEY (id_perfil);
ALTER TABLE "Grupo1"."PERFIL" ADD CONSTRAINT fk_id_catalogo FOREIGN KEY (id_catalogo) REFERENCES "CATALOGO" (id_catalogo);
ALTER TABLE "Grupo1"."CATALOGO" ADD CONSTRAINT pk_id_catalogo PRIMARY KEY (id_catalogo);
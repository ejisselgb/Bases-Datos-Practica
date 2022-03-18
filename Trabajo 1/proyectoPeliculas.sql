CREATE DATABASE programapeliculas;

CREATE TABLE IF NOT EXISTS "Grupo 3"."CUENTA" (
    correo varchar(30) NOT NULL,
    contrasena_cuenta varchar(15) NOT NULL,
    numero_de_contacto varchar(15) NOT NULL,
    tarjeta_de_credito varchar(15) NOT NULL,
    CONSTRAINT "pk_cuenta" PRIMARY KEY (correo)
);

ALTER TABLE "Grupo 3"."CUENTA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."PERFIL" (
    id_perfil SERIAL NOT NULL,
    correo varchar(30)  NOT NULL,
    nombre varchar(40)  NOT NULL,
    edad int  NOT NULL,
    foto varchar(30)  NOT NULL,
    contraseña_perfil varchar(15)  NOT NULL,
    fecha_de_nacimiento date  NOT NULL,
    restriccion_edad int  NOT NULL,
    CONSTRAINT "pk_perfil" PRIMARY KEY (id_perfil),
    CONSTRAINT "fk_correo" FOREIGN KEY (correo) REFERENCES "Grupo 3"."CUENTA" (correo) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE "Grupo 3"."PERFIL" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."PELICULA" (
    id_pelicula SERIAL NOT NULL,
    titulo varchar(30)  NOT NULL,
    duracion int  NOT NULL,
    sinopsis varchar(300)  NOT NULL,
    ano_estreno date  NOT NULL,
    restriccion_edad int  NOT NULL,
    archivo_pelicula varchar(30)  NOT NULL,
    archivo_trailer varchar(30),
    cartel varchar(30)  NOT NULL,
    CONSTRAINT "pk_id_pelicula" PRIMARY KEY (id_pelicula)
);

ALTER TABLE "Grupo 3"."PELICULA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."PELICULA-FAVORITA" (
    id_perfil SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3"."PERFIL" (id_perfil) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "pk_pelifav" PRIMARY KEY (id_pelicula, id_perfil)
);

ALTER TABLE "Grupo 3"."PELICULA-FAVORITA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."PELICULA-COMENTADA" (
    id_perfil SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    id_pc SERIAL NOT NULL,
    comentario varchar(400) NOT NULL,
    fecha_comentario date NOT NULL,
    CONSTRAINT "pk_id_pc" PRIMARY KEY (id_pc),
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3"."PERFIL" (id_perfil) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
);

ALTER TABLE "Grupo 3"."PELICULA-COMENTADA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."PELICULA-GUSTADA" (
    id_perfil SERIAL  NOT NULL,
    id_pelicula SERIAL  NOT NULL,
    fecha_gusto date  NOT NULL,
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3"."PERFIL" (id_perfil) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "pk_peligustada" PRIMARY KEY (id_pelicula, id_perfil)
);

ALTER TABLE "Grupo 3"."PELICULA-GUSTADA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."PELICULA-VISTA" (
    id_perfil SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    tiempo_visualizado int NOT NULL,
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3"."PERFIL" (id_perfil) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "pk_pelivista" PRIMARY KEY (id_pelicula, id_perfil)
);

ALTER TABLE "Grupo 3"."PELICULA-VISTA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."GENERO" (
    id_genero SERIAL NOT NULL,
    nombre varchar(30) NOT NULL,
    CONSTRAINT "pk_id_genero" PRIMARY KEY (id_genero)
);

ALTER TABLE "Grupo 3"."GENERO" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."IDIOMA" (
    id_idioma SERIAL NOT NULL,
    nombre varchar(30) NOT NULL,
    CONSTRAINT "pk_id_idioma" PRIMARY KEY (id_idioma)
);

ALTER TABLE "Grupo 3"."IDIOMA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."ELENCO" (
    id_elenco SERIAL NOT NULL,
    nombre varchar(30) NOT NULL,
    CONSTRAINT "pk_id_elenco" PRIMARY KEY (id_elenco)
);

ALTER TABLE "Grupo 3"."ELENCO" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."PREMIO" (
    id_premio SERIAL NOT NULL,
    nombre varchar(30) NOT NULL,
    CONSTRAINT "pk_id_premio" PRIMARY KEY (id_premio)
);

ALTER TABLE "Grupo 3"."PREMIO" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."DIRECTOR" (
    id_director SERIAL NOT NULL,
    nombre varchar(30) NOT NULL,
    CONSTRAINT "pk_id_director" PRIMARY KEY (id_director)
);

ALTER TABLE "Grupo 3"."DIRECTOR" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."SUBTITULO" (
    id_subtitulo SERIAL NOT NULL,
    nombre varchar(30) NOT NULL,
    CONSTRAINT "pk_id_subtitulo" PRIMARY KEY (id_subtitulo)
);

ALTER TABLE "Grupo 3"."SUBTITULO" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."GENERO-PELICULA" (
    id_gp SERIAL NOT NULL,
    id_genero SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    CONSTRAINT "pk_id_gp" PRIMARY KEY (id_gp),
    CONSTRAINT "fk_id_genero" FOREIGN KEY (id_genero) REFERENCES "Grupo 3"."GENERO" (id_genero) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
);

ALTER TABLE "Grupo 3"."GENERO-PELICULA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."IDIOMA-PELICULA" (
    id_ip SERIAL NOT NULL,
    id_idioma SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    CONSTRAINT "pk_id_ip" PRIMARY KEY (id_ip),
    CONSTRAINT "fk_id_idioma" FOREIGN KEY (id_idioma) REFERENCES "Grupo 3"."IDIOMA" (id_idioma) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE "Grupo 3"."IDIOMA-PELICULA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."ELENCO-PELICULA" (
    id_ep SERIAL NOT NULL,
    id_elenco SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    CONSTRAINT "pk_id_ep" PRIMARY KEY (id_ep),
    CONSTRAINT "fk_id_elenco" FOREIGN KEY (id_elenco) REFERENCES "Grupo 3"."ELENCO" (id_elenco) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE "Grupo 3"."ELENCO-PELICULA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."PREMIO-PELICULA" (
    id_pp SERIAL NOT NULL,
    id_premio SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    CONSTRAINT "pk_id_pp" PRIMARY KEY (id_pp),
    CONSTRAINT "fk_id_premio" FOREIGN KEY (id_premio) REFERENCES "Grupo 3"."PREMIO" (id_premio) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE "Grupo 3"."PREMIO-PELICULA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."DIRECTOR-PELICULA" (
    id_dp SERIAL NOT NULL,
    id_director SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    CONSTRAINT "pk_id_dp" PRIMARY KEY (id_dp),
    CONSTRAINT "fk_id_director" FOREIGN KEY (id_director) REFERENCES "Grupo 3"."DIRECTOR" (id_director) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE "Grupo 3"."DIRECTOR-PELICULA" OWNER TO postgres;

CREATE TABLE IF NOT EXISTS "Grupo 3"."SUBTITULO-PELICULA" (
    id_sp SERIAL NOT NULL,
    id_subtitulo SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    CONSTRAINT "pk_id_sp" PRIMARY KEY (id_sp),
    CONSTRAINT "fk_id_subtitulo" FOREIGN KEY (id_subtitulo) REFERENCES "Grupo 3"."SUBTITULO" (id_subtitulo) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3"."PELICULA" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE "Grupo 3"."SUBTITULO-PELICULA" OWNER TO postgres;


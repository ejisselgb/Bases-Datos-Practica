CREATE TABLE "Grupo 2".perfil(
nombre_usuario VARCHAR(10) NOT NULL,
email VARCHAR(20)NOT NULL,
idioma VARCHAR(20),
foto_perfil VARCHAR(2000),
pais VARCHAR(20));

CREATE TABLE "Grupo 2".pais(
id_pais VARCHAR(20),
nombre VARCHAR(20));
CREATE TABLE "Grupo 2".pelicula(
id_pelicula VARCHAR(10),
nombre VARCHAR(20),
trailer VARCHAR(2000),
autor VARCHAR(30),
genero VARCHAR(1),
fecha_publicacion DATE,
sipnosis VARCHAR(100),
tiempo_total TIME);

ALTER TABLE "Grupo 2".perfil ADD PRIMARY KEY (nombre_usuario);
ALTER TABLE "Grupo 2".pais ADD PRIMARY KEY (id_pais);
ALTER TABLE "Grupo 2".pelicula ADD PRIMARY KEY (id_pelicula);

CREATE TABLE "Grupo 2".usuario(
    email VARCHAR(20) NOT NULL,
    contrasena VARCHAR(15) NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY (email)
);

CREATE TABLE "Grupo 2".catalogoPais(
    id_catalogo VARCHAR(15),
    nombre_usuario VARCHAR(10),
    id_pais VARCHAR(20),
    activo BOOLEAN,
    CONSTRAINT pk_catalogo_pais PRIMARY KEY (id_catalogo)
);

CREATE TABLE "Grupo 2".catalogoPelicula(
    id_catalogo VARCHAR(15),
    id_pelicula VARCHAR(10)
);

CREATE TABLE "Grupo 2".tiempo(
    id_pelicula VARCHAR(10),
    nombre_usuario VARCHAR(10),
    tiempo_visualizado TIME
);

CREATE TABLE "Grupo 2".likesComentarios(
    id_pelicula VARCHAR(20),
    nombre_usuario VARCHAR(15),
    likes BOOLEAN,
    comentarios VARCHAR(100)
);

CREATE TABLE "Grupo 2".indicadorFavorito(
    nombre_usuario VARCHAR(10),
    id_pelicula VARCHAR(20),
    favorito BOOLEAN
);

ALTER TABLE
    "Grupo 2".indicadorFavorito
ADD
    CONSTRAINT fk_perfil_f FOREIGN KEY (nombre_usuario) REFERENCES "Grupo 2".perfil(nombre_usuario) MATCH FULL;

ALTER TABLE
    "Grupo 2".indicadorFavorito
ADD
    CONSTRAINT fk_pelicula_f FOREIGN KEY (id_pelicula) REFERENCES "Grupo 2".pelicula(id_pelicula) MATCH FULL;

ALTER TABLE
    "Grupo 2".perfil
ADD
    CONSTRAINT fk_usuario_perfil FOREIGN KEY (email) REFERENCES "Grupo 2".usuario(email) MATCH FULL;

ALTER TABLE
    "Grupo 2".catalogoPais
ADD
    CONSTRAINT fk_pais_catalogo_pais FOREIGN KEY (id_pais) REFERENCES "Grupo 2".pais(id_pais) MATCH FULL;

ALTER TABLE
    "Grupo 2".catalogoPais
ADD
    CONSTRAINT fk_perfil_catalogo_pais FOREIGN KEY (nombre_usuario) REFERENCES "Grupo 2".perfil(nombre_usuario) MATCH FULL;

ALTER TABLE
    "Grupo 2".catalogoPelicula
ADD
    CONSTRAINT fk_catalogo_p FOREIGN KEY (id_catalogo) REFERENCES "Grupo 2".catalogoPais(id_catalogo) MATCH FULL;

ALTER TABLE
    "Grupo 2".catalogoPelicula
ADD
    CONSTRAINT fk_pelicula_p FOREIGN KEY (id_pelicula) REFERENCES "Grupo 2".pelicula(id_pelicula) MATCH FULL;

ALTER TABLE
    "Grupo 2".tiempo
ADD
    CONSTRAINT fk_perfil_tiempo FOREIGN KEY (nombre_usuario) REFERENCES "Grupo 2".perfil(nombre_usuario) MATCH FULL;

ALTER TABLE
    "Grupo 2".tiempo
ADD
    CONSTRAINT fk_pelicula_tiempo FOREIGN KEY (id_pelicula) REFERENCES "Grupo 2".pelicula(id_pelicula) MATCH FULL;

ALTER TABLE
    "Grupo 2".likescomentarios
ADD
    CONSTRAINT fk_perfil_l FOREIGN KEY (nombre_usuario) REFERENCES "Grupo 2".perfil(nombre_usuario) MATCH FULL;

ALTER TABLE
    "Grupo 2".likescomentarios
ADD
    CONSTRAINT fk_pelicula_l FOREIGN KEY (id_pelicula) REFERENCES "Grupo 2".pelicula(id_pelicula) MATCH FULL;

INSERT INTO
    "Grupo 2".pais (id_pais, nombre)
VALUES
    ('CO', 'COLOMBIA'),
    ('VE', 'VENEZUELA'),
    ('UY', 'URUGUAY'),
    ('AU', 'AUSTRALIA'),
    ('ES', 'ESPANA'),
    ('ALEMANIA', 'AL'),
    ('BO', 'BOLIVIA'),
    ('UC', 'UCRANIA'),
    ('RU', 'RUSIA'),
    ('USA', 'ESTADOSUNIDOS');

INSERT INTO
    "Grupo 2".usuario (email, contrasena)
VALUES
    ('csofia@gmail.com', 'pandejamon'),
    ('vivi@gmail.com', 'cedita'),
    ('velita@gmail.com', 'luz'),
    ('gatito@gmail.com', 'pezcado'),
    ('bonita@gmail.com', 'fea'),
    ('cs@gmail.com', 'pan'),
    ('vic@gmail.com', 'cemi'),
    ('vel@gmail.com', 'lu'),
    ('perro@gmail.com', 'carne'),
    ('bonito@gmail.com', 'feo');

INSERT INTO
    "Grupo 2".perfil (nombre_usuario, email, idioma, foto_perfil, pais)
VALUES
    (
        'gatito',
        'gatito@gmail.com',
        'japones',
        'iljwdjidjdjsij',
        'USA'
    ),
    (
        'bonita',
        'bonita@gmail.com',
        'espanol',
        'iljwd3jidjdjsij',
        'VE'
    ),
    (
        'cs',
        'cs@gmail.com',
        'español',
        'iljwdjidjdjsij',
        'CO'
    ),
    (
        'vic',
        'vic@gmail.com',
        'ingles',
        'iljwd3jidjdjsij',
        'AU'
    ),
    (
        'vel',
        'vel@gmail.com',
        'japones',
        'iljwdjidjdjsij',
        'ES'
    );

INSERT INTO
    "Grupo 2".pelicula (
        id_pelicula,
        nombre,
        trailer,
        autor,
        genero,
        fecha_publicacion,
        sipnosis,
        tiempo_total
    )
VALUES
    (
        '100000001',
        'Spider-Man',
        'https://www.youtube.com/watch?v=5FzNRZPzBus',
        'Tobey God Maguire',
        '2',
        '2021-12-15',
        'Multiverso',
        '2:28:38'
    ),
    (
        '100000002',
        'El proyecto Adam',
        'https://www.youtube.com/watch?v=5FzNRZPzBus',
        'Ryan Reynolds',
        '3',
        '2022-03-11',
        'Adam Reed es un piloto de caza que viaja en el tiempo',
        '1:44:01'
    ),
    (
        '100000003',
        'Cars',
        'https://www.youtube.com/watch?v=5FzNRZPzBus',
        'Rayo McQueen',
        '4',
        '2006-06-22',
        'El aspirante a campeón de carreras Rayo McQueen está sobre la vía rápida al éxito, la fama.',
        '1:56:11'
    ),
    (
        '100000004',
        'Los Increibles',
        'https://www.youtube.com/watch?v=5FzNRZPzBus',
        'Edna Moda',
        '4',
        '2004-11-11',
        'Como Mr. Increíble y Elastigirl estaban entre los mejores luchadores contra el crimen',
        '1:56:11'
    );

INSERT INTO
    "Grupo 2".catalogoPais(id_catalogo, nombre_usuario, id_pais, activo)
VALUES
    (
        '002',
        'gatito',
        'USA',
        'false'
    ),
    (
        '003',
        'cs',
        'CO',
        'true'
    ),
    (
        '004',
        'vel',
        'ES',
        'false'
    ),
    (
        '005',
        'vic',
        'AU',
        'true'
    );

INSERT INTO
    "Grupo 2".catalogoPelicula(id_catalogo, id_pelicula)
VALUES
    ('001', '100000001'),
    ('001', '100000002'),
    ('002', '100000001'),
    ('003', '100000004'),
    ('005', '100000003');

INSERT INTO
    "Grupo 2".likescomentarios(id_pelicula, nombre_usuario, likes, comentarios)
VALUES
    (
        '100000000',
        'bonita',
        't',
        'me gusto la pelicula'
    ),
    ('100000002', 'bonita', 'f', 'fue aburrida'),
    ('100000004', 'cs', 't', NULL),
    ('100000003', 'vic', 'f', 'bonita'),
    ('100000000', 'gatito', 't', 'me gusto');

INSERT INTO
    "Grupo 2".indicadorfavorito(id_pelicula, nombre_usuario, likes, comentarios)
VALUES
    ('100000000', 'bonita', 't'),
    ('100000002', 'bonita', 'f'),
    ('100000004', 'cs', 'f'),
    ('100000003', 'vic', 't'),
    ('100000000', 'gatito', 't');

INSERT INTO
    “ Grupo 2 ”.tiempo(id_pelicula, nombre_usuario, tiempo_visualizado)
VALUES
    (‘ 100000000 ’, ‘ bonita ’, ‘ 1 :50 :10 ’),
    (‘ 100000001 ’, ‘ bonita ’, ‘ 2 :00 :02 ’),
    (‘ 100000001 ’, ‘ gatito ’, ‘ 1 :30 :23 ’),
    (‘ 100000003 ’, ‘ gatito ’, ‘ 1 :10 :10 ’),
    (‘ 100000004 ’, ‘ vel ’, ‘ 1 :20 :50 ’);
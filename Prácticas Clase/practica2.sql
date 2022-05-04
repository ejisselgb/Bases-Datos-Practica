CREATE TABLE IF NOT EXISTS "Grupo 1"."MOVIES"(
    id_movie SERIAL PRIMARY KEY,
    name_movie varchar(50),
    synopsis varchar(500),
    premiere DATE
);

CREATE TABLE IF NOT EXISTS "Grupo 1"."SERIES"(
    id_serie SERIAL PRIMARY KEY,
    name_serie varchar(50),
    synopsis varchar(500),
    provider varchar(15)
);

CREATE TABLE IF NOT EXISTS "Grupo 1"."GENRE"(
    id_genre SERIAL PRIMARY KEY,
    name_genre varchar(40)
);

CREATE TABLE IF NOT EXISTS "Grupo 1"."GENRE_MOVIES"(
    id_movie SERIAL,
    id_genre SERIAL,
    CONSTRAINT fk_id_movie FOREIGN KEY (id_movie) REFERENCES "Grupo 1"."MOVIES"(id_movie),
    CONSTRAINT fk_id_genre FOREIGN KEY (id_genre) REFERENCES "Grupo 1"."GENRE"(id_genre)
);

CREATE TABLE IF NOT EXISTS "Grupo 1"."GENRE_SERIES"(
    id_serie SERIAL,
    id_genre SERIAL,
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES "Grupo 1"."SERIES"(id_serie),
    CONSTRAINT fk_id_genre FOREIGN KEY (id_genre) REFERENCES "Grupo 1"."GENRE"(id_genre)
);

INSERT INTO "Grupo 1"."MOVIES" (name_movie, synopsis, premiere)
VALUES
('Harry Potter and the philosophers stone', 'Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school, and with the help of his friends, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harrys parents, but failed to kill Harry when he was just 15 months old.' '2001/11/30'),
('Kill Bill: Volume 1', 'Beatrix Kiddo a.k.a The Bride is a female assassin, a trained killer who has been betrayed by The Deadly Viper Assassination Squad led by her former boss Bill who gunned her down at her wedding leaving her for dead. The Bride awakes four years later and she sets out to begin her quest for vengeance.', '2003/11/14'),
('I feel pretty', 'A woman struggling with insecurity wakes from a fall believing she is the most beautiful and capable woman on the planet. Her new confidence empowers her to live fearlessly, but what happens when she realizes her appearance never changed?', '2018/04/20')
;

INSERT INTO "Grupo 1"."SERIES" (name_serie, synopsis, provider)
VALUES
('Breaking bad', 'Set in Albuquerque, New Mexico, between 2008 and 2010, Breaking Bad follows Walter White, a meek high school chemistry teacher who transforms into a ruthless player in the local methamphetamine drug trade, driven by a desire to financially provide for his family after being diagnosed with terminal lung cancer.', 'Netflix'),
('Dark', 'In the aftermath of a childs disappearance, Dark follows characters from the fictional German town of Winden as they pursue the truth. They follow connections between four estranged families to unravel a sinister time travel conspiracy which spans several generations.', 'HBO')
;

INSERT INTO "Grupo 1"."GENRE" (name_genre)
VALUES
('Fantasy'),
('Action'),
('Comedy'),
('Crime'),
('Thriller')
;

INSERT INTO "Grupo 1"."GENRE_MOVIES" (id_movie, id_genre)
VALUES
(1, 1),
(2, 2)
;

INSERT INTO "Grupo 1"."GENRE_SERIES" (id_serie, id_genre)
VALUES
(1, 4),
(2, 5)
;


--TODOS LOS GENEROS QUE NO HAN SIDO ASIGNADOS A UNA SERIE O PELICULA
--GENRE SERIES Y GENRE WHERE GENRE IS NULL

SELECT 
    gm.id_movie, gm.id_genre, gr.id_genre
FROM 
    "Grupo 1"."GENRE_MOVIES" as gm
RIGHT JOIN "Grupo 1"."GENRE" as gr
    ON gm.id_genre = gr.id_genre
WHERE gr.id_genre IS NULL;
CREATE TABLE "Grupo 6 - T2"."USERS" (
	id_user varchar(20) NOT NULL,
    username varchar(20),
	email varchar(30),
	password varchar(30)	
);

ALTER TABLE "Grupo 6 - T2"."USERS" ADD CONSTRAINT pk_user PRIMARY KEY(id_user);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."PROFILES" ( 

    id_profile varchar(20) NOT NULL,
    id_user varchar(20) NOT NULL,
    name varchar(20),
    surname varchar(20),
    phone varchar(20),
    id_country varchar(30),
    id_zone varchar(30),
    id_city varchar(30)

);
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT pk_profile PRIMARY KEY(id_profile);
--foraneas
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT fk_country FOREIGN KEY(id_country) REFERENCES "Grupo 6 - T2"."COUNTRIES" (id_country);
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT fk_zone FOREIGN KEY(id_zone) REFERENCES "Grupo 6 - T2"."ZONES" (id_zone);
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT fk_city FOREIGN KEY(id_city) REFERENCES "Grupo 6 - T2"."CITIES" (id_city);


----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."PLANS" (

    id_plan varchar(20) NOT NULL,
    screens int,
	price varchar(20)
);
ALTER TABLE "Grupo 6 - T2"."PLANS" ADD CONSTRAINT pk_plan PRIMARY KEY(id_plan);

----------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE "Grupo 6 - T2"."SUSCRIPCIONS" (
    id_subscription varchar(20) NOT NULL,
    id_user varchar(20) NOT NULL,
    id_plan varchar(20) NOT NULL,
    payment_date varchar(20),
    payment_method varchar(30),
    active BOOLEAN NOT NULL
);
ALTER TABLE "Grupo 6 - T2"."SUSCRIPCIONS" ADD CONSTRAINT pk_suscriptions PRIMARY KEY(id_plan, id_user);
--foraneas
ALTER TABLE "Grupo 6 - T2"."SUSCRIPCIONS" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."SUSCRIPCIONS" ADD CONSTRAINT fk_plan FOREIGN KEY(id_plan) REFERENCES "Grupo 6 - T2"."PLANS" (id_plan);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."MOVIES" (

    id_movie varchar(20) NOT NULL,
    title varchar(100),
	synopsis varchar(500),
    director varchar(20) NOT NULL,
	poster_url varchar(100), --no se si eso esta bueno
    trailer_url varchar(100)
);
ALTER TABLE "Grupo 6 - T2"."MOVIES" ADD CONSTRAINT pk_movie PRIMARY KEY(id_movie);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."SERIES" (

    id_serie varchar(20) NOT NULL,
    tittle varchar(20),
	synopsis varchar(20),
    director varchar(20),
	poster_url varchar(100), --no se si eso esta bueno
    trailer_url varchar(100)
);
ALTER TABLE "Grupo 6 - T2"."SERIES" ADD CONSTRAINT pk_serie PRIMARY KEY(id_serie);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."CHAPTERS_SERIES"(

    id_chapter varchar(20) NOT NULL,
    id_serie varchar(20) NOT NULL, 
    number int,
    season int,
	tittle varchar(100),
    description varchar(200),
	img_url varchar(100) --no se si eso esta bueno

);
ALTER TABLE "Grupo 6 - T2"."CHAPTERS_SERIES" ADD CONSTRAINT pk_chapter PRIMARY KEY(id_chapter);
--foraneas
ALTER TABLE "Grupo 6 - T2"."CHAPTERS_SERIES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);

----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE "Grupo 6 - T2"."CATEGORIES" (
    id_category varchar(20) NOT NULL,
    name_category varchar(20)

);
ALTER TABLE "Grupo 6 - T2"."CATEGORIES" ADD CONSTRAINT pk_category PRIMARY KEY(id_category);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."MOVIES_CATEGORIES" (

    id_movie varchar(20) NOT NULL,
    id_category varchar(20) NOT NULL

);
ALTER TABLE "Grupo 6 - T2"."MOVIES_CATEGORIES" ADD CONSTRAINT pk_movie_category PRIMARY KEY(id_movie, id_category);
--foraneas
ALTER TABLE "Grupo 6 - T2"."MOVIES_CATEGORIES" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);
ALTER TABLE "Grupo 6 - T2"."MOVIES_CATEGORIES" ADD CONSTRAINT fk_category FOREIGN KEY(id_category) REFERENCES "Grupo 6 - T2"."CATEGORIES" (id_category);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."SERIES_CATEGORIES" (
    id_serie varchar(20) NOT NULL,
    id_category varchar(20) NOT NULL

);
ALTER TABLE "Grupo 6 - T2"."SERIES_CATEGORIES" ADD CONSTRAINT pk_serie_category PRIMARY KEY(id_serie, id_category);

ALTER TABLE "Grupo 6 - T2"."SERIES_CATEGORIES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);
ALTER TABLE "Grupo 6 - T2"."SERIES_CATEGORIES" ADD CONSTRAINT fk_category FOREIGN KEY(id_category) REFERENCES "Grupo 6 - T2"."CATEGORIES" (id_category);

----------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE "Grupo 6 - T2"."FAVORITE_MOVIES"(

    id_user varchar(20) NOT NULL,
	id_movie varchar(200) NOT NULL

);
ALTER TABLE "Grupo 6 - T2"."FAVORITE_MOVIES" ADD CONSTRAINT pk_favorites_movies PRIMARY KEY(id_user, id_movie);
--foraneas
ALTER TABLE "Grupo 6 - T2"."FAVORITE_MOVIES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."FAVORITE_MOVIES" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie); 

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."FAVORITE_SERIES" (

    id_user varchar(20) NOT NULL,
	id_serie varchar(20) NOT NULL

);
ALTER TABLE "Grupo 6 - T2"."FAVORITE_SERIES" ADD CONSTRAINT pk_favorites_series PRIMARY KEY(id_user, id_serie);
--foraneas
ALTER TABLE "Grupo 6 - T2"."FAVORITE_SERIES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."FAVORITE_SERIES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."ACTORS" (

    id_actor varchar(20) NOT NULL,
    name varchar(20),
    surname varchar(20)
);
ALTER TABLE "Grupo 6 - T2"."ACTORS" ADD CONSTRAINT pk_actor PRIMARY KEY(id_actor);

----------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE "Grupo 6 - T2"."MOVIES_ACTORS" (

    id_actor varchar(20) NOT NULL,
    id_movie varchar(20) NOT NULL

);
ALTER TABLE "Grupo 6 - T2"."MOVIES_ACTORS" ADD CONSTRAINT pk_movies_actors PRIMARY KEY(id_actor, id_movie);
--foraneas
ALTER TABLE "Grupo 6 - T2"."MOVIES_ACTORS" ADD CONSTRAINT fk_actor FOREIGN KEY(id_actor) REFERENCES "Grupo 6 - T2"."ACTORS" (id_actor);
ALTER TABLE "Grupo 6 - T2"."MOVIES_ACTORS" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."SERIES_ACTORS" (

    id_actor varchar(20) NOT NULL,
    id_serie varchar(20) NOT NULL

);
ALTER TABLE "Grupo 6 - T2"."SERIES_ACTORS" ADD CONSTRAINT pk_serie_actors PRIMARY KEY(id_actor, id_serie);
--foraneas
ALTER TABLE "Grupo 6 - T2"."SERIES_ACTORS" ADD CONSTRAINT fk_actor FOREIGN KEY(id_actor) REFERENCES "Grupo 6 - T2"."ACTORS" (id_actor);
ALTER TABLE "Grupo 6 - T2"."SERIES_ACTORS" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."COUNTRIES" (

    id_country varchar(20) NOT NULL,
    name varchar(20),
    currency varchar(20),
    time_zone varchar(20)

);
ALTER TABLE "Grupo 6 - T2"."COUNTRIES" ADD CONSTRAINT pk_country PRIMARY KEY(id_country);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."ZONES" (

    id_zone varchar(20) NOT NULL,
    id_country varchar(20) NOT NULL,
    name varchar(20)

);
ALTER TABLE "Grupo 6 - T2"."ZONES" ADD CONSTRAINT pk_deparment PRIMARY KEY(id_zone);
--foraneas
ALTER TABLE "Grupo 6 - T2"."ZONES" ADD CONSTRAINT fk_country FOREIGN KEY(id_country) REFERENCES "Grupo 6 - T2"."COUNTRIES" (id_country);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."CITIES" (

    id_city varchar(20) NOT NULL,
    id_zone varchar(20), --foranea de deparment
    name varchar(20)

);
ALTER TABLE "Grupo 6 - T2"."CITIES" ADD CONSTRAINT pk_city PRIMARY KEY(id_city);
--foraneas
ALTER TABLE "Grupo 6 - T2"."ZONES" ADD CONSTRAINT fk_zone FOREIGN KEY(id_zone) REFERENCES "Grupo 6 - T2"."ZONES" (id_zone);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."LANGUAGES" (

    id_language varchar(20) NOT NULL,
    name varchar(20)

);
ALTER TABLE "Grupo 6 - T2"."LANGUAGES" ADD CONSTRAINT pk_language PRIMARY KEY(id_language);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."SERIES_LANGUAGES" (

    id_serie varchar(20) NOT NULL,
    id_language varchar(20) NOT NULL

);
ALTER TABLE "Grupo 6 - T2"."SERIES_LANGUAGES" ADD CONSTRAINT pk_series_languages PRIMARY KEY(id_serie, id_language);
--foraneas
ALTER TABLE "Grupo 6 - T2"."SERIES_LANGUAGES" ADD CONSTRAINT fk_language FOREIGN KEY(id_language) REFERENCES "Grupo 6 - T2"."LANGUAGES" (id_language);
ALTER TABLE "Grupo 6 - T2"."SERIES_LANGUAGES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."MOVIES_LANGUAGES"(

    id_movie varchar(20) NOT NULL,
    id_language varchar(20) NOT NULL

);
ALTER TABLE "Grupo 6 - T2"."MOVIES_LANGUAGES" ADD CONSTRAINT pk_movies_languages PRIMARY KEY(id_movie, id_language);
--foraneas
ALTER TABLE "Grupo 6 - T2"."MOVIES_LANGUAGES" ADD CONSTRAINT fk_language FOREIGN KEY(id_language) REFERENCES "Grupo 6 - T2"."LANGUAGES" (id_language);
ALTER TABLE "Grupo 6 - T2"."MOVIES_LANGUAGES" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."VIEW_TIME_SERIES" (
    id_user varchar(20) NOT NULL,
    id_profile varchar(20) NOT NULL,
    id_serie varchar(20),
    chapter varchar(20),
    season varchar(20),
    time_ time
);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_SERIES" ADD CONSTRAINT pk_view_time_series PRIMARY KEY(id_serie, id_user, id_profile);
--foraneas
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_SERIES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_SERIES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_SERIES" ADD CONSTRAINT fk_profile FOREIGN KEY(id_profile) REFERENCES "Grupo 6 - T2"."PROFILES" (id_profile);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."VIEW_TIME_MOVIES" (
    
    id_movie varchar(20) NOT NULL,
    id_user varchar(20) NOT NULL,
    id_profile varchar(20) NOT NULL,
    time_ time

);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_MOVIES" ADD CONSTRAINT pk_view_time_movies PRIMARY KEY(id_movie, id_user, id_profile);
--foraneas
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_MOVIES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_MOVIES" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_MOVIES" ADD CONSTRAINT fk_profile FOREIGN KEY(id_profile) REFERENCES "Grupo 6 - T2"."PROFILES" (id_profile);

----------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE "Grupo 6 - T2"."MOVIES_RATING" (

    id_movie varchar(20) NOT NULL,
    id_user varchar(20),
    movie_rating varchar(20)

);
ALTER TABLE "Grupo 6 - T2"."MOVIES_RATING" ADD CONSTRAINT pk_movies_rating PRIMARY KEY(id_movie, id_user);
--foraneas
ALTER TABLE "Grupo 6 - T2"."MOVIES_RATING" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."MOVIES_RATING" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);

----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "Grupo 6 - T2"."SERIES_RATING" (

    id_serie varchar(20) NOT NULL,
    id_user varchar(20)

);
ALTER TABLE "Grupo 6 - T2"."SERIES_RATING" ADD CONSTRAINT pk_series_rating PRIMARY KEY(id_serie, id_user);
--foraneas
ALTER TABLE "Grupo 6 - T2"."SERIES_RATING" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."SERIES_RATING" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
--All CONSTRAINT

ALTER TABLE "Grupo 6 - T2"."USERS" ADD CONSTRAINT pk_user PRIMARY KEY(id_user);
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT pk_profile PRIMARY KEY(id_profile);
--foraneas
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT fk_country FOREIGN KEY(id_country) REFERENCES "Grupo 6 - T2"."COUNTRIES" (id_country);
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT fk_zone FOREIGN KEY(id_zone) REFERENCES "Grupo 6 - T2"."ZONES" (id_zone);
ALTER TABLE "Grupo 6 - T2"."PROFILES" ADD CONSTRAINT fk_city FOREIGN KEY(id_city) REFERENCES "Grupo 6 - T2"."CITIES" (id_city);


ALTER TABLE "Grupo 6 - T2"."PLANS" ADD CONSTRAINT pk_plan PRIMARY KEY(id_plan);


ALTER TABLE "Grupo 6 - T2"."SUSCRIPCIONS" ADD CONSTRAINT pk_suscriptions PRIMARY KEY(id_plan, id_user);
--foraneas
ALTER TABLE "Grupo 6 - T2"."SUSCRIPCIONS" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."SUSCRIPCIONS" ADD CONSTRAINT fk_plan FOREIGN KEY(id_plan) REFERENCES "Grupo 6 - T2"."PLANS" (id_plan);



ALTER TABLE "Grupo 6 - T2"."MOVIES" ADD CONSTRAINT pk_movie PRIMARY KEY(id_movie);



ALTER TABLE "Grupo 6 - T2"."SERIES" ADD CONSTRAINT pk_serie PRIMARY KEY(id_serie);


ALTER TABLE "Grupo 6 - T2"."CHAPTERS_SERIES" ADD CONSTRAINT pk_chapter PRIMARY KEY(id_chapter);
--foraneas
ALTER TABLE "Grupo 6 - T2"."CHAPTERS_SERIES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);


ALTER TABLE "Grupo 6 - T2"."CATEGORIES" ADD CONSTRAINT pk_category PRIMARY KEY(id_category);


ALTER TABLE "Grupo 6 - T2"."MOVIES_CATEGORIES" ADD CONSTRAINT pk_movie_category PRIMARY KEY(id_movie, id_category);
--foraneas
ALTER TABLE "Grupo 6 - T2"."MOVIES_CATEGORIES" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);
ALTER TABLE "Grupo 6 - T2"."MOVIES_CATEGORIES" ADD CONSTRAINT fk_category FOREIGN KEY(id_category) REFERENCES "Grupo 6 - T2"."CATEGORIES" (id_category);


ALTER TABLE "Grupo 6 - T2"."SERIES_CATEGORIES" ADD CONSTRAINT pk_serie_category PRIMARY KEY(id_serie, id_category);

ALTER TABLE "Grupo 6 - T2"."SERIES_CATEGORIES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);
ALTER TABLE "Grupo 6 - T2"."SERIES_CATEGORIES" ADD CONSTRAINT fk_category FOREIGN KEY(id_category) REFERENCES "Grupo 6 - T2"."CATEGORIES" (id_category);


ALTER TABLE "Grupo 6 - T2"."FAVORITE_MOVIES" ADD CONSTRAINT pk_favorites_movies PRIMARY KEY(id_user, id_movie);
--foraneas
ALTER TABLE "Grupo 6 - T2"."FAVORITE_MOVIES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."FAVORITE_MOVIES" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie); 


ALTER TABLE "Grupo 6 - T2"."FAVORITE_SERIES" ADD CONSTRAINT pk_favorites_series PRIMARY KEY(id_user, id_serie);
--foraneas
ALTER TABLE "Grupo 6 - T2"."FAVORITE_SERIES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."FAVORITE_SERIES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);



ALTER TABLE "Grupo 6 - T2"."ACTORS" ADD CONSTRAINT pk_actor PRIMARY KEY(id_actor);


ALTER TABLE "Grupo 6 - T2"."MOVIES_ACTORS" ADD CONSTRAINT pk_movies_actors PRIMARY KEY(id_actor, id_movie);
--foraneas
ALTER TABLE "Grupo 6 - T2"."MOVIES_ACTORS" ADD CONSTRAINT fk_actor FOREIGN KEY(id_actor) REFERENCES "Grupo 6 - T2"."ACTORS" (id_actor);
ALTER TABLE "Grupo 6 - T2"."MOVIES_ACTORS" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);


ALTER TABLE "Grupo 6 - T2"."SERIES_ACTORS" ADD CONSTRAINT pk_serie_actors PRIMARY KEY(id_actor, id_serie);
--foraneas
ALTER TABLE "Grupo 6 - T2"."SERIES_ACTORS" ADD CONSTRAINT fk_actor FOREIGN KEY(id_actor) REFERENCES "Grupo 6 - T2"."ACTORS" (id_actor);
ALTER TABLE "Grupo 6 - T2"."SERIES_ACTORS" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);


ALTER TABLE "Grupo 6 - T2"."COUNTRIES" ADD CONSTRAINT pk_country PRIMARY KEY(id_country);


ALTER TABLE "Grupo 6 - T2"."ZONES" ADD CONSTRAINT pk_deparment PRIMARY KEY(id_zone);
--foraneas
ALTER TABLE "Grupo 6 - T2"."ZONES" ADD CONSTRAINT fk_country FOREIGN KEY(id_country) REFERENCES "Grupo 6 - T2"."COUNTRIES" (id_country);


ALTER TABLE "Grupo 6 - T2"."CITIES" ADD CONSTRAINT pk_city PRIMARY KEY(id_city);
--foraneas
ALTER TABLE "Grupo 6 - T2"."ZONES" ADD CONSTRAINT fk_zone FOREIGN KEY(id_zone) REFERENCES "Grupo 6 - T2"."ZONES" (id_zone);


ALTER TABLE "Grupo 6 - T2"."LANGUAGES" ADD CONSTRAINT pk_language PRIMARY KEY(id_language);


ALTER TABLE "Grupo 6 - T2"."SERIES_LANGUAGES" ADD CONSTRAINT pk_series_languages PRIMARY KEY(id_serie, id_language);
--foraneas
ALTER TABLE "Grupo 6 - T2"."SERIES_LANGUAGES" ADD CONSTRAINT fk_language FOREIGN KEY(id_language) REFERENCES "Grupo 6 - T2"."LANGUAGES" (id_language);
ALTER TABLE "Grupo 6 - T2"."SERIES_LANGUAGES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);


ALTER TABLE "Grupo 6 - T2"."MOVIES_LANGUAGES" ADD CONSTRAINT pk_movies_languages PRIMARY KEY(id_movie, id_language);
--foraneas
ALTER TABLE "Grupo 6 - T2"."MOVIES_LANGUAGES" ADD CONSTRAINT fk_language FOREIGN KEY(id_language) REFERENCES "Grupo 6 - T2"."LANGUAGES" (id_language);
ALTER TABLE "Grupo 6 - T2"."MOVIES_LANGUAGES" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);


ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_SERIES" ADD CONSTRAINT pk_view_time_series PRIMARY KEY(id_serie, id_user, id_profile);
--foraneas
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_SERIES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_SERIES" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_SERIES" ADD CONSTRAINT fk_profile FOREIGN KEY(id_profile) REFERENCES "Grupo 6 - T2"."PROFILES" (id_profile);


ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_MOVIES" ADD CONSTRAINT pk_view_time_movies PRIMARY KEY(id_movie, id_user, id_profile);
--foraneas
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_MOVIES" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_MOVIES" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);
ALTER TABLE "Grupo 6 - T2"."VIEW_TIME_MOVIES" ADD CONSTRAINT fk_profile FOREIGN KEY(id_profile) REFERENCES "Grupo 6 - T2"."PROFILES" (id_profile);


ALTER TABLE "Grupo 6 - T2"."MOVIES_RATING" ADD CONSTRAINT pk_movies_rating PRIMARY KEY(id_movie, id_user);
--foraneas
ALTER TABLE "Grupo 6 - T2"."MOVIES_RATING" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."MOVIES_RATING" ADD CONSTRAINT fk_movie FOREIGN KEY(id_movie) REFERENCES "Grupo 6 - T2"."MOVIES" (id_movie);


ALTER TABLE "Grupo 6 - T2"."SERIES_RATING" ADD CONSTRAINT pk_series_rating PRIMARY KEY(id_serie, id_user);
--foraneas
ALTER TABLE "Grupo 6 - T2"."SERIES_RATING" ADD CONSTRAINT fk_user FOREIGN KEY(id_user) REFERENCES "Grupo 6 - T2"."USERS" (id_user);
ALTER TABLE "Grupo 6 - T2"."SERIES_RATING" ADD CONSTRAINT fk_serie FOREIGN KEY(id_serie) REFERENCES "Grupo 6 - T2"."SERIES" (id_serie);

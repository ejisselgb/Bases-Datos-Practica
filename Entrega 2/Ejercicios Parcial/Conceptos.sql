------------------------- SELECT --------------------------------------
--                  Obtener información

-- SELECTE información FROM tabla WHERE condición;

select nombre_usuario, id_usuario*2 from "Grupo 1"."CUENTA"
where id_usuario = 1 or id_perfiles = 2;

select id_usuario from "Grupo 1"."CUENTA";

select * from "Grupo 1"."CUENTA";

-- LIMIT N := Muestra solo un nueméro de registros N --> posición N-1
select * from "Grupo 1"."CUENTA" LIMIT 2;

-- OFFSET N := Muestra a partir de la posición N
select * from "Grupo 1"."CUENTA" OFFSET 3;

-- LIMIT N + OFFSET M:= Muestra un número N de posiciones a partor de la posición M
select * from "Grupo 1"."CUENTA" LIMIT 1 OFFSET 3;
select * from "Grupo 1"."CUENTA" LIMIT 2 OFFSET 3;

-- Orden alfabético
select * from "Grupo 1"."CUENTA" order by nombre_usuario;
select * from "Grupo 1"."CUENTA" order by membresia;

-- Cuenta registros
SELECT COUNT(*)  
FROM "Grupo 1"."CUENTA"
WHERE id_usuario =1 ;  



------------------------------ JOIN ---------------------------------
--                    Consultas combinadas
SELECT * FROM "Grupo 1"."PELICULAS";
SELECT * FROM "Grupo 1"."CALIFICACION";

-- SELECT <select_list>
-- FROM <table_A> as <alias>
-- INER JOIN <table_b> as <alias>
-- ON A.key = B.key;

-- INER JOIN := Valores que coinciden:

SELECT 
	-- pe.id_pelicula,
	pe.titulo,
	cal.likes,
	cal.comentarios
FROM
	"Grupo 1"."PELICULAS" as pe
INNER JOIN "Grupo 1"."CALIFICACION" as cal
ON pe.id_pelicula = cal.id_pelicula ORDER BY pe.titulo;


SELECT id_pelicula FROM "Grupo 1"."PELICULAS"
UNION ALL
SELECT id_pelicula FROM "Grupo 1"."CALIFICACION";

-- PRODUCTO CARTESIANO 
SELECT 
	pe.id_pelicula,
	cal.comentarios
FROM "Grupo 1"."PELICULAS" as pe, "Grupo 1"."CALIFICACION" as cal ORDER BY pe.id_pelicula;


-- PROYECCIÓN

SELECT DISTINCT id_pelicula
FROM "Grupo 1"."PELICULAS";
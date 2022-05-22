---------------- INSERTS ---------------------------------------------------------------------------------------

-- Usuarios

INSERT INTO  
    "Grupo 7 - T2"."USUARIOS" (id_usuario, contrasena, correo, registro_login, tarjeta, telefono)
VALUES
    ('U01', 'frozen123', 'pepepe@correo.com', 'Ultimo ingreso: 12:03:34','3723581307', '2-200-06'),
    ('U02', 'monotree1', 'oliviah@correo.com', 'Ultimo ingreso: 08:56:14','3467635010', '2-204-39'),
    ('U03', 'lionelmessi', 'vaal@correo.com', 'Ultimo ingreso: 10:45:24','3445139747', '5 942-40'),
    ('U04', 'ilichil127', 'nana.op@correo.com', 'Ultimo ingreso: 02:00:34','3725022226', '7 320-98'),
    ('U05', 'excalibur.saber28', 'shirou28@correo.com', 'Ultimo ingreso: 09:02:56','3495619655', '6 348-94'),
    ('U06', 'sshisaki28', 'shisaki@correo.com', 'Ultimo ingreso: 05:00:43','3701517685', '8 744-68'),
    ('U07', 'lovemotion', 'chuu@correo.com', 'Ultimo ingreso: 14:23:44','3775968967', '4 506-18'),
    ('U08', 'paris123', 'emily@correo.com', 'Ultimo ingreso: 19:22:46','3473071369', '5 827-92'),
    ('U09', 'littleprince1', 'voyager@correo.com', 'Ultimo ingreso: 20:42:12','341907468', '4 480-39'),
    ('U010', 'princessknight', 'yuuuki@correo.com', 'Ultimo ingreso: 15:23:03','3716213964', '8 379-26'),
    ('U011', 'rezeroxd', 'emilia@correo.com', 'Ultimo ingreso: 18:09:12','3476393442', '7 883-10'),
    ('U012', 'nekokitsune', 'fubuki@correo.com', 'Ultimo ingreso: 16:05:24','3409759625', '5 787-15'),
    ('U013', 'ppt123456', 'jinsoul@correo.com', 'Ultimo ingreso: 04:03:00','3449028504', '2 777-13'),
    ('U014', 'bingxiling', 'vivi@correo.com', 'Ultimo ingreso: 11:54:23','3739864050', '4 238-01'),
    ('U015', 'nekoooooooo1', 'tommy@correo.com', 'Ultimo ingreso: 10:05:25','3702632325', '4 582-53');


-- Perfiles

INSERT INTO 
    "Grupo 7 - T2"."PERFILES" (id_perfil, id_perfiles_usuario, id_plan, nombre_perfil, biografia, foto_perfil)
VALUES 
    ('PF101','PU01', 'PL01', 'pepepe10', 'me gusta el anime :D', 'https://www.movieseafit.com/pepepe10/pepepe10.jpg'),
    ('PF102','PU01', 'PL01', 'roberta11', 'me gustan las novelas', 'https://www.movieseafit.com/roberta11/roberta11.jpg'),
    ('PF201','PU02', 'PL02', 'olivia.h', 'quisiera ver kdramas el resto de mi vida, army :p', 'https://www.movieseafit.com/olivia-h/olivia-h.jpg'),
    ('PF202','PU02', 'PL02', 'chuu', 'chuu can do it', 'https://www.movieseafit.com/chuu/chuu.jpg'),
    ('PF301','PU03', 'PL02', 'vaal', 'i like to watch priconne with my bf', 'https://www.movieseafit.com/vaal/vaal.jpg'),
    ('PF302','PU03', 'PL02', 'choerry', 'love cherry motion', 'https://www.movieseafit.com/choerry/choerry.jpg'),
    ('PF401','PU04', 'PL02', 'nana_op', 'esta cuenta la utilizamos mis hijos y yo', 'https://www.movieseafit.com/nana-op/nana-op.jpg'),
    ('PF402','PU04', 'PL02', 'haechan', 'twenty one twenty five lover ', 'https://www.movieseafit.com/haechan/haechan.jpg'),
    ('PF501','PU05', 'PL03', 'emi.shirou', 'im the bone of my sword...', 'https://www.movieseafit.com/emi-shirou/emi-shirou.jpg'),
    ('PF502','PU05', 'PL03', 'mitsukiyo', 'the green letter enjoyer', 'https://www.movieseafit.com/mitsukiyo/mitsukiyo.jpg'),
    ('PF601','PU06', 'PL03', 'altersaber28', 'me gusta ver peliculas para desestresarme', 'https://www.movieseafit.com/altersaber28/altersaber28.jpg'),
    ('PF602','PU06', 'PL03', 'kimlip', 'danmachi, dont go, pls', 'https://www.movieseafit.com/kimlip/kimlip.jpg'),
    ('PF701','PU07', 'PL02', 'hyunjin1', 'i cant sleep because of you', 'https://www.movieseafit.com/hyunjin1/hyunjin1.jpg'),
    ('PF702','PU07', 'PL02', 'hanniehae', 'alguien que me recomiende dramas, porfa', 'https://www.movieseafit.com/jun/jun.jpg'),
    ('PF801','PU08', 'PL03', 'bojji', 'im so fuckin strong, and cute', 'https://www.movieseafit.com/bojji/bojji.jpg'),
    ('PF802','PU08', 'PL03', 'xiaoting', 'what do i do, i have no energy', 'https://www.movieseafit.com/xiaoting/xiaoting.jpg'),
    ('PF901','PU09', 'PL03', 'jockie12', 'loona tiene un drama, se llama woomanna', 'https://www.movieseafit.com/jockie12/jockie12.jpg'),
    ('PF902','PU09', 'PL03', 'jiwon', 'fromis_9 stan', 'https://www.movieseafit.com/jiwon/jiwon.jpg'),
    ('PF111','PU010', 'PL02', 'valen', 'shrek 2 es la mejor pelicula del mundo entero', 'https://www.movieseafit.com/valen/valen.jpg'),
    ('PF112','PU010', 'PL02', 'shiki.kun', 'me gusta mucho fate y spiderman', 'https://www.movieseafit.com/shikikun/shikikun.jpg'),
    ('PF211','PU011', 'PL03', 'lauraos', 'harry potter <33333', 'https://www.movieseafit.com/lauraos/lauraos.jpg'),
    ('PF212','PU011', 'PL03', 'marta20', 'sortilegio y mujer con aroma de cafe', 'https://www.movieseafit.com/marta20/marta20.jpg'),
    ('PF311','PU012', 'PL01', 'xiovipa21', 'me gusta betty la fea <3', 'https://www.movieseafit.com/xiovipa21/xiovipa21.jpg'),
    ('PF312','PU012', 'PL01', 'sinb', 'purr, kaboom and tamina', 'https://www.movieseafit.com/sinb/sinb.jpg'), 
    ('PF411','PU013', 'PL03', 'gfriend', 'para cuando segunda temporada de one piece?', 'https://www.movieseafit.com/gfriend/gfriend.jpg'),
    ('PF412','PU013', 'PL03', 'loveryan', 'the mask is the best movie', 'https://www.movieseafit.com/loveryan/loveryan.jpg'), 
    ('PF511','PU014', 'PL02', 'hyolyn', 'really liked loonas shake it', 'https://www.movieseafit.com/hyolyn/hyolyn.jpg'),
    ('PF512','PU014', 'PL02', 'eva12', 'tell me now...', 'https://www.movieseafit.com/eva12/eva12.jpg'),
    ('PF611','PU015', 'PL03', 'gowonnie', 'rosy rosy rosyyyyyyyy', 'https://www.movieseafit.com/gowonnie/gowonnie.jpg'),
    ('PF612','PU015', 'PL03', 'monica_perez', 'pasion de gavilanes me gusta', 'https://www.movieseafit.com/monica_perez/monica_perez.jpg');

-----Perfiles_Usuarios

INSERT INTO 
    "Grupo 7 - T2"."PERFILES_USUARIO" (id_perfiles_usuario, id_perfil, id_usuario)
VALUES 
    ('PU01', 'PF101', 'U01'),
    ('PU02', 'PF102', 'U01'),
    ('PU03', 'PF201', 'U02'),
    ('PU04', 'PF202', 'U02'),
    ('PU05', 'PF301', 'U03'),
    ('PU06', 'PF302', 'U03'),
    ('PU07', 'PF401', 'U04'),
    ('PU08', 'PF402', 'U04'),
    ('PU09', 'PF501', 'U05'),
    ('PU10', 'PF502', 'U05'),
    ('PU11', 'PF601', 'U06'),
    ('PU12', 'PF602', 'U06'),
    ('PU13', 'PF701', 'U07'),
    ('PU14', 'PF702', 'U07'),
    ('PU15', 'PF801', 'U08'),
    ('PU16', 'PF802', 'U08'),
    ('PU17', 'PF901', 'U09'),
    ('PU18', 'PF902', 'U09'),
    ('PU19', 'PF111', 'U010'),
    ('PU20', 'PF112', 'U010'),
    ('PU21', 'PF211', 'U011'),
    ('PU22', 'PF212', 'U011'),
    ('PU23', 'PF311', 'U012'),
    ('PU24', 'PF312', 'U012'),
    ('PU25', 'PF411', 'U013'),
    ('PU26', 'PF412', 'U013'),
    ('PU27', 'PF511', 'U014'),
    ('PU28', 'PF512', 'U014'),
    ('PU29', 'PF611', 'U015'),
    ('PU30', 'PF612', 'U015');

-------------Planes


INSERT INTO 
    "Grupo 7 - T2"."PLANES" (id_plan, descripcion_plan, precio_plan, duracion_plan, calidad_video, numero_pantallas)
VALUES
    ('PL01', 'Basico', 'COP $10.000', '30 dias', '1080p', 4),
    ('PL02', 'Estandar', 'COP $15.000', '30 dias', '4k', 4),
    ('PL03', 'Premium', 20000, '30 dias', '4k-8k', 4);



---------------------------------Peliculas 




INSERT INTO 
    "Grupo 7 - T2"."PELICULAS" (id_pelicula, nombre_pelicula, duracion_pelicula, miniatura_pelicula, enlace_pelicula, restriccion_edad_pelicula, trailer_pelicula, ano_estreno_pelicula, sinopsis_pelicula)
VALUES
    ('PE01', 'Sword Art Online : Ordinal Scale', '02:30:00', 'https://www.movieseafit.com/Sword-Art-Online-Ordinal-Scale/SAO-OS.jpg', 'https://www.movieseafit.com/Sword-Art-Online-Ordinal-Scale/8LniDTd1X06M0lAoaOVl1A%3d%3d', '+7', 'https://youtu.be/VNxxReVeVDI', '2016', 'En 2026, una nueva máquina llamada Augma se desarrolla para competir contra el NerveGear y su sucesor, el Amusphere. Un dispositivo portátile de próxima generación, el Augma no tiene una función de inmersiva completa como sus predecesores. En su lugar, utiliza Realidad Aumentada (AR) para introducir a los jugadores en el juego. Es seguro, fácil de usar y permite que los usuarios jueguen mientras están conscientes, lo que lo convierte en un éxito instantáneo en el mercado. El juego más popular en el sistema es "Ordinal Scale" (OS), un ARMMORPG desarrollado exclusivamente para el Augma. Asuna y la banda ya han estado tocando OS por un tiempo, y pronto Kirito decide unirse a ellos. Sin embargo, están a punto de descubrir que Ordinal Scale no es todo diversión y juegos.' ),
    ('PE02', 'Fate Stay Night: Heavens Feel', '02:55:30', 'https://www.movieseafit.com/Fate-Stay-Night-Heavens-Feel/FSN-HF.jpg', 'https://www.movieseafit.com/Fate-Stay-Night-Heavens-Feel/14BalPUyUkKKHO4JiivU0A%3d%3d', '+18', 'https://youtu.be/r_sf0-o9tS0',  '2017' , 'Una Guerra del Santo Grial como nunca ha habido antes está a punto de comenzar. Sakura Matou acude cada día a la residencia de los Emiya, albergando el sueño de poder vivir plácida y pacíficamente junto a Shiro, único miembro de dicha familia. Sin embargo, se encuentran en los albores de la contienda… Se abre el telón por última vez! Comienza la mayor Guerra del Santo Grial conocida hasta ahora…! La última y definitiva ruta, la de Sakura, comienza por fin! Se abre aquí el telón de la verdadera Guerra del Santo Grial!' ),
    ('PE03', 'Encanto', '01:50:05', 'https://www.movieseafit.com/Encanto/ENCANTO.jpg', 'https://www.movieseafit.com/Encanto/u3%2bstfwv%2b0eF9l9rSLkRXg%3d%3d', 'ALL', 'https://youtu.be/E4dCY_DvT-4', '2021', 'Cuenta la historia de una familia extraordinaria, los Madrigal, que viven escondidos en las montañas de Colombia, en una casa mágica situada en un enclave maravilloso llamado Encanto. La magia de Encanto ha dotado a todos los niños de la familia un don único, desde la súper fuerza hasta el poder de curar... Pero se olvidó de un miembro de la familia: Mirabel. Cuando ésta descubre que la magia que rodea Encanto está en peligro, decide que ella, la única Madrigal normal, podría ser la última esperanza de su extraordinaria familia.' ),
    ('PE04', 'Shrek 2', '01:59:24', 'https://www.movieseafit.com/Shrek-2/SHREK2.jpg', 'https://www.movieseafit.com/Shrek-2/TrKFWR3%2b0kKf6pFRqswKWw%3d%3d', 'ALL', 'https://youtu.be/xBxVgh-kgAI', '2012', 'Cuando Shrek y la princesa Fiona regresan de su luna de miel, los padres de ella los invitan a visitar el reino de Muy Muy Lejano para celebrar la boda. Para Shrek, al que nunca abandona su fiel amigo Asno, esto constituye un gran problema. Los padres de Fiona, por su parte, no esperaban que su yerno tuviera un aspecto semejante y, mucho menos, que su hija hubiera cambiado tanto. Todo esto trastoca los planes del rey respecto al futuro del reino. Pero entonces entran en escena la maquiavélica Hada Madrina, su arrogante hijo el Príncipe Encantador y un minino muy especial: el Gato con Botas, experto cazador de ogros.'),
    ('PE05', 'Spirited Away', '03:10:02', 'https://www.movieseafit.com/Spirited-Away/SPIR-AWA.jpg', 'https://www.movieseafit.com/Spirited-Away/L7MWwpM9HkuwGIwUL1wy%2fQ%3d%3d', '+7', 'https://youtu.be/ByXuk9QqQkk', '2001', 'Chihiro es una niña de diez años que viaja en coche con sus padres. Después de atravesar un túnel, llegan a un mundo fantástico, en el que no hay lugar para los seres humanos, sólo para los dioses de primera y segunda clase. Cuando descubre que sus padres han sido convertidos en cerdos, Chihiro se siente muy sola y asustada.' );


----------------------------------Series


INSERT INTO 
    "Grupo 7 - T2"."SERIES" (id_serie, nombre_serie, cantidad_capitulos, miniatura_serie, enlace_serie, restriccion_edad_serie, trailer_serie, ano_estreno_serie, sinopsis_serie)
VALUES
    ('S01', 'Horimiya', '13', 'https://pics.filmaffinity.com/horimiya_hori_san_to_miyamura_kun-449536772-large.jpg', 'https://www.movieseafit.com/Horimiya/zJNGQSmCD0OX%2f%2f59nA9PTA%3d%3d', '+12', 'https://youtu.be/CNs2IZQZcyI', '2016', 'En el instituto, Hori-san es una chica frívola y popular, pero en casa es pragmática, seria y responsable. Miyamura-kun parece un chico otaku y apático en el instituto, pero en realidad es un atractivo chico lleno de tatuajes y piercings. Cuando ambos jóvenes se encuentran, un extraño romance comenzará en el instituto.' ),
    ('S02', 'Fate Grand Order: Absolute Demonic Front: Babylonia', '21', 'https://pics.filmaffinity.com/fate_grand_order_zettai_maju_sensen_babylonia-607421263-large.jpg', 'https://www.movieseafit.com/Fate-Grand-Order-Absolute-Demonic-Front-Babylonia/a%2fUjjacS%2bEuHK2T7iyy6xg%3d%3d', '+18', 'https://youtu.be/BIZN34WMi5E',  '2019' , 'Tras el éxito en la "Singularidad de Camelot", Ritsuka Fujimaru y Mash Kyrielight son asignados a la última singularidad de la iniciativa Grand Order: La Antigua Babilonia. Ritsuka y Mash deberán colaborar con el rey Gilgamesh para detener el ataque de unas misteriosas bestias, que han sido enviadas por los "Tres Dioses" para destruir la ciudad de Uruk.' ),
    ('S03', 'Ranking of Kings', '23', 'https://pics.filmaffinity.com/osama_ranking-457561732-large.jpg', 'https://www.movieseafit.com/Ousama-Ranking/3E2tarRBVkOB1JxZE7X3Nw%3d%3d', 'ALL', 'https://youtu.be/Tr1ahorojPg', '2021', 'Bojii es un príncipe bastante débil y sordo de nacimiento. Como hijo primogénito, lucha y sueña por convertirse en el mejor Rey del mundo. Aún así, la gente a su alrededor desconfía de él a sus espaldas. Bojii conoce a Kage, una sombra que fuera un miembro de un clan asesino cercenado hace años, que se convertirá en su primer y verdadero amigo.' ),
    ('S04', 'Danmachi', '13', 'https://pics.filmaffinity.com/dungeon_ni_deai_o_motomeru_no_wa_machigatte_iru_darouka-806259355-large.jpg', 'https://www.movieseafit.com/Danmachi/MgVd0dFBYkuoop%2flcLnYIA%3d%3d', '+12', 'https://youtu.be/nIhQMgbux-c', '2015', 'Un día, Vel es atacado por un minotauro. Antes de perecer a manos del monstruo es salvado por Eyes Warenstein, una aventurera de primerísimo nivel. El pobre Vel se queda prendado de ella inmediatamente, por lo que se propone convertirse en un aventurero tan bueno como ella. Sin embargo, más tarde se topa con Hestia, “la diosa lolita” debido a su baja estatura, que inmediatamente se enamorará de él.'),
    ('S05', 'Black Clover', '137', 'https://pics.filmaffinity.com/black_clover-508889490-large.jpg', 'https://www.movieseafit.com/Black-Clover/9wzUB86yXEycb4%2bdI5rdnA%3d%3d', '+7', 'https://youtu.be/TiIZ2NZxjMI', '2001', 'Asta y Yuno son dos huérfanos que fueron criados juntos desde su nacimiento en una iglesia en las afueras del Reino de Clover. En un mundo donde todos tienen poder mágico, Asta nació sin ningún tipo de poder. A diferencia de él, Yuno nació como un prodigio con inmenso poder mágico y gran talento para controlarlo. La historia sigue a los dos hermanos adoptivos mientras compiten para ver cuál de ellos se convertirá en el Rey Mago, el Caballero Mágico más fuerte del Reino de Clover.' );



------------------------------------Actores



INSERT INTO
    "Grupo 7 - T2"."ACTORES" (id_actor, nombre_actor)
VALUES 
    ('A01', 'Kazuto Kirigaya'),
    ('A02', 'Asuna Yuuki'),
    ('A03', 'Emiya Shirou'),
    ('A04', 'Arthur Pendragon'),
    ('A05', 'Mirabel Madrigal'),
    ('A06', 'Bruno Madrigal'),
    ('A07', 'Shrek'),
    ('A08', 'Lord Farquard'),
    ('A09', 'Chihiro Ogino'),
    ('A010', 'Kaonashi'),
    ('A011', 'Miyamura Izumi'),
    ('A012', 'Hori Kyouko'),
    ('A013', 'Mash Kyrielight'),
    ('A014', 'Gudao'),
    ('A015', 'Bojji-sama'),
    ('A016', 'Kage-kun'),
    ('A017', 'Bell Cranel'),
    ('A018', 'Hestia'),
    ('A019', 'Asta '),
    ('A020', 'Yuno');


-----------------------------------Actores_Peliculas



INSERT INTO 
    "Grupo 7 - T2"."ACTORES_PELICULAS" (id_actor_pelicula, id_actor, id_pelicula)
VALUES
    ('AP01', 'A01', 'PE01'),
    ('AP02', 'A02', 'PE01'),
    ('AP03', 'A03', 'PE02'),
    ('AP04', 'A04', 'PE02'),
    ('AP05', 'A05', 'PE03'),
    ('AP06', 'A06', 'PE03'),
    ('AP07', 'A07', 'PE04'),
    ('AP08', 'A08', 'PE04'),
    ('AP09', 'A09', 'PE05'),
    ('AP010', 'A010', 'PE05');



------------------------------------Actores_Series





INSERT INTO 
    "Grupo 7 - T2"."ACTORES_SERIES" (id_actor_series, id_actor, id_serie)
VALUES
    ('AS01', 'A011', 'S01'),
    ('AS02', 'A012', 'S01'),
    ('AS03', 'A013', 'S02'),
    ('AS04', 'A014', 'S02'),
    ('AS05', 'A015', 'S03'),
    ('AS06', 'A016', 'S03'),
    ('AS07', 'A017', 'S04'),
    ('AS08', 'A018', 'S04'),
    ('AS09', 'A019', 'S05'),
    ('AS010', 'A020', 'S05');




------------Categorias 


INSERT INTO 
    "Grupo 7 - T2"."CATEGORIAS" (id_categoria, descripcion_categoria)
VALUES
    ('CT01' , 'Tendencia'),
    ('CT02' , 'Top 10 Colombia'),
    ('CT03' , 'Nuevos Lanzamientos'),
    ('CT04' , 'Mi lista'),
    ('CT05' , 'Comedias Románticas'),
    ('CT06' , 'Terror'),
    ('CT07' , 'Dramas'),
    ('CT08' , 'Acción'),
    ('CT09' , 'Comedia'),
    ('CT010' , 'Romance');




-------------------------Suscripciones

    
INSERT INTO 
    "Grupo 7 - T2"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, fecha_pago, fecha_vencimiento, estado)

VALUES
    ('SUS01', 'U01', 'PL01', '2022-02-12 11:00:54', '2022-03-12 11:00:54', 'activa'),
    ('SUS02', 'U02', 'PL02', '2022-03-24 11:00:54', '2022-04-24 11:00:54', 'activa'),
    ('SUS03', 'U03', 'PL03', '2022-07-02 11:00:54', '2022-08-02 11:00:54', 'activa'),
    ('SUS04', 'U04', 'PL01', '2022-09-29 11:00:54', '2022-10-29 11:00:54', 'activa'),
    ('SUS05', 'U05', 'PL02', '2022-04-17 11:00:54', '2022-05-17 11:00:54', 'activa'),
    ('SUS06', 'U06', 'PL03', '2022-02-01 11:00:54', '2022-03-01 11:00:54', 'activa'),
    ('SUS07', 'U07', 'PL01', '2022-02-11 11:00:54', '2022-03-11 11:00:54', 'activa'),
    ('SUS08', 'U08', 'PL02', '2022-11-06 11:00:54', '2022-12-06 11:00:54', 'activa'),
    ('SUS09', 'U09', 'PL03', '2022-12-30 11:00:54', '2023-01-30 11:00:54', 'activa'),
    ('SUS10', 'U010', 'PL01', '2022-07-22 11:00:54', '2022-08-22 11:00:54', 'activa'),
    ('SUS11', 'U011', 'PL02', '2022-01-28 11:00:54', '2022-02-28 11:00:54', 'activa'),
    ('SUS12', 'U012', 'PL03', '2022-07-12 11:00:54', '2022-08-12 11:00:54', 'activa'),
    ('SUS13', 'U013', 'PL01', '2022-01-09 11:00:54', '2022-02-09 11:00:54', 'activa'),
    ('SUS14', 'U014', 'PL02', '2022-11-06 11:00:54', '2022-12-06 11:00:54', 'activa'),
    ('SUS15', 'U015', 'PL03', '2022-12-10 11:00:54', '2023-01-10 11:00:54', 'activa');

    
--------------------Categorias Peliculas

INSERT INTO
  "Grupo 7 - T2"."CATEGORIAS_PELICULAS" (id_categorias_peliculas, id_categoria, id_pelicula)
VALUES
  ('CP01', 'CT01', 'PE01'),
  ('CP02', 'CT04', 'PE01'),
  ('CP03', 'CT12', 'PE01'),
  ('CP04', 'CT08', 'PE01'),
  ('CP05', 'CT09', 'PE01'),
  ('CP06', 'CT01', 'PE02'),
  ('CP07', 'CT04', 'PE02'),
  ('CP08', 'CT12', 'PE02'),
  ('CP09', 'CT08', 'PE02'),
  ('CP10', 'CT01', 'PE03'),
  ('CP11', 'CT04', 'PE03'),
  ('CP12', 'CT12', 'PE03'),
  ('CP13', 'CT03', 'PE03'),
  ('CP14', 'CT01', 'PE04'),
  ('CP15', 'CT02', 'PE04'),
  ('CP16', 'CT04', 'PE04'),
  ('CP17', 'CT08', 'PE04'),
  ('CP18', 'CT09', 'PE04'),
  ('CP19', 'CT01', 'PE05'),
  ('CP20', 'CT03', 'PE05'),
  ('CP21', 'CT12', 'PE05');

--------------------Categorias Series


INSERT INTO
  "Grupo 7 - T2"."CATEGORIAS_SERIES" (id_categorias_series, id_categoria, id_serie)
VALUES
  ('CS01', 'CT01', 'S01'),
  ('CS02', 'CT02', 'S01'),
  ('CS03', 'CT12', 'S01'),
  ('CS04', 'CT05', 'S01'),
  ('CS05', 'CT010', 'S01'),
  ('CS06', 'CT01', 'S02'),
  ('CS07', 'CT04', 'S02'),
  ('CS08', 'CT12', 'S02'),
  ('CS09', 'CT08', 'S02'),
  ('CS10', 'CT01', 'S03'),
  ('CS11', 'CT04', 'S03'),
  ('CS12', 'CT12', 'S03'),
  ('CS13', 'CT03', 'S03'),
  ('CS14', 'CT01', 'S04'),
  ('CS15', 'CT02', 'S04'),
  ('CS16', 'CT04', 'S04'),
  ('CS17', 'CT08', 'S04'),
  ('CS18', 'CT09', 'S04'),
  ('CS19', 'CT01', 'S05'),
  ('CS20', 'CT03', 'S05'),
  ('CS21', 'CT12', 'S05');


--------------------Peliculas Favoritas 


INSERT INTO 
  "Grupo 7 - T2"."PELICULAS_FAVORITAS" (id_favorita, id_perfil, id_pelicula)
VALUES 
  ('F01' , 'PF101' , 'PE01'),
  ('F02' , 'PF102' , 'PE02'),
  ('F03' , 'PF201' , 'PE03'),
  ('F04' , 'PF202' , 'PE04'),
  ('F05' , 'PF301' , 'PE05'),
  ('F06' , 'PF302' , 'PE01'),
  ('F07' , 'PF401' , 'PE02'),
  ('F08' , 'PF402' , 'PE03'),
  ('F09' , 'PF501' , 'PE04'),
  ('F10' , 'PF502' , 'PE05'),
  ('F11' , 'PF601' , 'PE01'),
  ('F12' , 'PF602' , 'PE02'),
  ('F13' , 'PF701' , 'PE03'),
  ('F14' , 'PF702' , 'PE04'),
  ('F15' , 'PF801' , 'PE05'),
  ('F16' , 'PF802' , 'PE01'),
  ('F17' , 'PF901' , 'PE02'),
  ('F18' , 'PF902' , 'PE03'),
  ('F19' , 'PF111' , 'PE04'),
  ('F20' , 'PF112' , 'PE05'),
  ('F21' , 'PF211' , 'PE01'),
  ('F22' , 'PF212' , 'PE02'),
  ('F23' , 'PF311' , 'PE03'),
  ('F24' , 'PF312' , 'PE04'),
  ('F25' , 'PF411' , 'PE05'),
  ('F26' , 'PF412' , 'PE01'),
  ('F27' , 'PF511' , 'PE02'),
  ('F28' , 'PF512' , 'PE03'),
  ('F29' , 'PF611' , 'PE04'),
  ('F30' , 'PF612' , 'PE05');



--------------------Califiacion Peliculas



INSERT INTO 
  "Grupo 7 - T2"."CALIFICACION_PELICULA" (id_calificacion_pelicula, id_pelicula, id_perfil, calificacion_pelicula, comentarios_pelicula)
VALUES 
  ('CFP01', 'PE01', 'PF101', '5.5/10', 'Estuvo algo mala'),
  ('CFP02', 'PE01', 'PF102', '7.3/10', 'Estuvo entretenida'),
  ('CFP03', 'PE02', 'PF201', '9.5/10', 'Muy buena'),
  ('CFP04', 'PE02', 'PF202', '9.0/10', 'Muy buena'),
  ('CFP05', 'PE03', 'PF301', '4.5/10', 'Casi no me gustó'),
  ('CFP06', 'PE03', 'PF302', '8.0/10', 'Muy buena'),
  ('CFP07', 'PE04', 'PF601', '8.7/10', 'Muy buena'),
  ('CFP08', 'PE04', 'PF702', '9.3/10', 'Muy buena'),
  ('CFP09', 'PE05', 'PF901', '9.8/10', 'Muy buena'),
  ('CFP10', 'PE05', 'PF501', '10/10', 'Muy buena');













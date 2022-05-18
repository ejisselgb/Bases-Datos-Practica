SET DATESTYLE TO 'European';

INSERT INTO "Grupo8 - T2"."PAISES" VALUES
(1,'Colombia'),
(2,'Alemania'),
(3,'Estados Unidos'),
(4,'Francia'),
(5,'Italia'),
(6,'Japon');

INSERT INTO "Grupo8 - T2"."ZONAS" VALUES
(1,1,'Antioquia'),
(2,2,'Berlin'),
(3,3,'New York'),
(4,4,'Isla de Francia'),
(5,5,'Lacio'),
(6,6,'Kanto');

INSERT INTO "Grupo8 - T2"."CIUDADES" VALUES
(1,1,'Medellin'),
(2,2,'Berlin'),
(3,3,'New York'),
(4,4,'Paris'),
(5,5,'Roma'),
(6,6,'Tokio');

INSERT INTO "Grupo8 - T2"."USUARIOS" VALUES
(1,3,'gringou123@snapchat.com','2123244152','trump123','Thomas Thompson','4000001234567899'),
(2,1,'paisitaomepues@gmail.com','3106024382','arepita01','Hugo Restrepo','4000123456789010'),
(3,6,'ojitoschiquitos@anime.com','0332122323','omnivora2','Akira Tanaka','5524881234123456'),
(4,5,'mamamiiia@pizza.com','8009911991','pastasdoria','Ezio Auditore','1234567890123456'),
(5,2,'tonikroscrack@mundial.com','0893438014','fiurer12','Amalia Schmidt','0987654321098765'),
(6,4,'fgansesido@eifel.com','3312345678','chefsito','Jean Paul Dubois','4275315603725493'),
(7,1,'mapayala@yopmail.com','3135722392','soyelmapa','Maria Paula Alaya','5412751234567899'),
(8,1,'gpsancheza@gmail.com','3184536253','1q2w3e4r5t','Gian Paul Sanchez','4241380940034913'),
(9,1,'juanje@hotmail.com','3189643494','fepi12345','Juan Felipe Pinzon','4553123456789012'),
(10,3,'travissnop@gmail.com','2126344152','weedkend','Matthew Scott','4219181122304151'),
(11,1,'zetlix@valorant.com','3146348524','elviciadito','Samuel Palacios','3759876543210012'),
(12,2,'derhund@hotmail.com','0793468024','theavengers','Mick Scheider','5579459999999990'),
(13,5,'sergima@gmail.com','7002931951','mozarella','Sergi Mazitori','5123456789101234'),
(14,4,'austinbaguette@gmail.com','3412345735','ratatouille','Austin Dasmound','5522630000000000'),
(15,6,'fusayama@hotmail.com','0432157333','nintendoxd','Fusajiro Yamauchi','7867567823645978');

INSERT INTO "Grupo8 - T2"."IDIOMAS" VALUES
(1,'Español'),
(2,'Alemán'),
(3,'Inglés'),
(4,'Francés'),
(5,'Italiano'),
(6,'Japonés');

INSERT INTO "Grupo8 - T2"."PERFILES" VALUES
(1,8,'Español','Gian','https://gato-con-gafas','Terror, Thriller, Accion',18, NULL),
(2,8,'Español','Mama',NULL,'Accion, Comedia',44,'0201'),
(3,1,'Inglés','Greenguito','https://United-States-flagg','Drama, Comedia, Accion',34, NULL),
(4,2,'Español','OmePues','https://trovador-ome','Romance, Accion',52,NULL),
(5,3,'Japonés','Arigato','https://yoga-ying-yang','Guerra, Accion, Drama, Thriller', 23, NULL),
(6,4,'Italiano','Elpastas','https://spaghetti-boloñesa','Drama, Documental', 31, '0303'),
(7,5,'Alemán','toni', 'https://toni-kroos-jugando-futbol','Documental, Romance, Ciencia Ficcion', 29, '8000'),
(8,6,'Francés','Jean','https://baguette','Animada, Comedia, Fantasia', 44, '0204'),
(9,7,'Español','Mapayala','https://gato-sonriendo','Romance, Comedia, Drama, Animada', 19, NULL),
(10,9,'Español','juanfepi','https://gato-con-bigote','Comedia, Drama, Misterio, Thriller', 19, NULL),
(11,9,'Español','Familia','https://familia-en-sillon','Comedia, Drama, Animada, Ciencia Ficcion', NULL, NULL),
(12,10,'Inglés','Travis','https://travis-comiendo-crispetas','Thriller, Terror, Accion, Drama, Aventura', 25, '1224'),
(13,11,'Español','Zetlix','https://foto-de-valorant','Thriller, Ciencia Ficcion',17,NULL),
(14,12,'Alemán','derCineast','https://perro-viendo-pelicula','Documental, Guerra, Accion, Aventura',37,NULL),
(15,13,'Italiano','Sergi','https://foto-de-sergi','Documental, Drama, Romance',27,NULL),
(16,14,'Francés','baguetin','https://baguette','Drama, Accion, Thriller',29,NULL),
(17,15,'Japonés','Fusa','https://foto-de-nintendo','Accion, Animada, Aventura',48,'4343');


INSERT INTO "Grupo8 - T2"."PLANES" VALUES
(1,'El último y nos vamos... O no.','Se trata de el plan de un mes con valor de 10.000$ COL el cual incluye dos pantallas y calidad HD, querrás volverlo a comprar cuando este esté acabando.',10000),
(2,'El tacaño','Este es el plan de 15 días con valor de 5000$ COL el cual incluye una pantalla y calidad reducida a 720p.',5000),
(3,'Plan Generoso','Con este plan podrás gozar de 3 meses de peliculas con capacidad de tres pantallas a la vez, además podrás ver tus peliculas y series favoritas en calidad 2K, su precio es de 30.000$ COL.',30000),
(4,'Nos quedamos un rato','Este plan te brindará de 6 meses de peliculas con capacidad de 4 pantallas y 4K, ¿puedes creerlo?, esta es la mejor calidad de imagen del mercado, el precio de este plan es 75.000$ COL.', 75000);


INSERT INTO "Grupo8 - T2"."SUSCRIPCIONES" VALUES
(1,1,1,'14/04/2022','14/05/2022',NULL,false),
(2,2,1,'11/05/2022','11/06/2022','11/06/2022',true),
(3,3,2,'01/02/2022','16/02/2022',NULL,false),
(4,4,3,'22/03/2022','22/06/2022','22/06/2022',true),
(5,5,4,'05/03/2022','05/09/2022','05/09/2022',true),
(6,6,3,'09/02/2022','11/05/2022',NULL,false),
(7,7,1,'09/05/2022','01/06/2022',NULL,true),
(8,8,4,'10/04/2022','10/10/2022','10/10/2022',true),
(9,9,2,'07/05/2022','22/05/2022',NULL,true),
(10,10,3,'23/03/2022','23/06/2022',NULL,true),
(11,11,2,'24/02/2022','26/03/2022',NULL,false),
(12,12,1,'25/02/2022','11/03/2022',NULL,false),
(13,13,4,'02/01/2022','04/07/2022','04/07/2022',true),
(14,14,1,'15/01/2022','15/02/2022',NULL,false),
(15,15,3,'16/04/2022','16/07/2022',NULL,true);


INSERT INTO "Grupo8 - T2"."PELICULAS" VALUES
(1,'Mi mejor amiga, Ana Frank','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABUpsQca8O7m-ydmmJoDuwX9kM6umdL8IMC3BXm5K_oR0FetiG2kFiCADaE28YgJ9BftbR5JdUm3b-Li7tDhPDZ-lVSLYaoaIPxFrUqTIpjqVD4oKssrvtUalczdkKQtZbtyy7g.jpg?r=505',13,'01:43:14','04/04/2022','https://www.youtube.com/watch?v=zgaPatLUhgU&ab_channel=Tr%C3%A1ilersconDoblajeEspa%C3%B1olLatinobySoldierBoy','Basada en la amistad real entre Ana Frank y Hannah Goslar, desde la ocupación nazi en Ámsterdam hasta su desgarrador reencuentro en un campo de concentración.','https://www.youtube.com/watch?v=zgaPatLUhgU&ab_channel=Tr%C3%A1ilersconDoblajeEspa%C3%B1olLatinobySoldierBoy'),
(2,'Revenant: El renacido','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABeR2u3pA3RHLUccHIl0u9AAUxJ9idEY-MPM7aO0CT46dIb7JLhDMSpNYRdPTnWpCxXd96tv4_4XE-btIrhyyat0UxAjY0X0XR5RV.jpg?r=8ce',16,'2:36:23','16/12/2015','https://www.youtube.com/watch?v=I08JpMF9grc&ab_channel=Variablefiction','En la década de 1820, un cazador lucha por sobrevivir para vengarse de un despiadado mercenario que lo abandonó a su suerte junto al río Misuri.','https://www.youtube.com/watch?v=I08JpMF9grc&ab_channel=Variablefiction'),
(3,'Shrek','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABVJsQ4rEDYWbyuyEINKiH9YRGHJSKhaKtuKAeegTXQS1URSO2sl8JjZEzD3FzxiFBXUaZXac4UUhoaWs9gmaE_vmrm7-dS5mwM68.jpg?r=e24',7,'1:30:29','22/06/2001','https://www.youtube.com/watch?v=CwXOrWvPBPk&ab_channel=MovieclipsClassicTrailers','En una misión para recuperar a una hermosa princesa de las garras de un dragón feroz, un ogro gruñón forma un equipo con un burro ocurrente.','https://www.youtube.com/watch?v=CwXOrWvPBPk&ab_channel=MovieclipsClassicTrailers'),
(4,'Son como niños','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABdl_LS23BvvWfQG7CCWMiXlaIAjp-7h-kd3240wO3lyWXu6e3IOvceNrkAlw-4hCjO0mqdlAuM4tR-jLsJe6nQnalSx-Cs9YrJdN.jpg?r=d81', 13, '1:42:40','25/06/2010','https://www.youtube.com/watch?v=yMEDiKD7cyE&ab_channel=SonyPicturesLatam','Después de 30&nbsp;años, cinco&nbsp;amigos se reúnen en una casa del lago para llorar la pérdida de su antiguo entrenador de básquet y vuelven a descubrir la alegría de la niñez.','https://www.youtube.com/watch?v=yMEDiKD7cyE&ab_channel=SonyPicturesLatam'),
(5,'Proyecto X','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABYujRTxQICv24fD79WxuqfYtPTfYjIAwrYafsklMJUVm6lOY-wJ8Cc5lAaCtAnbU9vTU37mqhuomrluE7yH7jsq2NsWJn7_otvMA.jpg?r=973', 18, '1:28:04','16/03/2012','https://www.youtube.com/watch?v=fMJ4IBnU0Ks&t=10s&ab_channel=WarnerBros.PicturesEspa%C3%B1a','Cuando sus padres salen de la ciudad, un adolescente nada popular y sus dos amigos organizan una fiesta épica que cambiará sus vidas para siempre.','https://www.youtube.com/watch?v=fMJ4IBnU0Ks&t=10s&ab_channel=WarnerBros.PicturesEspa%C3%B1a'),
(6,'Forrest Gump','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABZoSji_bV1eH7uKgBUPZal0mmUCJLxIs43gVcxF_Vv91j3LQlbWlYj6trYrbvlV4lL7idO1YRuIGliKfJUAco-6R2qAa-wrBM-fu.jpg?r=deb', 16, '2:23:01','06/06/1994','https://www.youtube.com/watch?v=GIs2gpWpBiQ&ab_channel=JennyAvila','Con su ingenuo optimismo, un hombre tierno y encantador inspira a quienes lo rodean mientras acontecen los eventos más importantes de los años sesenta y setenta.','https://www.youtube.com/watch?v=GIs2gpWpBiQ&ab_channel=JennyAvila'),
(7,'Mamá','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABRcEmoP4M2Fp493OJNBrfkJyx4x2-XbNKiJ1dBkrDeARn195rxD2C4ZW3okT6zYu6bJWAZtL66eC49TZVVeWT3JMvfIPAP7iuotE.jpg?r=fec',16,'1:39:59','01/03/2013','https://www.youtube.com/watch?v=_Ifg_9v8Kwk&t=45s&ab_channel=TrailersyEstrenos','Tras la muerte de su madre dos niñas encuentran refugio con su tío, pero pronto se hace patente que no vienen solas.','https://www.youtube.com/watch?v=_Ifg_9v8Kwk&t=45s&ab_channel=TrailersyEstrenos'),
(8,'Rescatando al soldado Ryan','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABaqk49-5oeyhrrEa6FIjnTLNkyb3SLlU-aPmewFnL4fPneZpZ6jfJ0_a7Aw9XB7dzzY59Yt5GZyqheqhhhgQ5DZJfd6fzdpISfOW.jpg?r=77d',16,'2:50:17','12/03/1999','https://www.youtube.com/watch?v=TAyhMtyup3o&ab_channel=V%C3%ADctorAguado','Luego del Día&nbsp;D, el Cap.&nbsp;John Miller y un grupo de soldados se adentran en territorio enemigo para rescatar a un paracaidista que ha perdido a tres hermanos en combate.','https://www.youtube.com/watch?v=TAyhMtyup3o&ab_channel=V%C3%ADctorAguado'),
(9,'El misterio de Marilyn Monroe: Las cintas inéditas','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABa0ckUnitfvD1svvB7RD4inq_WrLL8Ih1nBt1VY0hSfLbgFswo-Qgk6yWyxnW53RNo5c7H9WMJxQRfZWtBZhEByOffyn-4zGE1J8pXRREbl4IGhkAnu5mF_vP5VQCk7wM9KlOA.jpg?r=b81',16,'1:41:43','27/04/2022','https://www.youtube.com/watch?v=Q6AmiGZwrmE&ab_channel=NetflixEspa%C3%B1a','Documental que explora el misterio en torno a la muerte de Marilyn Monroe mediante entrevistas inéditas a su círculo más cercano.','https://www.youtube.com/watch?v=Q6AmiGZwrmE&ab_channel=NetflixEspa%C3%B1a'),
(10,'En busca de la felicidad','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABaTQbZ149WykA0xbEdO4cCmOm4zfMTIYo1turkp6m3cHbZ17lSra0BzW903TNunx6mvSMGJ0vnHNWmxxT5auDwYft05uJRib6_0P.jpg?r=5f4',13,'1:57:29','23/02/2007','https://www.youtube.com/watch?v=rxtGMH7OrLc&ab_channel=Gertson0000','Un papá soltero con problemas económicos intenta sacar a su familia adelante. Su esfuerzo le llevará a entender el verdadero significado de la felicidad.','https://www.youtube.com/watch?v=rxtGMH7OrLc&ab_channel=Gertson0000'),
(11,'Siete almas','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABfOml_wY6ZEIdow-G1HLr6RdRdCu_AuB1HS0oBKBY3k1u8WJzOp0VquqVq5-7otnhaO9cuz445d3b86P716WhD1rDvlYq3xYOYXS.jpg?r=a8d',16,'2:03:13','19/12/2008','https://www.youtube.com/watch?v=zdMpeO5G4OQ&ab_channel=MovieclipsClassicTrailers','Ben Thomas busca una manera de expiar sus culpas y descubre que tiene el poder de cambiar el destino de siete extraños que merecen una segunda oportunidad.','https://www.youtube.com/watch?v=zdMpeO5G4OQ&ab_channel=MovieclipsClassicTrailers');

INSERT INTO "Grupo8 - T2"."SERIES" VALUES
(1,'Peaky Blinders','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABTHcfCFUpiE7d3Oljq8K5DFIvOrp-F_nzJWPAiZVtqNkhRfoJl9id2BoKdpzMkqp3AruWcvF40bXdPHLM85JNsvXPTK0p3XZFXKIht7R2jYbroCdq2YgmqBUdUifT9XIwdTQHA.jpg?r=c25',16,'https://www.youtube.com/watch?v=H282c9q2MUU&ab_channel=RakutenTVEspa%C3%B1a','1919. Inglaterra. Thomas Shelby lidera una conocida banda de Birmingham que avanza con ferocidad por el bajo mundo.','20/09/2013', 6),
(2,'Breaking Bad', 'https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABQWhP7ez-kZhA8UHCQypLmlGqKvt4TCa0Dx3SycQwMowPY1gq9IlKH0kffS83xX7eX94KFDknNmt3rdNawP4p9OD8tQIc-xhl8RR.jpg?r=711',16,'https://www.youtube.com/watch?v=rJnjxvgvkBM&ab_channel=AbrahamCortes','Un profesor de Química de secundaria con cáncer terminal se asocia a un exestudiante para asegurar el futuro de su familia al fabricar y vender metanfetamina.','20/01/2008', 5),
(3,'Bojack Horseman','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABb2b0azlu3gt6JdM-TwqeZWYahuM_0B41sbFOHt1sWo9GsIXW0M79xjP0iqZkUUc49XknT7XMsrh_x_EfThZVh3pZtmp021hGWz5nELPQNryyvg6lhN8LjzLVzTcmUMO3roApQ.jpg?r=0e4',16,'https://www.youtube.com/watch?v=i1eJMig5Ik4&ab_channel=Netflix','BoJack Horseman es un olvidado actor que supo vivir sus días de gloria gracias a una comedia televisiva, y que se enfrenta a las más duras crisis existenciales y adicciones mientras intenta volver a las grandes ligas.','22/08/2014',6),
(4,'Rick y Morty','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABT1R5FNhk3jsIpq-sN-YhQlgZLJW0aYMfqgAuUZ4eiHM-84y6A4euVLWgjrgfdy3XBpG8ajMk81EpOYzkyou4XJM5lADlF4hOsrX.jpg?r=a4a',16,'https://www.youtube.com/watch?v=_uUcMwsR5hg&ab_channel=immaplatypus','Después de haber estado desaparecido durante casi 20 años, Rick Sánchez llega de imprevisto a la puerta de la casa de su hija Beth y se va a vivir con ella y su familia utilizando el garaje como su laboratorio personal.','02/12/2013', 4),
(5,'Stranger Things','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABQ_-o6IZLShySL6XVat1lHxMcKlsiTcKicGF1ziXSVPXQwyZaEWHqZAyiYlbK1Q2TrD6EO4UlFrnwatGmaazpIOw9dOMGgVbDNBiXXnri0-rSKOFKiKyXDopfoXLQEJlHkgSHg.jpg?r=ad9',16,'https://www.youtube.com/watch?v=8XFCGvzbJS0&t=19s&ab_channel=Tr%C3%A1ilersconDoblajeEspa%C3%B1olLatinobySoldierBoy','Después de la extraña desaparición de un niño, un pueblo se encuentra ante un misterio que revela experimentos secretos, fuerzas sobrenaturales y a una niña muy especial.','15/06/2016', 3),
(6,'The Walking Dead','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABbL0ZLCnVf2tgqS1IoE3sSey94NDgJ8ROof7ZT_7GDBezJ2JIOyQPIWyqiY8zinJ9Ygp0EcnajLmM4dgREyLPU0qT4GS0gkWuNZf.jpg?r=da2',18,'https://www.youtube.com/watch?v=R1v0uFms68U&ab_channel=MahaloVideoGames','En el alba de un apocalipsis zombi, los sobrevivientes se aferran a la esperanza de la humanidad uniéndose para librar una batalla por su supervivencia.','31/10/2010', 10),
(7,'Dark','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABTCMpajB5bf-4v5eKwPMxSNB3spiRBiMpJ_5babB8bipAzloK4ErnQaFX90PhfuVxxG_06fH5Z62UqIn_BRrbYkJz0FeY9izrJjw7xzf974lhuXEBh2MqqawlfjH_ZBS_A0NYg.jpg?r=a13',16,'https://www.youtube.com/watch?v=IJ_AZCvCacw&ab_channel=CineMovsTrailers','La desaparición de un niño lleva a cuatro familias a una frenética búsqueda, mientras descubren un misterio que abarca tres generaciones.', '01/12/2017',3),
(8,'Black Mirror', 'https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABSTQmfmgtP4KTrXhgmr0dGIpWtF10mkO4O5RFxAI1TVaM_4PkbkwmJujxVwmJFUGOHN_lp_X-fAYu82j4FUAgPy6E6m4mGho4oUP1o9W_JKtmeHo094Qv25MjRVu89nKWC0UVA.jpg?r=337',16,'https://www.youtube.com/watch?v=vMXsvsG0jp8&ab_channel=FrancoRosselli','Antología de ciencia ficción dominada por el extrañamiento y la inminencia del futuro, donde la tecnología más avanzada choca contra los instintos más oscuros.','04/12/2011',5),
(9,'Los 100','https://occ-0-3-3934.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABRDSr_kjQVo76MYZ0zGZpP9f6eQ6zF7Vr1aBJ1UmhgLMusIo_xj5czHCrTBVVvDUUoUqY7KmIe5bwAF2I-Lmm3EueaAGm_bYlFWd.jpg?r=93c',16,'https://www.youtube.com/watch?v=aDrsItJ_HU4&ab_channel=WarnerBros.UK%26Ireland','Un siglo después de que la Tierra fuera devastada por un holocausto nuclear, cien habitantes de una estación espacial vuelven al planeta para determinar si es habitable.','19/03/2014', 7);

INSERT INTO "Grupo8 - T2"."TEMPORADAS_SERIES" VALUES
(1,1,1,6,'https://www.youtube.com/watch?v=oVzVdvGIC7U&t=4s&ab_channel=Alextvshows','Temporada 1'),
(2,2,1,7,'https://www.youtube.com/watch?v=HhesaQXLuRY&ab_channel=TrailerBlend', 'Temporada 1'),
(3,3,4,12,'https://www.youtube.com/watch?v=A9dGzO5knhU&t=24s&ab_channel=Settler', 'Temporada 4'),
(4,4,3,10,'https://www.youtube.com/watch?v=R3Vy-Ec6zjo&ab_channel=ElMixdelaSemana', 'Temporada 3'),
(5,5,2,9,'https://www.youtube.com/watch?v=hNOAjPqRpi0&ab_channel=Settler','Stranger Things 2'),
(6,6,1,6,'https://www.youtube.com/watch?v=aQvmRkxqceA&ab_channel=b%21nary','Temporada 1'),
(7,7,3,8,'https://www.youtube.com/watch?v=z2wPBG-GSJ0&ab_channel=NetflixLatinoam%C3%A9rica','Temporada 3'),
(8,8,3,6,'https://www.youtube.com/watch?v=nOuebtOSzME&ab_channel=NetflixLatinoam%C3%A9rica','Temporada 3'),
(9,9,6,13,'https://www.youtube.com/watch?v=XjBEdmynbTE&ab_channel=Crusshy','Temporada 6');

INSERT INTO "Grupo8 - T2"."CAPITULOS_SERIES" VALUES
(1,1,'Episodio 3',3,'00:55:14','Thomas planea acercarse a Billy Kimber en las carreras de Cheltenham y considera aceptar una oferta de simpatizantes del IRA que quieren comprarle las armas robadas.','26/09/2013','https://www.youtube.com/watch?v=oVzVdvGIC7U&t=4s&ab_channel=Alextvshows'),
(2,1,'Episodio 5',5,'00:56:22','Thomas lidia con un jefe del IRA obsesionado en vengar la muerte de su primo. Grace debe decidir si es leal a Campbell o a Thomas.','10/10/2013','https://www.youtube.com/watch?v=oVzVdvGIC7U&t=4s&ab_channel=Alextvshows'),
(3,2,'Principio del fin',1,'00:58:22','Un profesor de química de escuela secundaria recurre a la venta de drogas para mantener a su familia.','20/01/2008','https://www.youtube.com/watch?v=HhesaQXLuRY&ab_channel=TrailerBlend'),
(4,2,'Un loco puñado de nada',6,'00:48:17','Los efectos secundarios y el costo del tratamiento crecen, y Walt exige que Jesse encuentre un revendedor para sus drogas; Jesse termina en problemas con un exconvicto.','02/03/2008','https://www.youtube.com/watch?v=oVzVdvGIC7U&t=4s&ab_channel=Alextvshows'),
(5,3,'La vieja casa de los Sugarman',2,'00:26:34','BoJack se borra del mapa y aterriza en la casa en ruinas de sus abuelos en Michigan, donde se hace amigo de una libélula acechada por fantasmas del pasado.','08/09/2017','https://www.youtube.com/watch?v=A9dGzO5knhU&t=24s&ab_channel=Settler'),
(6,3,'Bajo tierra',7,'00:26:18','La lujosa colecta para la campaña del Sr.&nbsp;Peanutbutter da un giro aterrador. Mientras el caos se apodera de todo, BoJack y Diane se emborrachan.','08/09/2017','https://www.youtube.com/watch?v=A9dGzO5knhU&t=24s&ab_channel=Settler'),
(7,4,'Pepinillo Rick',3,'00:23:27','Rick se convierte en un pepinillo y, mientras el resto de la familia va a terapia, debe intentar averiguar cómo volver a ser humano.','06/08/2017','https://www.youtube.com/watch?v=R3Vy-Ec6zjo&ab_channel=ElMixdelaSemana'),
(8,4,'Descanso y Ricklajación',6,'00:22:42','Tras otra agotadora aventura, Rick y Morty deciden que necesitan unas vacaciones, pero las cosas se ponen un poco locas cuando prueban una máquina de desintoxicación.','27/08/2017','https://www.youtube.com/watch?v=R3Vy-Ec6zjo&ab_channel=ElMixdelaSemana'),
(9,5,'Capítulo cuatro: Will, el sabio',4,'00:46:50','La salud de Will empeora y Joyce se percata de la severidad del problema. Hopper intenta llegar hasta la raíz de la verdad, y Once se topa con algo inesperado.','27/10/2017','https://www.youtube.com/watch?v=hNOAjPqRpi0&ab_channel=Settler'),
(10,5,'Capítulo seis: El espía',6,'00:52:26','El vínculo entre Will y el monstruo sombra se intensifica mientras todos se preguntan cómo detenerlo. En otro lado, Dustin y Steve forman una alianza inesperada.','27/10/2017','https://www.youtube.com/watch?v=hNOAjPqRpi0&ab_channel=Settler'),
(11,6,'Los viejos tiempos',1,'01:07:17','Rick busca a su familia en un mundo aterrado por los muertos vivientes. Morgan y Duane ayudan a enseñarle a Rick las nuevas reglas de supervivencia.','31/10/2010','https://www.youtube.com/watch?v=aQvmRkxqceA&ab_channel=b%21nary'),
(12,6,'Código Wildfire',5,'00:45:07','Rick guía al grupo al CDC después del ataque. Jim debe tomar una terrible decisión de vida o muerte.','28/11/2010','https://www.youtube.com/watch?v=aQvmRkxqceA&ab_channel=b%21nary'),
(13,7,'Los sobrevivientes',2,'00:59:58','Martha viaja a 1888 para alertar a sus amigos sobre el desastre de 2020. Los habitantes presentes y pasados de Winden buscan a sus seres queridos desaparecidos.','27/06/2020','https://www.youtube.com/watch?v=z2wPBG-GSJ0&ab_channel=NetflixLatinoam%C3%A9rica'),
(14,7,'El origen',4,'01:04:24','Martha y Jonas viajan a 2052 y entrevén un futuro desalentador. En 1954, desaparecen dos habitantes de Winden, y Hannah recibe noticias inesperadas.','27/06/2020','https://www.youtube.com/watch?v=z2wPBG-GSJ0&ab_channel=NetflixLatinoam%C3%A9rica'),
(15,8,'Partida',2,'00:57:21','Un mochilero se queda sin dinero en la última etapa del viaje y accede a probar una revolucionaria plataforma de videojuegos que promete emociones muy reales.','21/10/2016','https://www.youtube.com/watch?v=nOuebtOSzME&ab_channel=NetflixLatinoam%C3%A9rica'),
(16,8,'San Junípero',4,'01:01:31','Un pueblo costero. 1987. Dos chicas, una tímida y la otra extrovertida, sienten una conexión instantánea que parece desafiar las leyes del tiempo y del espacio.','21/10/2016','https://www.youtube.com/watch?v=nOuebtOSzME&ab_channel=NetflixLatinoam%C3%A9rica'),
(17,9,'Los hijos de Gabriel',3,'00:42:17','Clarke acude a la diplomacia para lidiar con el líder de Sanctum. Fuera del escudo, un grupo de misteriosos invasores presenta una aguerrida batalla.','14/05/2019','https://www.youtube.com/watch?v=XjBEdmynbTE&ab_channel=Crusshy'),
(18,9,'Matrioshka',10,'00:42:43','Se gesta una revolución contra los Prime, quienes buscan vengarse por lo que hizo Kane. Clarke y Josephine luchan por sobrevivir cuando su cuerpo compartido agoniza.','16/06/2019','https://www.youtube.com/watch?v=XjBEdmynbTE&ab_channel=Crusshy');

INSERT INTO "Grupo8 - T2"."ACTORES" VALUES
(1,'Josephine Arendsen'),--mejor amiga
(2,'Aiko Beemsterboer'),--mejor amiga
(3,'Leonardo DiCaprio'),--El renacido
(4,'Tom Hardy'),--El renacido, peaky blinders
(5,'Domhnall Gleeson'),--el renacido, black mirror
(6,'Mike Myers'),--shrek
(7,'Eddie Murphy'),--shrek
(8,'Adam Sandler'),--niños
(9,'Kevin James'),--niños
(10,'Chris Rock'),--niños
(11,'Thomas Mann'),--proyecto
(12,'Oliver Cooper'),--proyecto
(13,'Tom Hanks'),--forrest gump, soldado ryan
(14,'Sally Field'),--forrest fump, spyder??
(15,'Jessica Chastain'),--mama
(16,'Nikolaj Coster-Waldau'),--mama
(17,'Barry Pepper'),--soldado, siete
(18,'Vin Diesel'),--soldado
(19,'Will Smith'),--busca, 7 almas
(20,'Rosario Dawson'),-- 7 almas
(21,'Woody Harrelson'),-- 7 almas
(22,'Anya Taylor-Joy'),--peaky
(23,'Paul Anderson'),--peaky, renacido
(24,'Aaron Paul'),--breaking, bojack
(25,'Bryan Cranston'),--braeking
(26,'Will Arnett'),--bojack
(27,'Justin Roiland'),--rick
(28,'Chris Parnell'),--rick
(29,'Gaten Matarazzo'),--stranger
(30,'Millie Boobby'),--stranger
(31,'Andrew Lincoln'),--walking
(32,'Lauren Cohan'),--walking
(33,'Louis Hofmann'),--dark
(34,'Oliver Masucci'),--dark
(35,'Miley Cyrus'),--BlackM
(36,'Jesse Plemons'),--Black
(37,'Thomas McDonell'),--Los100
(38,'Eliza Taylor');--Los100

INSERT INTO "Grupo8 - T2"."ACTORES_PELICULAS" VALUES
(1,1),
(2,1),
(3,2),
(4,2),
(5,2),
(6,3),
(7,3),
(8,4),
(9,4),
(10,4),
(11,5),
(12,5),
(13,6),
(13,8),
(14,6),
(15,7),
(16,7),
(17,8),
(17,11),
(18,8),
(19,10),
(19,11),
(20,11),
(21,11),
(23,2);


INSERT INTO "Grupo8 - T2"."ACTORES_SERIES" VALUES
(4,1),
(5,8),
(22,1),
(23,1),
(24,2),
(24,3),
(25,2),
(26,3),
(27,4),
(28,4),
(29,5),
(30,5),
(31,6),
(32,6),
(33,7),
(34,7),
(35,8),
(36,8),
(37,9),
(38,9);

INSERT INTO "Grupo8 - T2"."CATEGORIAS" VALUES
(1,'Thriller'),
(2,'Terror'),
(3,'Drama'),
(4,'Guerra'),
(5,'Romance'),
(6,'Accion'),
(7,'Aventura'),
(8,'Ciencia Ficcion'),
(9,'Comedia'),
(10,'Documental'),
(11,'Animada'),
(12,'Fantasia'),
(13,'Misterio'),
(14,'Crimen'),
(15,'Tragedia');

INSERT INTO "Grupo8 - T2"."PELICULAS_CATEGORIAS" VALUES
(1,4),
(1,3),
(2,7),
(2,1),
(2,3),
(3,9),
(3,11),
(3,12),
(3,7),
(4,9),
(5,9),
(6,5),
(6,9),
(6,3),
(7,1),
(7,2),
(8,4),
(8,6),
(8,3),
(9,10),
(9,13),
(10,3),
(11,3),
(11,5);

INSERT INTO "Grupo8 - T2"."SERIES_CATEGORIAS" VALUES
(1,14),
(1,3),
(1,6),
(2,14),
(2,1),
(2,3),
(2,15),
(3,11),
(3,3),
(3,9),
(4,7),
(4,9),
(5,1),
(5,2),
(5,3),
(6,1),
(6,2),
(6,3),
(6,8),
(7,1),
(7,3),
(7,13),
(8,1),
(8,3),
(8,8),
(9,3),
(9,6),
(9,8),
(9,7),
(9,13);

INSERT INTO "Grupo8 - T2"."IDIOMAS_PELICULAS" VALUES
(1,2),
(1,3),
(2,1),
(2,3),
(3,1),
(3,3),
(3,6),
(3,4),
(4,3),
(4,1),
(5,1),
(5,3),
(5,5),
(6,1),
(6,3),
(6,2),
(6,4),
(6,5),
(7,1),
(7,2),
(7,6),
(8,1),
(8,3),
(8,2),
(8,4),
(8,5),
(8,6),
(9,3),
(10,1),
(10,3),
(11,1),
(11,3);

INSERT INTO "Grupo8 - T2"."IDIOMAS_SERIES" VALUES
(1,1),
(1,3),
(1,4),
(2,1),
(2,3),
(3,1),
(3,3),
(3,2),
(3,4),
(3,6),
(4,1),
(4,6),
(4,3),
(4,5),
(5,1),
(5,3),
(5,6),
(5,2),
(6,1),
(6,3),
(6,4),
(7,3),
(7,2),
(7,4),
(8,3),
(8,5),
(8,6),
(9,1),
(9,3),
(9,2);

INSERT INTO "Grupo8 - T2"."PELICULAS_FAVORITAS" VALUES
(5,1),
(14,1),
(1,2),
(5,2),
(12,2),
(14,2),
(8,3),
(9,3),
(11,3),
(2,4),
(3,4),
(8,4),
(9,4),
(10,4),
(11,4),
(10,5),
(17,5),
(1,5),
(3,5),
(1,6),
(2,6),
(4,6),
(6,6),
(15,6),
(7,6),
(9,6),
(10,6),
(13,7),
(17,7),
(12,7),
(5,7),
(1,8),
(3,8),
(12,8),
(14,8),
(17,8),
(6,9),
(7,9),
(14,9),
(15,9),
(2,10),
(5,10),
(6,10),
(9,10),
(10,10),
(11,10),
(15,10),
(2,11),
(4,11),
(6,11),
(9,11),
(10,11),
(11,11),
(15,11);

INSERT INTO "Grupo8 - T2"."SERIES_FAVORITAS" VALUES
(1,1),
(5,1),
(15,1),
(12,1),
(1,2),
(3,2),
(5,2),
(12,2),
(13,2),
(16,2),
(3,3),
(5,3),
(8,3),
(16,3),
(1,4),
(3,4),
(5,4),
(7,4),
(13,4),
(12,4),
(9,5),
(10,5),
(16,5),
(17,5),
(1,6),
(3,6),
(12,6),
(13,6),
(17,6),
(2,7),
(3,7),
(5,7),
(7,7),
(10,7),
(12,7),
(13,7),
(17,7),
(2,8),
(3,8),
(5,8),
(9,8),
(10,8),
(11,8),
(13,8),
(14,8),
(17,8),
(5,9),
(9,9),
(10,9),
(12,9),
(13,9),
(14,9),
(17,9);

INSERT INTO "Grupo8 - T2"."CALIFICACION_PELICULAS" VALUES
(1,1,4,'Que pelicula tan aburrrridora ome',1),
(2,2,14,'guter film, empfehlenswert',4),
(3,3,9,'Me reí mucho viendola, ja ja ja',5),
(4,3,10,'Estuvo cómica y entretenida, pienso que es muy recomendable ver la en familia',4),
(5,4,5,'ははは lol',4),
(6,4,9,'Que pelicula tan chistosa jajaja',5),
(7,5,17,'このようなパーティーはいいでしょう, 残念ながら私はオタクです :(',3),
(8,6,6,'Era un bel film, mi è piaciuto molto.',4),
(9,7,12,'Yo man this film was spoooky, sheeeesh.',4),
(10,8,3,'What a great movie, i wonder if it is based on real events fr.',5),
(11,10,2,'Me encanta la manera de actuar de este tipo, increible.',5),
(12,10,11,'Buena pelicula, la vimos en familia y nos hizo reflexionar',5),
(13,11,11,'Esta pelicula nos hace pensar que debemos agradecer todo en la vida',5),
(14,11,13,'Me aburrí y me dormí',0);

INSERT INTO "Grupo8 - T2"."CALIFICACION_SERIES" VALUES
(1,1,1,'La verdad siento que es buena serie pero el primer capitulo es tan aburridor, que me da pereza seguir viendo',3),
(2,1,3,'U GOTTA WATCH THIS SERIE fr!!!',5),
(3,2,1,'La propia serie, le deberían dar un nobel, algo como nobel a mente maestra al director o no se...',5),
(4,2,12,'I`d like to cook my own crystal maaan :(. Nice serie',4),
(5,3,5,'私はうつ病にかかっています、私は自殺すると思います :D',3),
(6,4,13,'Soy zetlix, me gustaría una maquina como la de rick',4),
(7,5,9,'Me gusto mucho la serie, el grupo de amigos es super bonito <3',4),
(8,6,13,'Meros headshots mete Rick',4),
(9,6,12,'I wish there was a zombie apocalypse so i could kick some zombie butt',4),
(10,8,10,'Se me hace increíble pensar en lo que se puede llegar a convertir la sociedad humana en un futuro',4),
(11,8,15,NULL,2),
(12,6,1,NULL,3);

INSERT INTO "Grupo8 - T2"."TIEMPO_VISUALIZACION_PELICULAS" VALUES
(1,1,'00:21:19'),
(7,1,'1:40:00'),
(2,3,'00:35:34'),
(1,2,'2:30:15'),
(9,3,'1:30:00'),
(9,4,'1:40:13'),
(5,4,'1:38:04'),
(15,6,'2:20:05');

INSERT INTO "Grupo8 - T2"."TIEMPO_VISUALIZACION_SERIES" VALUES
(3,1,'00:54:00'),
(10,1,'00:23:24'),
(1,3,'00:57:00'),
(1,4,'00:47:00'),
(12,3,'00:57:00'),
(5,5,'00:26:00'),
(12,11,'1:06:58');
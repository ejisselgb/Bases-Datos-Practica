ALTER USER "avcoro" with PASSWORD 'avcoro987'

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE ACCOUNT
CREATE TABLE "Grupo 6".accounts (
    account_id varchar(20) NOT NULL,
    subscription_id varchar(20) NOT NULL,
    first_name varchar(20) NOT NULL,
    last_name varchar(30) NOT NULL,
    phone_number varchar(15),
    adress varchar(40),
    birthday DATE,
    creation_date DATE,
    country_id varchar(20) NOT NULL
);

-- ALTER TABLES FOR ACCOUNT
ALTER TABLE "Grupo 6"."accounts" ADD CONSTRAINT pk_accounts PRIMARY KEY (account_id);
ALTER TABLE "Grupo 6"."accounts" ADD CONSTRAINT fk_subscriptions FOREIGN KEY(subscription_id) REFERENCES "Grupo 6".subscriptions(subscription_id);
ALTER TABLE "Grupo 6"."accounts" ADD CONSTRAINT fk_country FOREIGN KEY(country_id) REFERENCES "Grupo 6".country (country_id);

-- INSERTS FOR ACCOUNT
INSERT INTO "Grupo 6"."accounts"(account_id, subscription_id, first_name, last_name,phone_number, adress, birthday, creation_date, country_id)
VALUES
('123456789', 'NAAA0001', 'Santiago', 'Gomez', '+5216565789863', 'Calle Agustin Lara N° 69B', '1979-02-18', '2020-02-03', 'MEX'),
('123456790', 'NAAA0002', 'Aisha', 'Brown', '+12016548558', '3000 Northwest 83rd Street Gainesville FR 32606-6210', '1999-12-25', '2019-11-02', 'USA'),
('123456791', 'NAAA0003', 'Laura', 'Hernandez', '+573205789825', 'Calle 10 N° 9 - 78', '2015-04-23', '2022-02-28', 'COL'),
('123456792', 'NAAA0004', 'Odeta', 'Meyer', '+4903046640', 'Tempelhofer Damm 12 ,12101 Berlín, Deutschland', '2002-03-18', '2021-06-25', 'ALE'),
('123456793', 'NAAA0005', 'Felix', 'Rousseau', '+330140463830', '78 rue Bonaparte 75006 Paris', '2007-07-07', '2019-08-15', 'FRA');

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE SUBSCRIPTION
CREATE TABLE "Grupo 6".subscriptions (
	subscription_id varchar(20) NOT NULL,
    account_id varchar(20),
	payment_status varchar(20),
	payment_date DATE,
	payment_information varchar(30),
	amount int
);

-- ALTER TABLES FOR SUBSCRIPTION
ALTER TABLE "Grupo 6"."subscriptions" ADD CONSTRAINT pk_account PRIMARY KEY(subscription_id);
ALTER TABLE "Grupo 6"."subscriptions" ADD CONSTRAINT fk_account FOREIGN KEY(account_id) REFERENCES "Grupo 6".accounts (account_id);

-- INSERTS FOR SUBSCRIPTION
INSERT INTO "Grupo 6"."subscriptions"(subscription_id, account_id, payment_status, payment_date, payment_information, amount)
VALUES
('subs123456789', '123456789', 'Paid', '2022-03-15', 'Credit card', 50),
('subs123456790', '123456790', 'Not paid', '2022-01-15', 'Gift card', 0),
('subs123456791', '123456791', 'Not paid', '2022-02-01', 'Gift card', 0),
('subs123456792', '123456792', 'Paid', '2022-03-21', 'Credit card', 15),
('subs123456793', '123456793', 'Paid', '2022-03-19', 'Credit card', 10);

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE PROFILE
CREATE TABLE "Grupo 6".profile (
	profile_id varchar(20) NOT NULL,
    account_id varchar(20),
	parent_control boolean,
	nickname varchar(10),
	langua varchar(20),
	favorites varchar(100)
);

-- ALTER TABLES FOR PROFILE
ALTER TABLE "Grupo 6"."profile" ADD CONSTRAINT pk_profile PRIMARY KEY(profile_id);
ALTER TABLE "Grupo 6"."profile" ADD CONSTRAINT fk_account FOREIGN KEY(account_id) REFERENCES "Grupo 6".accounts (account_id);

-- INSERTS FOR PROFILE
INSERT INTO "Grupo 6"."profile"(profile_id, account_id, parent_control, nickname, langua, favorites)
VALUES
('profile1123456789', '123456789', false, 'Santiago', 'Spanish', 'Below Zero, La mala educación, The wolfs call'),
('profile1123456790', '123456790', false, 'Isha', 'English', 'Leon the professional, Dont look up, Madagascar'),
('profile1123456791', '123456791', true, 'Lau', 'Spanish', 'How to train my dragon, Peppa pig, Spirit'),
('profile1123456792', '123456792', false, 'Omeyer', 'German', 'Naruto Shipuden, Anna, Dont kill me, The climb'),
('profile1123456793', '123456793', true, 'Thebest', 'French', 'Avatar, Cobra Kai, Kotaro lives alone, School of chocolate');

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE HISTORY
CREATE TABLE "Grupo 6".history (
	account_id varchar(20),
	profile_id varchar(20),
	last_viewed varchar(50),
	visualization_date DATE
);

-- ALTER TABLES FOR HISTORY
ALTER TABLE "Grupo 6"."history" ADD CONSTRAINT pk_history PRIMARY KEY(account_id,profile_id);
ALTER TABLE "Grupo 6"."history" ADD CONSTRAINT fk_account FOREIGN KEY(account_id) REFERENCES "Grupo 6".accounts (account_id);
ALTER TABLE "Grupo 6"."history" ADD CONSTRAINT fk_profile FOREIGN KEY(profile_id) REFERENCES "Grupo 6".profile (profile_id);

-- INSERTS FOR HISTORY
INSERT INTO "Grupo 6"."history"(account_id, profile_id, last_viewed, visualization_date)
VALUES
('123456789', 'profile1123456789', 'Archive 81', '2022-03-20'),
('123456790', 'profile1123456790', 'Magic for humans', '2022-01-14'),
('123456791', 'profile1123456791', 'Pets 2', '2022-01-31'),
('123456792', 'profile1123456792', 'Anna', '2022-03-20'),
('123456793', 'profile1123456793', 'Supergirl', '2022-03-20');

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE COUNTRY
CREATE TABLE "Grupo 6".country (
	country_id varchar(20) NOT NULL,
	ip_address varchar(15),
	age_restriction int
);

-- ALTER TABLES FOR COUNTRY
ALTER TABLE "Grupo 6"."country" ADD CONSTRAINT pk_country PRIMARY KEY(country_id);

-- INSERTS FOR COUNTRY
INSERT INTO "Grupo 6"."country"(country_id, ip_address, age_restriction)
VALUES
('MEX', '104.44.196.52', 18),
('USA', '206.71.50.230', 21),
('COL', '102.38.230.114', 18),
('ALE', '52.59.238.74', 18),
('FRA', '80.215.87.209', 18);
---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE STREAMS
CREATE TABLE "Grupo 6".streams (
	stream_id varchar(20) NOT NULL,
	account_id varchar(20),
	content_id varchar(20),
	time_counter int,
	stream_date DATE
);

-- ALTER TABLES FOR STREAMS
ALTER TABLE "Grupo 6"."streams" ADD CONSTRAINT pk_stream PRIMARY KEY(stream_id);
ALTER TABLE "Grupo 6"."streams" ADD CONSTRAINT fk_account FOREIGN KEY(account_id) REFERENCES "Grupo 6".accounts (account_id);
ALTER TABLE "Grupo 6"."streams" ADD CONSTRAINT fk_content FOREIGN KEY(content_id) REFERENCES "Grupo 6"."content" (content_id);

-- INSERTS FOR STREAMS
INSERT INTO "Grupo 6"."streams"(stream_id, account_id, content_id, time_counter, stream_date)
VALUES
('STR10000001', '123456789', 'CON10000001', 248, '2022-03-20'),
('STR10000002', '123456790', 'CON10000002', 160, '2022-01-14'),
('STR10000003', '123456791', 'CON10000003', 28, '2022-01-31'),
('STR10000004', '123456792', 'CON10000004', 119, '2022-03-19'),
('STR10000005', '123456793', 'CON10000005', 4001, '2022-03-21');

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE CONTENT
CREATE TABLE "Grupo 6"."content" (
	content_id varchar(20) NOT NULL,
	--subtitles_id varchar(20),
	--relationship_id varchar(20),
	title varchar(50),
	producer varchar(40),
	current_playing_time int,
	langua varchar(20),
	publish_date DATE,
	likes int,
	age_restriction varchar(15),
	genre varchar(15),
	episodes int,
	information varchar(120)
);

-- ALTER TABLES FOR CONTENT
ALTER TABLE "Grupo 6"."content" ADD CONSTRAINT pk_content PRIMARY KEY(content_id);
--ALTER TABLE "Grupo 6"."content" ADD CONSTRAINT fk_subtitles FOREIGN KEY(subtitles_id) REFERENCES "Grupo 6".subtitles (subtitles_id);
--ALTER TABLE "Grupo 6"."content" ADD CONSTRAINT fk_relationship FOREIGN KEY(relationship_id) REFERENCES "Grupo 6".relationship (relationship_id);

-- INSERTS FOR CONTENT
INSERT INTO "Grupo 6"."content"(content_id, title, producer, current_playing_time, langua, publish_date, likes, age_restriction, genre, episodes, information)
VALUES
('CON10000001', 'Archive 81', 'Rebecca Sonnenshine', 248, 'English', '2022-01-14', 378, 'Upper 16', 'TV Mysteries, Sci-Fi TV, TV Horror, US TV Shows',
8, 'An archivist takes a job restoring damaged videotapes and gets pulled into the vortex of a mystery involving the missing director and a demonic cult.'),
('CON10000002', 'Magic for humans', 'Adam Franklin', 160, 'English', '2018-08-17', 182, 'Upper 13', 'Reality TV, TV Comedies, US TV Shows',
19, 'From baffling people on the street to orchesteating elaborate tricks, Justing Willman blends goof-natured magic with grown-up laughs.'),
('CON10000003', 'Pets 2', 'Chris Renaud', 28, 'English', '2019-06-07', 75, 'Upper 7', 'Family movies, children & family movies, comedies',
1, 'House dogs Duke and Max get acqueinted with the familys tiny new human and adapt to life on a farm as their animal pals tackle new in the city'),
('CON10000004', 'Anna', 'Luc Besson', 19, 'English', '2019-06-21', 225, 'Upper 16', 'Spy movies, French, Action & Adventure',
1, 'Ready to leave a life of abuse, a woman becomes a KGB assassin and goes undercover as a model in Paris. But all deals are off when her cover is blown.'),
('CON10000005', 'Supergirl', 'Jesse Warn', 4001, 'English', '2015-10-26', 458, 'Upper 13', 'Sci-Fi TV, TV Shows based on comics, US TV shows, TV Action & Adventure',
126, 'The avert a disaster, Kara Danbers reveals her power as Supergirl, protector of National City');

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE COMMENTS
CREATE TABLE "Grupo 6".comments (
	comment_id varchar(20) NOT NULL,
	content_id varchar(20),
	profile_id varchar(20),
	likes int,
	comment_content varchar(200)
);

-- ALTER TABLES FOR COMMENTS
ALTER TABLE "Grupo 6"."comments" ADD CONSTRAINT pk_comment PRIMARY KEY(comment_id);
ALTER TABLE "Grupo 6"."comments" ADD CONSTRAINT fk_content FOREIGN KEY(content_id) REFERENCES "Grupo 6".content (content_id);
ALTER TABLE "Grupo 6"."comments" ADD CONSTRAINT fk_profile FOREIGN KEY(profile_id) REFERENCES "Grupo 6".profile (profile_id);

-- INSERTS FOR COMMENTS
INSERT INTO "Grupo 6"."comments"(comment_id, content_id, profile_id, likes, comment_content)
VALUES
('COM10000001', 'profile1123456789', 'CON10000001', 'Que serie tan bacana para los que nos gustan los tapes', 2),
('COM10000002', 'profile1123456790', 'CON10000002', 'Nice Serie', 5),
('COM10000003', 'profile1123456791', 'CON10000003', 'Me gusta el conejito :P', 3),
('COM10000004', 'profile1123456792', 'CON10000004', 'Too much Sci-Fi, I didnt like it', 0),
('COM10000005', 'profile1123456793', 'CON10000005', 'I wanna be a Supergirl', 2),

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE SUBTITLES
CREATE TABLE "Grupo 6".subtitles (
	subtitles_id varchar(20) NOT NULL,
	--relationship_id varchar(20),
	color varchar(10),
	langua varchar(20),
	size int,
	font varchar(50),
	shadow boolean

);

-- ALTER TABLES FOR SUBTITLES
ALTER TABLE "Grupo 6"."subtitles" ADD CONSTRAINT pk_subtitles PRIMARY KEY(subtitles_id);
--ALTER TABLE "Grupo 6"."subtitles" ADD CONSTRAINT fk_relationship FOREIGN KEY(relationship_id) REFERENCES "Grupo 6".relationship (relationship_id);

-- INSERTS FOR SUBTITLES "OJO CON LA PARTE DE RELATIONSHIP"
INSERT INTO "Grupo 6"."subtitles"(subtitles_id,  color, langua, size, font, shadow)
VALUES
('SUBT10000001', 'White', 'Spanish', 12, 'Arial', false),
('SUBT10000002', 'Black', 'English', 12, 'Calibri', false),
('SUBT10000003', 'White', 'France', 12, 'Time New Roman', true),
('SUBT10000004', 'Black', 'German', 12, 'Arial', true),
('SUBT10000005', 'White', 'Japanese', 12, 'Simbol', true);

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE RELATIONSHIP
CREATE TABLE "Grupo 6".relationship (
	relationship_id varchar(20) NOT NULL,
	content_id varchar(20),
	subtitles_id varchar(20)
);

-- ALTER TABLES FOR RELATIONSHIP
ALTER TABLE "Grupo 6"."relationship" ADD CONSTRAINT pk_relationship PRIMARY KEY(relationship_id);
ALTER TABLE "Grupo 6"."relationship" ADD CONSTRAINT fk_content FOREIGN KEY(content_id) REFERENCES "Grupo 6".content (content_id);
ALTER TABLE "Grupo 6"."relationship" ADD CONSTRAINT fk_subtitles FOREIGN KEY(subtitles_id) REFERENCES "Grupo 6".subtitles (subtitles_id);

-- INSERTS FOR RELATIONSHIP
INSERT INTO "Grupo 6"."relationship"(relationship_id, content_id, subtitles_id) 
VALUES
('RS1000000001','CON10000001', 'SUBT10000002'),
('RS1000000002','CON10000002', 'SUBT10000002'),
('RS1000000003','CON10000003', 'SUBT10000001'),
('RS1000000004','CON10000004', 'SUBT10000002'),
('RS1000000005','CON10000005', 'SUBT10000002');

---------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER USER "avcoro" with PASSWORD 'avcoro987'

CREATE TABLE "Grupo 6".accounts (
    account_id varchar(20) NOT NULL,
    name varchar(20) NOT NULL,
    last_name varchar(30) NOT NULL,
    phone_number varchar(15),
    adress varchar(40),
    birthday timestamp,
    creation_date timestamp,
    subscription_id varchar(20) NOT NULL,
    country_id varchar(20) NOT NULL
);

ALTER TABLE "Grupo 6"."accounts" ADD CONSTRAINT pk_accounts PRIMARY KEY (account_id);
ALTER TABLE "Grupo 6"."accounts" ADD CONSTRAINT fk_subscriptions FOREIGN KEY(subscription_id) REFERENCES "Grupo 6".subscriptions(subscription_id);
ALTER TABLE "Grupo 6"."accounts" ADD CONSTRAINT fk_country FOREIGN KEY(country_id) REFERENCES "Grupo 6".country (country_id);

CREATE TABLE "Grupo 6".subscriptions (
	subscription_id varchar(20) NOT NULL,
	payment_status varchar(20),
	payment_date timestamp,
	payment_information varchar(30),
	amount int,
	account_id varchar(20)
);

ALTER TABLE "Grupo 6"."subscriptions" ADD CONSTRAINT pk_account PRIMARY KEY(subscription_id);
ALTER TABLE "Grupo 6"."subscriptions" ADD CONSTRAINT fk_account FOREIGN KEY(account_id) REFERENCES "Grupo 6".accounts (account_id);

CREATE TABLE "Grupo 6".profile (
	profile_id varchar(20) NOT NULL,
	parent_control boolean,
	nickname varchar(10),
	language varchar(20),
	account_id varchar(20),
	favorites varchar(100)
);

ALTER TABLE "Grupo 6"."profile" ADD CONSTRAINT pk_profile PRIMARY KEY(profile_id);
ALTER TABLE "Grupo 6"."profile" ADD CONSTRAINT fk_account FOREIGN KEY(account_id) REFERENCES "Grupo 6".accounts (account_id);

CREATE TABLE "Grupo 6".history (
	last_viewed varchar(50),
	visualization_date timestamp,
	account_id varchar(20),
	profile_id varchar(20)
);

ALTER TABLE "Grupo 6"."history" ADD CONSTRAINT pk_history PRIMARY KEY(account_id,profile_id);
ALTER TABLE "Grupo 6"."history" ADD CONSTRAINT fk_account FOREIGN KEY(account_id) REFERENCES "Grupo 6".accounts (account_id);
ALTER TABLE "Grupo 6"."history" ADD CONSTRAINT fk_profile FOREIGN KEY(profile_id) REFERENCES "Grupo 6".profile (profile_id);

CREATE TABLE "Grupo 6".country (
	country_id varchar(20) NOT NULL,
	ip_address varchar(15),
	age_restriction intd)
);

ALTER TABLE "Grupo 6"."country" ADD CONSTRAINT pk_country PRIMARY KEY(country_id);

CREATE TABLE "Grupo 6".streams (
	stream_id varchar(20) NOT NULL,
	time_counter int,
	stream_date timestamp,
	account_id varchar(20),
	content_id varchar(20)
);

ALTER TABLE "Grupo 6"."streams" ADD CONSTRAINT pk_stream PRIMARY KEY(stream_id);
ALTER TABLE "Grupo 6"."streams" ADD CONSTRAINT fk_account FOREIGN KEY(account_id) REFERENCES "Grupo 6".accounts (account_id);
ALTER TABLE "Grupo 6"."streams" ADD CONSTRAINT fk_content FOREIGN KEY(content_id) REFERENCES "Grupo 6"."content" (content_id);

CREATE TABLE "Grupo 6"."content" (
	content_id varchar(20) NOT NULL,
	title varchar(50),
	producer varchar(40),
	current_playing_time int,
	language varchar(20),
	publish_date timestamp,
	likes int,
	age_restriction boolean,
	genre varchar(15),
	episodes int,
	information varchar(120),
	subtitles_id varchar(20),
	relationship_id varchar(20)
);

ALTER TABLE "Grupo 6"."content" ADD CONSTRAINT pk_content PRIMARY KEY(content_id);
ALTER TABLE "Grupo 6"."content" ADD CONSTRAINT fk_subtitles FOREIGN KEY(subtitles_id) REFERENCES "Grupo 6".subtitles (subtitles_id);
ALTER TABLE "Grupo 6"."content" ADD CONSTRAINT fk_relationship FOREIGN KEY(relationship_id) REFERENCES "Grupo 6".relationship (relationship_id);

CREATE TABLE "Grupo 6".comments (
	comment_id varchar(20) NOT NULL,
	likes int,
	comment_content varchar(200),
	content_id varchar(20),
	profile_id varchar(20)
);

ALTER TABLE "Grupo 6"."comments" ADD CONSTRAINT pk_comment PRIMARY KEY(comment_id);
ALTER TABLE "Grupo 6"."comments" ADD CONSTRAINT fk_content FOREIGN KEY(content_id) REFERENCES "Grupo 6".content (content_id);
ALTER TABLE "Grupo 6"."comments" ADD CONSTRAINT fk_profile FOREIGN KEY(profile_id) REFERENCES "Grupo 6".profile (profile_id);

CREATE TABLE "Grupo 6".subtitles (
	subtitles_id varchar(20) NOT NULL,
	color varchar(10),
	language varchar(20),
	size nt,
	font varchar(50),
	shadow boolean,
	relationship_id varchar(20)
);

ALTER TABLE "Grupo 6"."subtitles" ADD CONSTRAINT pk_subtitles PRIMARY KEY(subtitles_id);
ALTER TABLE "Grupo 6"."subtitles" ADD CONSTRAINT fk_relationship FOREIGN KEY(relationship_id) REFERENCES "Grupo 6".relationship (relationship_id);

CREATE TABLE "Grupo 6".relationship (
	relationship_id varchar(20) NOT NULL,
	content_id varchar(20),
	subtitles_id varchar(20)
);

ALTER TABLE "Grupo 6"."relationship" ADD CONSTRAINT pk_relationship PRIMARY KEY(relationship_id);
ALTER TABLE "Grupo 6"."relationship" ADD CONSTRAINT fk_content FOREIGN KEY(content_id) REFERENCES "Grupo 6".content (content_id);
ALTER TABLE "Grupo 6"."relationship" ADD CONSTRAINT fk_subtitles FOREIGN KEY(subtitles_id) REFERENCES "Grupo 6".subtitles (subtitles_id);
i

CREATE TABLE accounts (
    account_id varchar(20) NOT NULL,
    name varchar(20) NOT NULL,
    last_name varchar(30) NOT NULL,
    phone_number varchar(15),
    adress varchar(40),
    birthday timestamp,
    creation_date timestamp,
    subscription_id varchar(20) NOT NULL,
    country_id varchar(20) NOT NULL,
    CONSTRAINT pk_accounts PRIMARY KEY (account_id),
    CONSTRAINT fk_subscriptions
        FOREIGN KEY(subscriptions_id)
        REFERENCES subscriptions (subscription_id),
    CONSTRAINT fk_country
        FOREIGN KEY(country_id)
        REFERENCES country (country_id)
);

CREATE TABLE subscriptions (
	subscription_id varchar(20) NOT NULL,
	payment_status varchar(20),
	payment_date timestamp,
	payment_information varchar(30),
	amount int,
	account_id varchar(20),
	CONSTRAINT pk_account PRIMARY KEY(subscription_id),
	CONSTRAINT fk_account
		FOREIGN KEY(account_id)
		REFERENCES accounts (account_id)
);

CREATE TABLE profile (
	profile_id varchar(20) NOT NULL,
	parent_control boolean,
	nickname varchar(10),
	language varchar(20),
	account_id varchar(20),
	favorites varchar(100),
	CONSTRAINT pk_profile PRIMARY KEY(profile_id),
	CONSTRAINT fk_account
		FOREIGN KEY(account_id)
		REFERENCES accounts (account_id)
);

CREATE TABLE history (
	last_viewed varchar(50),
	visualization_date timestamp,
	account_id varchar(20),
	CONSTRAINT fk_account
		FOREIGN KEY(account_id)
		REFERENCES accounts (account_id),
	CONSTRAINT fk_profile
		FOREIGN KEY(profile_id)
		REFERENCES profile (profile_id)
);

CREATE TABLE country (
	country_id varchar(20) NOT NULL,
	ip_address varchar(15),
	age_restriction int,
	CONSTRAINT pk_country PRIMARY KEY(country_id)
);

CREATE TABLE streams (
	stream_id varchar(20) NOT NULL,
	time_counter int,
	stream_date timestamp,
	account_id varchar(20),
	content_id varchar(20),
	CONSTRAINT pk_stream PRIMARY KEY(stream_id),
	CONSTRAINT fk_account
		FOREIGN KEY(account_id)
		REFERENCES accounts (account_id),
	CONSTRAINT fk_content
		FOREIGN KEY(content_id)
		REFERENCES content (content_id)
);

CREATE TABLE content (
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
	relationship_id varchar(20),
	CONSTRAINT pk_content PRIMARY KEY(content_id),
	CONSTRAINT fk_subtitles
		FOREIGN KEY(subtitles_id)
		REFERENCES subtitles (subtitles_id),
	CONSTRAINT fk_relationship
		FOREIGN KEY(relationship_id)
		REFERENCES relationship (relationship_id)
);

CREATE TABLE comments (
	comment_id varchar(20) NOT NULL,
	likes int,
	comment_content varchar(200),
	content_id varchar(20),
	profile_id varchar(20),
	CONSTRAINT pk_comment PRIMARY KEY(comment_id),
	CONSTRAINT fk_content
		FOREIGN KEY(content_id)
		REFERENCES content (content_id),
	CONSTRAINT fk_profile
		FOREIGN KEY(profile_id)
		REFERENCES profile (profile_id)
);

CREATE TABLE subtitles (
	subtitles_id varchar(20) NOT NULL,
	color varchar(10),
	language varchar(20),
	size int,
	font varchar(50),
	shadow boolean,
	relationship_id varchar(20),
	CONSTRAINT pk_subtitles PRIMARY KEY(subtitles_id),
	CONSTRAINT fk_relationship
		FOREIGN KEY(relationship_id)
		REFERENCES relationship (relationship_id)
);

CREATE TABLE relationship (
	relationship_id varchar(20) NOT NULL,
	content_id varchar(20),
	subtitles_id varchar(20),
	CONSTRAINT pk_relationship PRIMARY KEY(relationship_id),
	CONSTRAINT fk_content
		FOREIGN KEY(content_id)
		REFERENCES content (content_id),
	CONSTRAINT fk_subtitles
		FOREIGN KEY(subtitles_id)
		REFERENCES subtitles (subtitles_id)
)

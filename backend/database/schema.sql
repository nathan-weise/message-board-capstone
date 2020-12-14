BEGIN TRANSACTION;

DROP TABLE IF EXISTS forum_mods;
DROP TABLE IF EXISTS forum_favorites;
DROP TABLE IF EXISTS forum_votes;
DROP TABLE IF EXISTS post_votes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS forums;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id serial,
	username varchar(50) NOT NULL,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE forums (
	forum_id serial,
	forum_name varchar(50) NOT NULL,
	forum_description varchar,
    user_id integer,
    color varchar(6),
    forum_image varchar,
    created_time timestamp,
	CONSTRAINT PK_forum_id PRIMARY KEY (forum_id),
	CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE posts (
	post_id serial,
    post_title varchar(50) NOT NULL,
    post_text varchar NOT NULL,
	forum_id integer,
    user_id integer,
    post_image varchar,
    created_time timestamp,
	CONSTRAINT PK_post_id PRIMARY KEY (post_id),
    CONSTRAINT FK_forum_id FOREIGN KEY (forum_id) REFERENCES forums(forum_id),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE comments (
	comment_id serial,
    comment_text varchar NOT NULL,
	post_id integer,
    user_id integer,
    created_time timestamp,
	CONSTRAINT comment_id PRIMARY KEY (comment_id),
    CONSTRAINT FK_post_id FOREIGN KEY (post_id) REFERENCES posts(post_id),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE post_votes (
    post_vote_id serial,
    post_id integer,
    vote integer,
    spicy integer,
    user_id integer,
    created_time timestamp,
    CONSTRAINT post_vote_id PRIMARY KEY (post_vote_id),
--    CONSTRAINT post_user_id PRIMARY KEY (user_id, post_id),
    CONSTRAINT FK_post_id FOREIGN KEY (post_id) REFERENCES posts(post_id),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE forum_votes (
    forum_vote_id serial,
    forum_id integer,
    vote integer,
    spicy integer,
    user_id integer,
    created_time timestamp,
    CONSTRAINT forum_vote_id PRIMARY KEY (forum_vote_id),
    CONSTRAINT FK_post_id FOREIGN KEY (forum_id) REFERENCES forums(forum_id),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE forum_favorites (
    user_id integer,
    forum_id integer,
    created_time timestamp,
    CONSTRAINT favorite_id PRIMARY KEY (user_id, forum_id),
    CONSTRAINT FK_forum_id FOREIGN KEY (forum_id) REFERENCES forums(forum_id),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE forum_mods (
    user_id integer,
    forum_id integer,
    created_time timestamp,
    CONSTRAINT mod_id PRIMARY KEY (user_id, forum_id),
    CONSTRAINT FK_forum_id FOREIGN KEY (forum_id) REFERENCES forums(forum_id),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);


COMMIT TRANSACTION;

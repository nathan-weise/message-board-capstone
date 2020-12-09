BEGIN TRANSACTION;

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
    user_id integer,
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
    created_time timestamp,
    popularity integer,
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
    vote_id serial,
    post_id integer,
    up_vote boolean,
    down_vote boolean,
    user_id integer,
    created_time timestamp,
    CONSTRAINT vote_id PRIMARY KEY (vote_id),
    CONSTRAINT FK_post_id FOREIGN KEY (post_id) REFERENCES posts(post_id),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);

COMMIT TRANSACTION;

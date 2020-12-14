-- Dummy data for user table, all passwords are 'security'
INSERT INTO users (username, password_hash, role)
VALUES ('Kurt', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_ADMIN');
INSERT INTO users (username, password_hash, role)
VALUES ('Nathan', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_ADMIN');
INSERT INTO users (username, password_hash, role)
VALUES ('Ben', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_ADMIN');
INSERT INTO users (username, password_hash, role)
VALUES ('Zac', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_ADMIN');
INSERT INTO users (username, password_hash, role)
VALUES ('Joe', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_USER');
INSERT INTO users (username, password_hash, role)
VALUES ('Riggs', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_USER');
INSERT INTO users (username, password_hash, role)
VALUES ('Roger', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_USER');
INSERT INTO users (username, password_hash, role)
VALUES ('Murtaugh', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_USER');

-- Dummy data for forum table
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Banana', 'Description', 1, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Baguette', 'Description', 2, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Breadstick', 'Description', 3, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Brioche', 'Description', 1, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Challah', 'Description', 2, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Ciabatta', 'Description', 3, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Pita', 'Description', 1, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Cornbread', 'Description', 2, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Focaccia', 'Description', 3, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Multigrain', 'Description', 1, '000000', 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Parrot', 'Description', 2, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Owl', 'Description', 3, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Hummingbird', 'Description', 1, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Duck', 'Description', 2, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Goose', 'Description', 3, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Hawk', 'Description', 1, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Finch', 'Description', 2, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Woodpecker', 'Description', 3, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Herons', 'Description', 1, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Swallow', 'Description', 2, '000000', 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');

-- Dummy data for posts table
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 1, 1, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 2, 2, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 3, 3, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 1, 4, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 2, 5, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 3, 6, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 1, 7, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 2, 8, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 3, 1, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 1, 2, 'html link goes here', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 2, 3, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 3, 4, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 1, 5, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 2, 6, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 3, 7, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 1, 8, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 2, 1, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 3, 2, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 1, 3, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 2, 4, 'html link goes here', TIMESTAMP '2020-12-14 10:00:00');

-- Dummy data for comments table
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 1, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 2, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 3, 3, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 1, 4, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 2, 5, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 3, 6, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 1, 7, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 2, 8, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 3, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 1, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 2, 3, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 3, 4, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 1, 5, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 2, 6, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 3, 7, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 1, 8, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 2, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 3, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('this is a comment', 1, 3, TIMESTAMP '2020-12-14 10:00:00');

-- Dummy data for post_votes table
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (11, 1, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (12, 0, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (13, 1, 0, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (14, 0, 0, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, user_id, created_time)
VALUES (15, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, spicy, user_id, created_time)
VALUES (16, 0, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, user_id, created_time)
VALUES (17, 0, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, spicy, user_id, created_time)
VALUES (18, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, user_id, created_time)
VALUES (19, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, user_id, created_time)
VALUES (20, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (12, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (13, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (14, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (15, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (16, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (17, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (18, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (19, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (20, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (18, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (19, 1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (11, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (12, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (13, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (14, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (15, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (16, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (17, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (19, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (20, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (11, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (12, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (13, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (14, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (15, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (16, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (17, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (18, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (20, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (11, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (12, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (13, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (14, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (15, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (16, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (17, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (18, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (19, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (20, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (11, -1, 1, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (12, 1, 1, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (13, -1, 1, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (14, 1, 1, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (15, -1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (16, 1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (17, -1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (18, 1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (19, -1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (20, 1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');

-- Dummy data for forum_votes table
INSERT INTO forum_votes (forum_id, vote, user_id, created_time)
VALUES (1, 1, 1, TIMESTAMP '2015-7-6 10:23:54');
INSERT INTO forum_votes (forum_id, vote, user_id, created_time)
VALUES (2, 1, 2, TIMESTAMP '2015-7-6 10:23:54');
INSERT INTO forum_votes (forum_id, vote, user_id, created_time)
VALUES (2, 1, 3, TIMESTAMP '2015-7-6 10:23:54');
INSERT INTO forum_votes (forum_id, vote, user_id, created_time)
VALUES (2, -1, 4, TIMESTAMP '2015-7-6 10:23:54');
INSERT INTO forum_votes (forum_id, vote, user_id, created_time)
VALUES (2, 1, 5, TIMESTAMP '2015-7-6 10:23:54');

-- Dummy data for forum_mods table
INSERT INTO forum_mods (user_id, forum_id)
VALUES (1, 1);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (2, 1);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (3, 1);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (4, 1);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (5, 1);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (6, 1);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (7, 1);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (8, 1);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (8, 2);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (1, 2);
INSERT INTO forum_mods (user_id, forum_id)
VALUES (1, 3);

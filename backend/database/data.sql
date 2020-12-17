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
VALUES ('Banana', 'Description', 1, '000000', 'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Baguette', 'Description', 2, '000000', 'https://imgp2.schaer.com/sites/default/files/1998_Baguette%20Casera.jpg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Breadstick', 'Description', 3, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Brioche', 'Description', 1, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Challah', 'Description', 2, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Ciabatta', 'Description', 3, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Pita', 'Description', 1, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Cornbread', 'Description', 2, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Focaccia', 'Description', 3, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Multigrain', 'Description', 1, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Parrot', 'Description', 2, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Owl', 'Description', 3, '000000', 'https://www.rd.com/wp-content/uploads/2018/02/32_Hilarious-Photos-that-Will-Get-You-Through-the-Week_481708660_Pitipat-Usanakornkul-760x506.jpg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Hummingbird', 'Description', 1, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Duck', 'Description', 2, '000000', 'https://www.allaboutbirds.org/guide/assets/photo/60021831-480px.jpg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Goose', 'Description', 3, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Hawk', 'Description', 1, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Finch', 'Description', 2, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Woodpecker', 'Description', 3, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Herons', 'Description', 1, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO forums (forum_name, forum_description, user_id, color, forum_image, created_time)
VALUES ('Swallow', 'Description', 2, '000000', 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');

-- Dummy data for posts table
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 1, 1, 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 2, 2, 'https://www.thespruce.com/thmb/3icP-Tf1lTO_b-IPMOotdwNO_Uc=/1500x844/smart/filters:no_upscale()/mallard11-59511e483df78cae81214b68.jpg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 3, 3, 'https://i.imgur.com/N0JTeJi.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 1, 4, 'https://images.pexels.com/photos/260024/pexels-photo-260024.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 2, 5, 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 3, 6, 'https://i.imgur.com/N0JTeJi.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 1, 7, 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 2, 8, 'https://www.rd.com/wp-content/uploads/2018/02/25_Hilarious-Photos-that-Will-Get-You-Through-the-Week_280228817_Doty911.jpg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 3, 1, 'https://i.imgur.com/N0JTeJi.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('popular post', 'text', 1, 2, 'https://www.dictionary.com/e/wp-content/uploads/2018/07/honey-badger3.jpg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 2, 3, 'https://s23527.pcdn.co/wp-content/uploads/2018/09/Mary-McGowan_Caught-In-The-Act_00001294.jpg.optimal.jpg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 3, 4, 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 1, 5, 'https://www.rd.com/wp-content/uploads/2018/02/20_Hilarious-Photos-that-Will-Get-You-Through-the-Week_551201965_artemisphoto-760x506.jpg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 2, 6, 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 3, 7, 'https://miro.medium.com/max/3200/1*EUffFv13pctf2d1ctR-XFw.png', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 1, 8, 'https://us.123rf.com/450wm/kurashova/kurashova1811/kurashova181100020/112880849-cute-funny-guinea-pig-among-beautiful-pink-flowers-against-a-pink-background-.jpg?ver=6', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 2, 1, 'https://www.thisiscolossal.com/wp-content/uploads/2015/12/WINNER-Julian-Rad.jpg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 3, 2, 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 1, 3, 'https://i.barkpost.com/wp-content/uploads/2015/01/poem-option.jpg?q=70&fit=crop&crop=entropy&w=808&h=500', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'text', 2, 4, 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');

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
VALUES (1, 1, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (2, 0, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (3, 1, 0, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (4, 0, 0, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, user_id, created_time)
VALUES (5, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, spicy, user_id, created_time)
VALUES (6, 0, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, user_id, created_time)
VALUES (7, 0, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, spicy, user_id, created_time)
VALUES (8, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, user_id, created_time)
VALUES (9, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, user_id, created_time)
VALUES (10, 1, 8, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (2, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (3, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (4, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (5, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (6, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (7, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (8, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (9, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (10, 1, 1, 1, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (8, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (9, 1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (1, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (2, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (3, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (4, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (5, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (6, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (7, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (9, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (10, 1, 1, 2, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (1, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (2, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (3, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (4, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (5, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (6, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (7, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (8, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (10, -1, 1, 3, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (1, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (2, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (3, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (4, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (5, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (6, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (7, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (8, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (9, -1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (10, 1, 1, 4, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (1, -1, 1, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (2, 1, 1, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (3, -1, 1, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (4, 1, 1, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (5, -1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (6, 1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (7, -1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (8, 1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (9, -1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');
INSERT INTO post_votes (post_id, vote, spicy, user_id, created_time)
VALUES (10, 1, 0, 5, TIMESTAMP '2020-12-14 9:00:00');

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

-- Dummy data for forum_favorites table
INSERT INTO forum_favorites (user_id, forum_id, forum_favorite)
VALUES (4, 2, 1);
INSERT INTO forum_favorites (user_id, forum_id, forum_favorite)
VALUES (4, 3, 1);
INSERT INTO forum_favorites (user_id, forum_id, forum_favorite)
VALUES (4, 4, 1);
INSERT INTO forum_favorites (user_id, forum_id, forum_favorite)
VALUES (4, 5, 1);
INSERT INTO forum_favorites (user_id, forum_id, forum_favorite)
VALUES (4, 8, 1);
INSERT INTO forum_favorites (user_id, forum_id, forum_favorite)
VALUES (2, 3, 1);
INSERT INTO forum_favorites (user_id, forum_id, forum_favorite)
VALUES (2, 1, 1);
-- Dummy data for user table
INSERT INTO users (username, password_hash, role)
VALUES ('Kurt', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_ADMIN');
INSERT INTO users (username, password_hash, role)
VALUES ('Nathan', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_ADMIN');
INSERT INTO users (username, password_hash, role)
VALUES ('Ben', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_ADMIN');
INSERT INTO users (username, password_hash, role)
VALUES ('Zac', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_ADMIN');
INSERT INTO users (username, password_hash, role)
VALUES ('Joe', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_MOD');
INSERT INTO users (username, password_hash, role)
VALUES ('Riggs', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_USER');
INSERT INTO users (username, password_hash, role)
VALUES ('Roger', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_USER');
INSERT INTO users (username, password_hash, role)
VALUES ('Murtaugh', '$2a$10$U1/EBRALXy8OnnOaoCFr2e6Tzrh/6bLwy1hIdpIuKBXNWqIXEMNAi', 'ROLE_USER');

-- Dummy data for forum table
INSERT INTO forums (forum_name, user_id, created_time)
VALUES ('Get That Bread', '2', TIMESTAMP '2004-10-19 10:23:54');
INSERT INTO forums (forum_name, user_id, created_time)
VALUES ('This should be called beddit', '3', TIMESTAMP '2030-10-19 10:23:54');
INSERT INTO forums (forum_name, user_id, created_time)
VALUES ('Baguettes', '4', TIMESTAMP '2020-6-4 16:23:54');
INSERT INTO forums (forum_name, user_id, created_time)
VALUES ('Bagels', '5', TIMESTAMP '2018-6-4 16:23:54');
INSERT INTO forums (forum_name, user_id, created_time)
VALUES ('It is a mallard', '1', TIMESTAMP '2030-10-19 10:23:54');

-- Dummy data for posts table
INSERT INTO posts (post_title, post_text, forum_id, user_id, created_time)
VALUES ('Tips for making bread', 'Jelly beans halvah chocolate bar bear claw sesame snaps gummi bears chocolate cake chocolate bar. Chocolate bar chocolate cake macaroon. Cake jelly-o caramels gingerbread dragée dessert. Cheesecake chocolate cake halvah. Pastry jelly beans gummies tootsie roll marshmallow sesame snaps chocolate danish. Toffee pie cake jelly-o dragée carrot cake lemon drops toffee jelly. Lemon drops cake chupa chups sesame snaps danish gingerbread. Croissant tiramisu candy canes marzipan cheesecake oat cake oat cake. Icing wafer cookie liquorice marshmallow soufflé tootsie roll. Pie macaroon halvah pudding. Donut marshmallow jelly cotton candy candy bonbon topping cupcake soufflé. Chocolate candy apple pie bear claw. Cake tart macaroon jelly-o jelly-o chocolate bar.', 1, 1, TIMESTAMP '2004-10-19 10:23:54');
INSERT INTO posts (post_title, post_text, forum_id, user_id, created_time)
VALUES ('Tips for making that bread', 'Jelly beans halvah chocolate bar bear claw sesame snaps gummi bears chocolate cake chocolate bar. Chocolate bar chocolate cake macaroon. Cake jelly-o caramels gingerbread dragée dessert. Cheesecake chocolate cake halvah. Pastry jelly beans gummies tootsie roll marshmallow sesame snaps chocolate danish. Toffee pie cake jelly-o dragée carrot cake lemon drops toffee jelly. Lemon drops cake chupa chups sesame snaps danish gingerbread. Croissant tiramisu candy canes marzipan cheesecake oat cake oat cake. Icing wafer cookie liquorice marshmallow soufflé tootsie roll. Pie macaroon halvah pudding. Donut marshmallow jelly cotton candy candy bonbon topping cupcake soufflé. Chocolate candy apple pie bear claw. Cake tart macaroon jelly-o jelly-o chocolate bar.', 1, 2, TIMESTAMP '2004-10-19 10:23:54');
INSERT INTO posts (post_title, post_text, forum_id, user_id, created_time)
VALUES ('Waterbeds vs sleeping on floor', 'Jelly beans halvah chocolate bar bear claw sesame snaps gummi bears chocolate cake chocolate bar. Chocolate bar chocolate cake macaroon. Cake jelly-o caramels gingerbread dragée dessert. Cheesecake chocolate cake halvah. Pastry jelly beans gummies tootsie roll marshmallow sesame snaps chocolate danish. Toffee pie cake jelly-o dragée carrot cake lemon drops toffee jelly. Lemon drops cake chupa chups sesame snaps danish gingerbread. Croissant tiramisu candy canes marzipan cheesecake oat cake oat cake. Icing wafer cookie liquorice marshmallow soufflé tootsie roll. Pie macaroon halvah pudding. Donut marshmallow jelly cotton candy candy bonbon topping cupcake soufflé. Chocolate candy apple pie bear claw. Cake tart macaroon jelly-o jelly-o chocolate bar.', 2, 6, TIMESTAMP '2004-10-19 10:23:54');
INSERT INTO posts (post_title, post_text, forum_id, user_id, created_time)
VALUES ('I am le tired', 'Jelly beans halvah chocolate bar bear claw sesame snaps gummi bears chocolate cake chocolate bar. Chocolate bar chocolate cake macaroon. Cake jelly-o caramels gingerbread dragée dessert. Cheesecake chocolate cake halvah. Pastry jelly beans gummies tootsie roll marshmallow sesame snaps chocolate danish. Toffee pie cake jelly-o dragée carrot cake lemon drops toffee jelly. Lemon drops cake chupa chups sesame snaps danish gingerbread. Croissant tiramisu candy canes marzipan cheesecake oat cake oat cake. Icing wafer cookie liquorice marshmallow soufflé tootsie roll. Pie macaroon halvah pudding. Donut marshmallow jelly cotton candy candy bonbon topping cupcake soufflé. Chocolate candy apple pie bear claw. Cake tart macaroon jelly-o jelly-o chocolate bar.', 2, 3, TIMESTAMP '2004-10-19 10:23:54');

-- Dummy data for comments table
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Cake halvah powder cotton candy icing apple pie halvah marshmallow croissant. Jelly beans jelly wafer dragée croissant ice cream marzipan. Chocolate marzipan sesame snaps. Powder danish sugar plum cheesecake marzipan marzipan toffee topping. Jelly-o wafer lemon drops candy canes. Croissant pastry chocolate bar cupcake tiramisu candy canes. Donut sesame snaps toffee sweet roll bonbon. Pudding brownie cotton candy toffee fruitcake. Jelly beans chocolate cake carrot cake cupcake marzipan candy canes ice cream. Bear claw cheesecake sugar plum tart chocolate cotton candy caramels. Sugar plum danish cotton candy muffin candy canes. Pie apple pie jelly beans dessert. Tiramisu jujubes oat cake icing. Candy fruitcake icing.', 1, 7, TIMESTAMP '2004-10-19 10:23:54');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Cake halvah powder cotton candy icing apple pie halvah marshmallow croissant. Jelly beans jelly wafer dragée croissant ice cream marzipan. Chocolate marzipan sesame snaps. Powder danish sugar plum cheesecake marzipan marzipan toffee topping. Jelly-o wafer lemon drops candy canes. Croissant pastry chocolate bar cupcake tiramisu candy canes. Donut sesame snaps toffee sweet roll bonbon. Pudding brownie cotton candy toffee fruitcake. Jelly beans chocolate cake carrot cake cupcake marzipan candy canes ice cream. Bear claw cheesecake sugar plum tart chocolate cotton candy caramels. Sugar plum danish cotton candy muffin candy canes. Pie apple pie jelly beans dessert. Tiramisu jujubes oat cake icing. Candy fruitcake icing.', 1, 4, TIMESTAMP '2004-10-19 10:23:54');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Cake halvah powder cotton candy icing apple pie halvah marshmallow croissant. Jelly beans jelly wafer dragée croissant ice cream marzipan. Chocolate marzipan sesame snaps. Powder danish sugar plum cheesecake marzipan marzipan toffee topping. Jelly-o wafer lemon drops candy canes. Croissant pastry chocolate bar cupcake tiramisu candy canes. Donut sesame snaps toffee sweet roll bonbon. Pudding brownie cotton candy toffee fruitcake. Jelly beans chocolate cake carrot cake cupcake marzipan candy canes ice cream. Bear claw cheesecake sugar plum tart chocolate cotton candy caramels. Sugar plum danish cotton candy muffin candy canes. Pie apple pie jelly beans dessert. Tiramisu jujubes oat cake icing. Candy fruitcake icing.', 3, 1, TIMESTAMP '2004-10-19 10:23:54');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Cake halvah powder cotton candy icing apple pie halvah marshmallow croissant. Jelly beans jelly wafer dragée croissant ice cream marzipan. Chocolate marzipan sesame snaps. Powder danish sugar plum cheesecake marzipan marzipan toffee topping. Jelly-o wafer lemon drops candy canes. Croissant pastry chocolate bar cupcake tiramisu candy canes. Donut sesame snaps toffee sweet roll bonbon. Pudding brownie cotton candy toffee fruitcake. Jelly beans chocolate cake carrot cake cupcake marzipan candy canes ice cream. Bear claw cheesecake sugar plum tart chocolate cotton candy caramels. Sugar plum danish cotton candy muffin candy canes. Pie apple pie jelly beans dessert. Tiramisu jujubes oat cake icing. Candy fruitcake icing.', 3, 5, TIMESTAMP '2004-10-19 10:23:54');
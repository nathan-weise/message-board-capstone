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

-- Banana forum
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Ciabatta be kidding me', 'Phasellus fringilla nunc non est tincidunt, ac luctus metus hendrerit. Cras pellentesque libero sem, et rhoncus erat sagittis eget. Nam ante odio, fringilla nec mi a, tempor sodales erat', 1, 1, 'https://i.redd.it/wkug8s3m4bh51.jpg', TIMESTAMP '2020-12-17 7:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Ain''t no challah back girl', 'Phasellus fringilla nunc non est tincidunt, ac luctus metus hendrerit.', 1, 2, 'https://www.thespruce.com/thmb/3icP-Tf1lTO_b-IPMOotdwNO_Uc=/1500x844/smart/filters:no_upscale()/mallard11-59511e483df78cae81214b68.jpg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('That''s naan of your business', 'Cras pellentesque libero sem, et rhoncus erat sagittis eget. Nam ante odio, fringilla nec mi a, tempor sodales erat. Vestibulum feugiat vitae velit vulputate egestas. Curabitur sed finibus leo. Quisque non tincidunt magna.', 1, 3, 'https://i.imgur.com/N0JTeJi.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Matzo fast my friend', 'Nulla pharetra velit vel augue commodo dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec ultrices molestie tincidunt. ', 1, 4, 'https://i.redd.it/7hh5cdzfnn221.jpg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('I don''t have a pumpernickel to my name', 'Nam eros lectus, aliquam ut laoreet at, eleifend vel turpis. Morbi aliquam efficitur velit, convallis convallis felis vehicula at.', 1, 5, 'https://i.redd.it/us8iklz1lfy41.jpg', TIMESTAMP '2020-12-18 7:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Cinnamon rolling in the deep', 'Pellentesque cursus, felis nec suscipit auctor, purus quam scelerisque enim, id imperdiet ipsum neque porttitor ante.', 1, 1, 'https://i.imgur.com/N0JTeJi.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Mama gets her biscuit', 'Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 1, 2, 'https://www.dictionary.com/e/wp-content/uploads/2018/07/honey-badger3.jpg', TIMESTAMP '2020-12-10 10:00:00');

-- Baguette forum
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Don''t be a pain (that''s bread in French)', 'text', 2, 6, 'https://i.imgur.com/N0JTeJi.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('This is quite the pretzel I''ve gotten myself into', 'text', 2, 7, 'https://i.redd.it/q23d6yz1vnq51.jpg', TIMESTAMP '2020-12-18 7:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('He bread, she bread', 'Cras sed tortor scelerisque, aliquet urna eu, posuere velit. Pellentesque maximus elementum eros nec lobortis.', 2, 8, 'https://www.rd.com/wp-content/uploads/2018/02/25_Hilarious-Photos-that-Will-Get-You-Through-the-Week_280228817_Doty911.jpg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Do I have to be French to eat bread?', 'text', 2, 1, 'https://i.imgur.com/N0JTeJi.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Check out my sourdough recipe', 'Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 2, 2, 'https://www.dictionary.com/e/wp-content/uploads/2018/07/honey-badger3.jpg', TIMESTAMP '2020-12-10 10:00:00');

-- Breadstick forum
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Check out my sourdough recipe', 'Cras sed tortor scelerisque, aliquet urna eu, posuere velit. Pellentesque maximus elementum eros nec lobortis.', 3, 3, 'https://s23527.pcdn.co/wp-content/uploads/2018/09/Mary-McGowan_Caught-In-The-Act_00001294.jpg.optimal.jpg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('He bread, she bread', 'Nulla vel augue suscipit, fermentum velit sed, molestie odio.', 3, 4, 'https://i.redd.it/laoixufjptg21.jpg', TIMESTAMP '2020-12-11 7:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Mama gets her biscuit', 'Sed rhoncus, neque quis vulputate feugiat, dolor est ultrices eros, sit amet molestie ligula ipsum quis purus. Sed dictum erat vitae elit efficitur imperdiet. Etiam porttitor dui sit amet consequat tristique.', 3, 5, 'https://www.rd.com/wp-content/uploads/2018/02/20_Hilarious-Photos-that-Will-Get-You-Through-the-Week_551201965_artemisphoto-760x506.jpg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Ain''t no challah back girl', 'Cras sed tortor scelerisque, aliquet urna eu, posuere velit. Pellentesque maximus elementum eros nec lobortis.', 3, 1, 'https://i.imgur.com/N0JTeJi.jpeg', TIMESTAMP '2020-12-10 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Don''t be a pain (that''s bread in French)', 'Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 3, 2, 'https://www.dictionary.com/e/wp-content/uploads/2018/07/honey-badger3.jpg', TIMESTAMP '2020-12-10 10:00:00');

-- Brioche forum
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 4, 6, 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('recent post', 'Sed rhoncus, neque quis vulputate feugiat, dolor est ultrices eros, sit amet molestie ligula ipsum quis purus. Sed dictum erat vitae elit efficitur imperdiet. Etiam porttitor dui sit amet consequat tristique.', 4, 7, 'https://miro.medium.com/max/3200/1*EUffFv13pctf2d1ctR-XFw.png', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('He bread, she bread', 'Cras sed tortor scelerisque, aliquet urna eu, posuere velit. Pellentesque maximus elementum eros nec lobortis.', 4, 8, 'https://us.123rf.com/450wm/kurashova/kurashova1811/kurashova181100020/112880849-cute-funny-guinea-pig-among-beautiful-pink-flowers-against-a-pink-background-.jpg?ver=6', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Don''t be a pain (that''s bread in French)', 'Nulla vel augue suscipit, fermentum velit sed, molestie odio.', 4, 1, 'https://www.thisiscolossal.com/wp-content/uploads/2015/12/WINNER-Julian-Rad.jpg', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('Mama gets her biscuit', 'Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 4, 2, 'https://i.imgur.com/Frk3Kiy.jpeg', TIMESTAMP '2020-12-14 10:00:00');

-- Challah forum
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('He bread, she bread', 'Nulla vel augue suscipit, fermentum velit sed, molestie odio.', 5, 3, 'https://i.barkpost.com/wp-content/uploads/2015/01/poem-option.jpg?q=70&fit=crop&crop=entropy&w=808&h=500', TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO posts (post_title, post_text, forum_id, user_id, post_image, created_time)
VALUES ('That''s naan of your business', 'Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 5, 4, 'https://i.redd.it/5pugas99jjt51.jpg', TIMESTAMP '2020-12-18 7:00:00');



-- Dummy data for comments table

-- Banana forum
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Sed pellentesque metus vel malesuada feugiat. Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 1, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Fruitcake tiramisu tart danish jujubes gingerbread dragée. Lemon drops cookie dragée chocolate bar fruitcake oat cake. Croissant cookie bear claw. Fruitcake donut topping candy canes tootsie roll wafer. Cookie candy canes liquorice pudding brownie oat cake chocolate bar sesame snaps cheesecake.', 1, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Bonbon pudding lemon drops sweet cookie biscuit cheesecake marshmallow candy. Powder tootsie roll jelly gingerbread oat cake. Toffee halvah chocolate bar bonbon. Dessert tart dessert. Jelly-o brownie cotton candy oat cake tootsie roll. Gingerbread chocolate pie gummi bears lemon drops. Donut muffin powder. Halvah muffin oat cake dessert chupa chups fruitcake carrot cake halvah carrot cake. Bonbon halvah sugar plum gummi bears jelly beans sweet macaroon cheesecake gummies.', 1, 3, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Gummi bears bonbon macaroon jelly-o apple pie lemon drops tart marzipan tart. Brownie tart jujubes ice cream wafer. Jelly beans dragée soufflé apple pie cookie cookie macaroon pie.', 1, 4, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Freegan fashion axe 8-bit, pour-over vape farm-to-table quinoa sartorial. Photo booth venmo fixie fam poutine woke unicorn kitsch tilde pour-over kombucha cred vexillologist semiotics cornhole.', 1, 4, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Ramps before they sold out air plant, direct trade fingerstache etsy affogato fixie tumblr keytar chicharrones enamel pin succulents. 3 wolf moon vinyl activated charcoal, mixtape scenester sustainable enamel pin art party beard blue bottle. Vaporware ennui organic scenester chicharrones pop-up heirloom readymade freegan kombucha hot chicken tousled thundercats cronut sartorial. Pitchfork chicharrones prism locavore DIY man braid.', 1, 4, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 2, 5, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Sed eu lectus quis justo varius maximus. Pellentesque cursus, felis nec suscipit auctor, purus quam scelerisque enim, id imperdiet ipsum neque porttitor ante.', 2, 6, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Donec feugiat ipsum lorem, et elementum ipsum maximus in. Curabitur pharetra viverra nisi a viverra. Sed pellentesque metus vel malesuada feugiat. Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 3, 7, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Bonbon pudding lemon drops sweet cookie biscuit cheesecake marshmallow candy. Powder tootsie roll jelly gingerbread oat cake. Toffee halvah chocolate bar bonbon. Dessert tart dessert. Jelly-o brownie cotton candy oat cake tootsie roll. Gingerbread chocolate pie gummi bears lemon drops. Donut muffin powder. Halvah muffin oat cake dessert chupa chups fruitcake carrot cake halvah carrot cake. Bonbon halvah sugar plum gummi bears jelly beans sweet macaroon cheesecake gummies.', 3, 8, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Sed eu lectus quis justo varius maximus. Pellentesque cursus, felis nec suscipit auctor, purus quam scelerisque enim, id imperdiet ipsum neque porttitor ante.', 3, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 3, 2, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Sed eu lectus quis justo varius maximus. Pellentesque cursus, felis nec suscipit auctor, purus quam scelerisque enim, id imperdiet ipsum neque porttitor ante.', 4, 3, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Bonbon pudding lemon drops sweet cookie biscuit cheesecake marshmallow candy. Powder tootsie roll jelly gingerbread oat cake. Toffee halvah chocolate bar bonbon. Dessert tart dessert. Jelly-o brownie cotton candy oat cake tootsie roll. Gingerbread chocolate pie gummi bears lemon drops. Donut muffin powder. Halvah muffin oat cake dessert chupa chups fruitcake carrot cake halvah carrot cake. Bonbon halvah sugar plum gummi bears jelly beans sweet macaroon cheesecake gummies.', 4, 4, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Farm-to-table kitsch deep v small batch. Tumblr jean shorts meh palo santo vaporware. Celiac quinoa keffiyeh tumeric. Pabst banjo biodiesel la croix brunch freegan ethical.', 4, 5, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 4, 6, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Bonbon pudding lemon drops sweet cookie biscuit cheesecake marshmallow candy. Powder tootsie roll jelly gingerbread oat cake. Toffee halvah chocolate bar bonbon. Dessert tart dessert. Jelly-o brownie cotton candy oat cake tootsie roll. Gingerbread chocolate pie gummi bears lemon drops. Donut muffin powder. Halvah muffin oat cake dessert chupa chups fruitcake carrot cake halvah carrot cake. Bonbon halvah sugar plum gummi bears jelly beans sweet macaroon cheesecake gummies.', 5, 7, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 5, 8, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 5, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 5, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 5, 3, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Sed pellentesque metus vel malesuada feugiat. Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 6, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Fruitcake tiramisu tart danish jujubes gingerbread dragée. Lemon drops cookie dragée chocolate bar fruitcake oat cake. Croissant cookie bear claw. Fruitcake donut topping candy canes tootsie roll wafer. Cookie candy canes liquorice pudding brownie oat cake chocolate bar sesame snaps cheesecake.', 6, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Bonbon pudding lemon drops sweet cookie biscuit cheesecake marshmallow candy. Powder tootsie roll jelly gingerbread oat cake. Toffee halvah chocolate bar bonbon. Dessert tart dessert. Jelly-o brownie cotton candy oat cake tootsie roll. Gingerbread chocolate pie gummi bears lemon drops. Donut muffin powder. Halvah muffin oat cake dessert chupa chups fruitcake carrot cake halvah carrot cake. Bonbon halvah sugar plum gummi bears jelly beans sweet macaroon cheesecake gummies.', 6, 3, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Gummi bears bonbon macaroon jelly-o apple pie lemon drops tart marzipan tart. Brownie tart jujubes ice cream wafer. Jelly beans dragée soufflé apple pie cookie cookie macaroon pie.', 6, 4, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 7, 5, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Sed eu lectus quis justo varius maximus. Pellentesque cursus, felis nec suscipit auctor, purus quam scelerisque enim, id imperdiet ipsum neque porttitor ante.', 7, 6, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Donec feugiat ipsum lorem, et elementum ipsum maximus in. Curabitur pharetra viverra nisi a viverra. Sed pellentesque metus vel malesuada feugiat. Sed sed sollicitudin ipsum. Vivamus elementum mattis porttitor. Praesent consectetur, purus eget commodo aliquam, sem libero commodo eros, eget pellentesque lacus tortor et purus.', 8, 7, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Bonbon pudding lemon drops sweet cookie biscuit cheesecake marshmallow candy. Powder tootsie roll jelly gingerbread oat cake. Toffee halvah chocolate bar bonbon. Dessert tart dessert. Jelly-o brownie cotton candy oat cake tootsie roll. Gingerbread chocolate pie gummi bears lemon drops. Donut muffin powder. Halvah muffin oat cake dessert chupa chups fruitcake carrot cake halvah carrot cake. Bonbon halvah sugar plum gummi bears jelly beans sweet macaroon cheesecake gummies.', 3, 8, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Sed eu lectus quis justo varius maximus. Pellentesque cursus, felis nec suscipit auctor, purus quam scelerisque enim, id imperdiet ipsum neque porttitor ante.', 8, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 8, 2, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Sed eu lectus quis justo varius maximus. Pellentesque cursus, felis nec suscipit auctor, purus quam scelerisque enim, id imperdiet ipsum neque porttitor ante.', 9, 3, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Bonbon pudding lemon drops sweet cookie biscuit cheesecake marshmallow candy. Powder tootsie roll jelly gingerbread oat cake. Toffee halvah chocolate bar bonbon. Dessert tart dessert. Jelly-o brownie cotton candy oat cake tootsie roll. Gingerbread chocolate pie gummi bears lemon drops. Donut muffin powder. Halvah muffin oat cake dessert chupa chups fruitcake carrot cake halvah carrot cake. Bonbon halvah sugar plum gummi bears jelly beans sweet macaroon cheesecake gummies.', 9, 4, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Farm-to-table kitsch deep v small batch. Tumblr jean shorts meh palo santo vaporware. Celiac quinoa keffiyeh tumeric. Pabst banjo biodiesel la croix brunch freegan ethical.', 9, 5, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 4, 6, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Bonbon pudding lemon drops sweet cookie biscuit cheesecake marshmallow candy. Powder tootsie roll jelly gingerbread oat cake. Toffee halvah chocolate bar bonbon. Dessert tart dessert. Jelly-o brownie cotton candy oat cake tootsie roll. Gingerbread chocolate pie gummi bears lemon drops. Donut muffin powder. Halvah muffin oat cake dessert chupa chups fruitcake carrot cake halvah carrot cake. Bonbon halvah sugar plum gummi bears jelly beans sweet macaroon cheesecake gummies.', 10, 7, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 10, 8, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 10, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 10, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 10, 3, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 11, 8, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 11, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 11, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 11, 3, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 12, 8, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 12, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 12, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 12, 3, TIMESTAMP '2020-12-14 10:00:00');

INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 13, 8, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 13, 1, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 13, 2, TIMESTAMP '2020-12-14 10:00:00');
INSERT INTO comments (comment_text, post_id, user_id, created_time)
VALUES ('Danish marshmallow cupcake croissant cake cheesecake bonbon halvah lollipop. Bonbon caramels candy canes. Chupa chups fruitcake carrot cake soufflé pie chocolate bar oat cake.', 13, 3, TIMESTAMP '2020-12-14 10:00:00');

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
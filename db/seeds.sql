USE hero_db;

INSERT INTO questions (question) VALUES
("Do you like to fly?"),
("Do you like to wear a cape?"),
("Are you very virtuous?"),
("Are you a persistent do-gooder?"),
("Are you somewhat reserved and easy going?"),
("Are you an intelligent geek?"),
("Do you like redheads?"),
("Are you accident prone?"),
("Are you a hopeless romantic?"),
("Do you have a good sense of humor?"),
("Do you like hi-tech gadgets?"),
("Did you have a bad childhood?"),
("Do you have a dark personality?"),
("Are you a fast runner?"),
("Are you interested in space travel?"),
("Do you use people to get your way?"),
("Do you like bad boys(or girls)?"),
("Are you much of a drinker?"),
("Are you obviously powerful?"),
("Are you a show off?");



INSERT INTO heroes (h_name, h_link, h_desc) VALUES 
("Superman", "https://media0.giphy.com/media/FiBzv5FRE85PO/200w.webp?cid=790b761128f78e1487aa9c7a6da4bf1f1aecf6a731e007d1&rid=200w.webp","You are mild-mannered, good, strong and you love to help others."), 
("Batman", "https://media.giphy.com/media/NE09aYiigMYuc/giphy.gif","You are dark, love gadgets and have vowed to help the innocent not suffer the pain you have endured."),
("Supergirl", "https://media2.giphy.com/media/QB83Agsa83v5C/giphy.webp?cid=790b76112907992ef80190fd2a6bb31a00bc5f29fad54d01&rid=giphy.webp","Lean, muscular and feminine.  Honest and a defender of the innocent."),
("Wonder Woman", "https://media0.giphy.com/media/xwvT0qtK4FtgQ/giphy.webp?cid=790b76116714863cee87392ad2df95f2642d78f48c5432ad&rid=giphy.webp","You are a beautiful princess with great strength of character."),
("The Flash", "https://media0.giphy.com/media/3ov9jOyqvj6CnRMDwQ/200w.webp?cid=790b76114a2f83ec7a9b58d6cb4e2ae526701e8d6f2b7f71&rid=200w.webp","Fast, athletic and flirtatious. "),
("Green Lantern", "https://media2.giphy.com/media/W1XsI7zWyzfIk/100.webp?cid=790b7611225e95ce1cbc0ce3647b97763dc6dcf10ef8b0c7&rid=100.webp","Hot-headed. You have strong will power and a good imagination. ");


INSERT INTO scores (q_id, h_id, answer) VALUES
 (1,1,3), (1,2,2), (1,3,4), (1,4,1), (1,5,5), (1,6,4),  
(2,1,4), (2,2,4), (2,3,1), (2,4,2), (2,5,4), (2,6,1),  
(3,1,3), (3,2,3), (3,3,5), (3,4,4), (3,5,5), (3,6,3), 
(4,1,3), (4,2,4), (4,3,4), (4,4,2), (4,5,1), (4,6,5), 
(5,1,4), (5,2,2), (5,3,5), (5,4,2), (5,5,5), (5,6,4), 
(6,1,3), (6,2,4), (6,3,4), (6,4,2), (6,5,4), (6,6,5),  
(7,1,3), (7,2,2), (7,3,5), (7,4,4), (7,5,5), (7,6,1),  
(8,1,3), (8,2,2), (8,3,5), (8,4,2), (8,5,5), (8,6,4), 
(9,1,3), (9,2,4), (9,3,5), (9,4,2), (9,5,1), (9,6,5), 
(10,1,3), (10,2,2), (10,3,4), (10,4,1), (10,5,4), (10,6,5),  
(11,1,3), (11,2,1), (11,3,5), (11,4,2), (11,5,1), (11,6,5),  
(12,1,1), (12,2,4), (12,3,1), (12,4,4), (12,5,1), (12,6,5),  
(13,1,3), (13,2,1), (13,3,4), (13,4,2), (13,5,5), (13,6,1), 
(14,1,3), (14,2,4), (14,3,5), (14,4,4), (14,5,5), (14,6,5), 
(15,1,1), (15,2,1), (15,3,4), (15,4,1), (15,5,4), (15,6,1), 
(16,1,3), (16,2,2), (16,3,5), (16,4,2), (16,5,3), (16,6,4), 
(17,1,4), (17,2,4), (17,3,1), (17,4,4), (17,5,1), (17,6,4),  
(18,1,3), (18,2,2), (18,3,3), (18,4,3), (18,5,5), (18,6,3), 
(19,1,3), (19,2,1), (19,3,4), (19,4,2), (19,5,4), (19,6,1), 
(20,1,4), (20,2,4), (20,3,5), (20,4,4), (20,5,5), (20,6,4);

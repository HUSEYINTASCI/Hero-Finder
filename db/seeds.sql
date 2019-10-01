USE hero_db

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


INSERT INTO score (h_id, score) VALUES 
(1,100),(2,80),(3,60),(4,40),(5,20);
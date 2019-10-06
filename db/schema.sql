
DROP DATABASE hero_db;

CREATE DATABASE hero_db;

USE hero_db;

CREATE TABLE questions(
     q_id INT NOT NULL AUTO_INCREMENT,
    question VARCHAR(255),
    PRIMARY KEY (q_id)
);

CREATE TABLE heroes (
    h_id INT NOT NULL AUTO_INCREMENT,
    h_name VARCHAR(255),
    h_link VARCHAR(255),
    h_desc VARCHAR(255),
    PRIMARY KEY (h_id)
);

CREATE TABLE scores (
    id INT NOT NULL AUTO_INCREMENT,
    q_id INT NOT NULL,
    h_id INT NOT NULL,
    answer INT NOT NULL,
    FOREIGN KEY (q_id) REFERENCES questions(q_id),
    FOREIGN KEY (h_id) REFERENCES heroes(h_id),
    PRIMARY KEY (id),
    CHECK (answer >= 0),
    CHECK (answer <= 20)
);
 
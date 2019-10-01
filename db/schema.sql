
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

CREATE TABLE score (
    h_id INT NOT NULL,
    score INT NOT NULL,
    FOREIGN KEY (h_id) REFERENCES heroes(h_id)
);
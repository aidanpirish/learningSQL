-- create database shirts_db
CREATE DATABASE shirt_db;

-- create table shirts
CREATE TABLE shirts (
  shirt_id INT NOT NULL AUTO_INCREMENT,
  article VARCHAR(255) NOT NULL,
  color VARCHAR(255),
  shirt_size VARCHAR(255),
  last_warn INT,
  PRIMARY KEY (shirt_id)
);

-- insert data
INSERT INTO shirts(article, color, shirt_size, last_warn)
VALUES  ('t-shirt', 'white', 'S', 10),
        ('t-shirt', 'green', 'S', 200),
        ('polo shirt', 'black', 'M', 10),
        ('tank top', 'blue', 'S', 50),
        ('t-shirt', 'pink', 'S', 0),
        ('polo shirt', 'red', 'M', 5),
        ('tank top', 'white', 'S', 200),
        ('tank top', 'blue', 'M', 15);

-- add a new shirt
INSERT INTO shirts(article, color, shirt_size, last_warn)
VALUES ('polo shirt', 'purple', 'M', 50);

-- select all shirts, print article and color
SELECT article, color FROM shirts;

-- select medium shirts, print everything but id
SELECT article, color, shirt_size, last_warn FROM shirts WHERE shirt_size='M';

-- update polo shirt to be size L
UPDATE shirts SET shirt_size='L'
WHERE article='polo shirt';

-- update last_warn=15 to last_warn=0
UPDATE shirts SET last_warn=0
WHERE last_warn=15;

-- update all white shirts to size XS and color "off white"
UPDATE shirts SET shirt_size='XS', color="off white"
WHERE color="white";

-- delete all old shirts(last_worn=200)
DELETE FROM shirts WHERE last_warn=200;

-- delete all tank tops
DELETE FROM shirts WHERE article="tank top";

-- delete all shirts
DELETE FROM shirts;

-- drop shirts table
DROP TABLE shirts;

CREATE TABLE users (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL);
CREATE TABLE notes (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
createDate DATE NOT NULL,
modificationDate DATE NOT NULL,
description VARCHAR(100) NOT NULL,
deleteOK TINYINT NOT NULL,
user_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE categories (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL
);
CREATE TABLE categoriesNotes (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
category_id INT,
note_id INT,
FOREIGN KEY (note_id) REFERENCES notes(id),
FOREIGN KEY (category_id) REFERENCES categories(id)
);
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Alberto Fernandez", "partyplanner@olivos.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Mauricio Macri", "thecat@olivos.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Nicolas del Caño", "ofthepipe@olivos.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Nicolas del Caño", "ofthepipe@olivos.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Juan Domingo Perón", "quegrandesoy@olivos.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Richard Garfield", "icreategreatboardgames@wizards.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Stan Lee", "excelsior@wizards.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Jack Kirby", "jack@marvel.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Chris Claremont", "chris@marvel.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Akira Toriyama", "akira@shonenjump.com");
INSERT INTO users (id, name, email)
VALUES (DEFAULT, "Eiichiro Oda", "oda@jump.com");
INSERT INTO categories (id, name)
VALUES (DEFAULT, "gobierno");
INSERT INTO categories (id, name)
VALUES (DEFAULT, "gobierno");
INSERT INTO categories (id, name)
VALUES (DEFAULT, "gobierno");
INSERT INTO categories (id, name)
VALUES (DEFAULT, "tcg");
INSERT INTO categories (id, name)
VALUES (DEFAULT, "comics");
INSERT INTO categories (id, name)
VALUES (DEFAULT, "comics");
INSERT INTO categories (id, name)
VALUES (DEFAULT, "comics");
INSERT INTO categories (id, name)
VALUES (DEFAULT, "manga");
INSERT INTO categories (id, name)
VALUES (DEFAULT, "manga");
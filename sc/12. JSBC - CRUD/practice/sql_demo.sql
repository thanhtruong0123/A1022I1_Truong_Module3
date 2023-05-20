CREATE DATABASE demo;
USE demo;

CREATE TABLE users (
	id INT(3) NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120),
    PRIMARY KEY (id)
);

INSERT INTO users(name, email, country)
VALUES ('Lam', 'lam@codegym.vn', 'Viet Nam'),
		('Kante', 'kante@codegym.vn', 'Kenia');
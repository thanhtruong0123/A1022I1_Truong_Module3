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
        
DELIMITER $$
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN
	SELECT users.name, users.name, users.country
    FROM users
    WHERE users.id = user_id;
    END$$
DELIMITER;

DELIMITER $$
CREATE PROCEDURE insert_user(
	IN user_name VARCHAR(50),
    IN user_email VARCHAR(50),
    IN user_country VARCHAR(50)
)
BEGIN
	INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);
    END$$
DELIMITTER;

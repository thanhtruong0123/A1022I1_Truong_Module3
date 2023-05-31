CREATE DATABASE user_db;
USE user_db;

CREATE TABLE user (
	user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_full_name VARCHAR(50) NOT NULL,
    user_birthday DATE,
    user_create_time DATETIME NOT NULL
);

CREATE TABLE role (
	role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

CREATE TABLE account (
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (role_id) REFERENCES role (role_id)
);
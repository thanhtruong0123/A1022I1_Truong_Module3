CREATE DATABASE qly_sv_db;
USE qly_sv_db;
CREATE TABLE class (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    class_name NVARCHAR(50)
);
CREATE TABLE teacher (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    age INT,
    country VARCHAR(50),
    teacher_name NVARCHAR(50)
);
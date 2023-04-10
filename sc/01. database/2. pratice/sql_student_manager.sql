CREATE DATABASE student_manager_db;
USE student_manager_db;
CREATE TABLE class (
	class_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	class_name VARCHAR(60) NOT NULL,
	start_date DATETIME NOT NULL,
	status BIT
);
CREATE TABLE student (
	student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(30) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(20),
    status BIT,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id) REFERENCES class (class_id)
);
CREATE TABLE subject (
	sub_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_name varchar(30) NOT NULL,
    credit TINYINT NOT NULL DEFAULT (1) CHECK (credit >= 1),
    status BIT DEFAULT (1)
);
CREATE TABLE mark (
	mark_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_id INT NOT NULL,
    student_id INT NOT NULL,
    mark FLOAT DEFAULT 0 CHECK (mark >= 0 AND mark <= 100),
    exam_times TINYINT DEFAULT 1,
	UNIQUE KEY uk_mark (sub_id, student_id),
    FOREIGN KEY (sub_id) REFERENCES subject(sub_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

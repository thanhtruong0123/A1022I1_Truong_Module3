CREATE DATABASE library;
USE library;

CREATE TABLE books (
	book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(50),
    book_author VARCHAR(50),
    book_description VARCHAR(200),
    book_quantity INT
);

CREATE TABLE students (
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50),
    student_class VARCHAR(50)
);

CREATE TABLE borrowings (
	borrowing_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    student_id INT,
    borrowing_status BOOLEAN,
    borrowing_first_date DATE,
    borrowing_last_date DATE,
    FOREIGN KEY (book_id) REFERENCES books (book_id),
    FOREIGN KEY (student_id) REFERENCES students (student_id)
);
USE student_manager_db;

SELECT * FROM student WHERE student_name
LIKE "h%";

SELECT * FROM class WHERE MONTH(start_date) >= 8;

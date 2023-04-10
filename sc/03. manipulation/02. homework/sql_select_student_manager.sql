USE student_manager_db;

SELECT * FROM student WHERE student_name
LIKE "h%";

SELECT * FROM class WHERE MONTH(start_date) >= 12;

SELECT * FROM subject WHERE credit
BETWEEN 3 AND 5;

UPDATE student
SET class_id = 2
WHERE student_name = 'Hung';
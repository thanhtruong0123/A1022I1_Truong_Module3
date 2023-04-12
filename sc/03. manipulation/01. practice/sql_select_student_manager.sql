USE student_manager_db;

-- Hiển thị danh sách tất cả các học viên
SELECT * FROM student;

-- Hiển thị danh sách các học viên đang theo học
SELECT * FROM student
WHERE status = true;

-- Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ
SELECT * FROM subject
WHERE credit < 10;

-- Hiển thị danh sách học viên lớp A1
SELECT s.student_id, s.student_name, c.class_name
FROM student s
JOIN class c ON s.class_id = c.class_id
WHERE class_name = 'A1';

-- Hiển thị điểm môn CF của các học viên
SELECT s.student_id, s.student_name, sub.sub_name, m.mark
FROM student s
JOIN mark m ON s.student_id = m.student_id
JOIN subject sub ON m.sub_id = sub.sub_id
WHERE sub_name = 'CF';
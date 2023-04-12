USE student_manager_db;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất
SELECT * FROM subject
WHERE credit = (SELECT MAX(credit) FROM subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT sub.sub_id, sub.sub_name, sub.credit, sub.status, m.mark
FROM subject sub
JOIN mark m ON sub.sub_id = m.sub_id
WHERE m.mark = (SELECT MAX(mark) FROM mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình (giảm dần)
SELECT s.student_id, s.student_name, s.address, s.phone, s.status, s.class_id, AVG(m.mark)
FROM student s
JOIN mark m ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
ORDER BY AVG(m.mark) DESC;
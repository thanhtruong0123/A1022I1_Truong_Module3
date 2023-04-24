USE furama_db;

-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

SELECT c.customer_id, c.customer_name, COUNT(c.customer_id) AS number_of_booking
FROM customers c
JOIN customer_type ct ON c.customer_type_id = ct.customer_type_id
JOIN contracts ctr ON c.customer_id = ctr.customer_id
WHERE ct.customer_type_name = 'Diamond'
GROUP BY c.customer_id, c.customer_name
ORDER BY number_of_booking ASC;
USE furama_db;

-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau (03 Cách);

-- Cách 01:
SELECT DISTINCT customer_name
FROM customers;

-- Cách 02:
SELECT customer_name
FROM customers
GROUP BY customer_name;

-- Cách 03:

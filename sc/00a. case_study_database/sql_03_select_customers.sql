USE furama_db;

-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
SELECT * FROM customers
WHERE ((DATEDIFF(NOW(), customer_birthday)/365) >= 18
AND (DATEDIFF(NOW(), customer_birthday)/365) <= 50)
AND (customer_address = 'Da Nang'
OR customer_address = 'Quang Tri');
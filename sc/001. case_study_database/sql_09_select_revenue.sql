USE furama_db;

-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.

SELECT SUM(s.service_rental_cost + (adds.additional_service_price * ctrd.contract_detail_quantity)) AS revenue 
FROM services s
JOIN contracts ctr ON s.service_id = ctr.service_id
JOIN contract_details ctrd ON ctr.contract_id = ctrd.contract_id
JOIN additional_services adds ON ctrd.additional_service_id = adds.additional_service_id
GROUP BY 
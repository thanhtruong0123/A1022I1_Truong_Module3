USE furama_db;

-- 6.	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).

SELECT s.service_id, s.service_name, s.service_area, s.service_rental_cost, st.service_type_name
FROM services s
JOIN service_type st ON s.service_type_id = st.service_type_id
JOIN contracts ctr ON s.service_id = ctr.service_id
WHERE s.service_id
NOT IN (
	SELECT service_id
	FROM contracts
    WHERE YEAR(contract_begin_date) = 2021 AND QUARTER(contract_begin_date) = 1
)
GROUP BY s.service_id
ORDER BY s.service_id ASC;

USE furama_db;

-- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.

SELECT s.service_id, s.service_name, s.service_area, s.service_maximum_people, s.service_rental_cost, st.service_type_name
FROM services s
JOIN service_type st ON s.service_type_id = st.service_type_id
JOIN contracts ctr ON s.service_id = ctr.service_id
WHERE YEAR(ctr.contract_begin_date) = 2020
AND s.service_id
NOT IN (
	SELECT service_id
    FROM contracts
    WHERE YEAR(contract_begin_date) = 2021
    GROUP BY service_id
)
GROUP BY service_id;
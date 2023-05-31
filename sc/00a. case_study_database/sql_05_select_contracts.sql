USE furama_db;

-- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).

SELECT c.customer_id, c.customer_name, ct.customer_type_name, ctr.contract_id, s.service_name, ctr.contract_begin_date, ctr.contract_end_date, (s.service_rental_cost + (adds.additional_service_price * ctrd.contract_detail_quantity)) AS total_price
FROM customers c
LEFT JOIN customer_type ct ON c.customer_type_id = ct.customer_type_id
LEFT JOIN contracts ctr ON c.customer_id = ctr.customer_id
LEFT JOIN services s ON ctr.service_id = s.service_id
LEFT JOIN contract_details ctrd ON ctr.contract_id = ctrd.contract_id
LEFT JOIN additional_services adds ON ctrd.additional_service_id = adds.additional_service_id
GROUP BY c.customer_id, c.customer_name, ct.customer_type_name, ctr.contract_id, s.service_name, ctr.contract_begin_date, ctr.contract_end_date, total_price
ORDER BY c.customer_id ASC;
USE furama_db;

-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.

SELECT * FROM employees
WHERE (TRIM(SUBSTRING_INDEX(employee_name, ' ', -1)) LIKE 'H%'
OR TRIM(SUBSTRING_INDEX(employee_name, ' ', -1)) LIKE 'T%'
OR TRIM(SUBSTRING_INDEX(employee_name, ' ', -1)) LIKE 'K%')
AND LENGTH(employee_name) <= 15;
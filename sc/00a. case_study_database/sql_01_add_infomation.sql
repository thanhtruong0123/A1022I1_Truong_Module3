USE furama_db;

-- 1.	Thêm mới thông tin cho tất cả các bảng có trong CSDL để có thể thoả mãn các yêu cầu bên dưới.

INSERT INTO positions
VALUES (1, 'Lễ Tân'),
		(2, 'Phục Vụ'),
        (3, 'Chuyên Viên'),
        (4, 'Giám Sát'),
        (5, 'Quản Lý'),
        (6, 'Giám Đốc');

INSERT INTO levels
VALUES (1, 'Trung Cấp'),
		(2, 'Cao Đẳng'),
		(3, 'Đại Học'),
        (4, 'Sau Đại Học');
        
INSERT INTO departments
VALUES (1, 'Sale-Marketing'),
		(2, 'Hành Chính'),
        (3, 'Phục Vụ'),
        (4, 'Quản Lý');
        
INSERT INTO employees
VALUES (1, 'Dinh Van Hoang', '1999-09-01', '356214987', 70000000, '0123456789', 'vana@gmail.com', '22 Hoang Dieu', 6, 4, 4),
		(2, 'Truong Dinh Tung', '2000-02-03', '564982317',14000000, '0123456788', 'vanb@gmail.com', '23 Mai Hac De', 5, 4, 4),
        (3, 'Hoang Thi Tuyet', '2003-03-03', '649531287',9000000, '0123456787', 'vanc@gmail.com', '94 Hung Vuong', 4, 3, 4),
		(4, 'Dao Kim Kiet', '2001-02-03', '648235197',7000000, '0123456786', 'vand@gmail.com', '04 Ong Ich Khiem', 3, 3, 1),
		(5, 'Nguyen Cong Son', '2004-12-03', '123456798',7000000, '0123456785', 'vane@gmail.com', '02 Mai Hac De', 2, 2, 3),
		(6, 'Hoang Van Luyen', '2002-12-03', '134872596',7000000, '0123456784', 'vanf@gmail.com', '02 Mai An Tiem', 1, 2, 2);
        
INSERT INTO customer_type
VALUES (1, 'Diamond'),
		(2, 'Platinum'),
        (3, 'Gold'),
        (4, 'Silver'),
        (5, 'Member');
        
INSERT INTO customers
VALUES (1, 1, 'Truong Thanh Truong', '1999-06-03', 1, '546321897', '0375318149', 'thanhtruong0123@gmail.com', 'New York'),
		(2, 2, 'Tom Holland', '1999-09-03', 1, '432156789', '0123', 'holland@gmail.com', 'Da Nang'),
		(3, 3, 'Tony Stark', '1945-09-03', 1, '123465897', '3123', 'tony@gmail.com', 'Quang Tri'),
		(4, 4, 'Wanda Maximoff', '1997-10-03', 0, '643512798', '2134', 'wanda@gmail.com', 'Da Nang'),
		(5, 5, 'Natasha Maximoff', '1994-10-03', 0, '643521779', '12421', 'natasha@gmail.com', 'Phu Yen'),
		(6, 1, 'Uzumaki Naruto', '1994-10-03', 1, '643521779', '12421', 'naruto@gmail.com', 'Da Nang'),
		(7, 1, 'Uchiha Itachi', '1994-10-03', 1, '643521779', '12421', 'itachi@gmail.com', 'Quang Tri'),
		(8, 2, 'Uchiha Itachi', '1999-09-03', 1, '123465897', '0123', 'itachi@gmail.com', 'Phu Yen'),
        (9, 5, 'Tom Holland', '1994-10-03', 1, '546321897', '2134', 'tom@gmail.com', 'Quang Tri');
        
INSERT INTO rental_type
VALUES (1, 'Thue theo nam'),
		(2, 'Thue theo thang'),
        (3, 'Thue theo ngay'),
        (4, 'Thue theo gio');
        
INSERT INTO service_type
VALUES (1, 'Villa'),
		(2, 'House'),
        (3, 'Room');
        
INSERT INTO services
VALUES (1, 'Villa Hoa Sen', 50, 10000000, 30, 1, 1, 'VIP' , 'TV, tủ lạnh', 15, 3),
		(2, 'Villa Hoa Hong', 40, 9000000, 25, 2, 1, 'PRO', 'TV, tủ lạnh', 10, 3),
        (3, 'House Hoa Sen', 20, 5000000, 10, 3, 2, 'VIP', 'TV, tủ lạnh', NULL, 2),
        (4, 'House Hoa Hong', 15, 4000000, 7, 3, 2, 'PRO', 'TV, tủ lạnh', NULL, 2),
        (5, 'Room Hoa Sen', 4, 1000000, 2, 4, 3, NULL, NULL, NULL, NULL),
        (6, 'Room Hoa Hong', 2, 700000, 1, 4, 3, NULL, NULL, NULL, NULL);
        
INSERT INTO contracts
VALUES (1, '2021-01-01', '2022-01-01', 5000000, 1, 1, 1),
		(2, '2020-01-01', '2021-09-01', 1000000, 2, 2, 2),
        (3, '2020-01-01', '2021-01-02', 200000, 3, 3, 3),
        (4, '2021-02-04', '2022-02-02', 200000, 3, 1, 6),
        (5, '2021-01-01', '2022-07-02', 100000, 1, 9, 5),
		(6, '2020-02-04', '2021-05-02', 200000, 2, 2, 5),
		(7, '2020-02-04', '2021-03-02', 500000, 2, 6, 4),
		(8, '2020-02-04', '2021-01-02', 400000, 2, 7, 3),
		(9, '2021-02-01', '2022-02-02', 300000, 2, 6, 1),
		(10, '2021-10-01', '2022-12-02', 600000, 2, 8, 1),
		(11, '2021-12-01', '2022-12-05', 600000, 2, 9, 1),
		(12, '2021-06-01', '2022-07-05', 900000, 5, 3, 2),
		(13, '2021-08-01', '2022-09-05', 1000000, 5, 5, 5);
        
INSERT INTO additional_services
VALUES (1, 'Massage', 500000, 'don vi', 'du'),
		(2, 'Karaoke', 300000, 'don vi', 'du'),
		(3, 'Foods', 300000, 'don vi', 'du'),
		(4, 'Drinks', 300000, 'don vi', 'du'),
		(5, 'Vehicle Rent', 700000, 'don vi', 'du');
        
INSERT INTO contract_details
VALUES (1, 1, 1, 1),
		(2, 2, 3, 2),
        (3, 3, 2, 1);
        
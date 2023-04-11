USE sale_manager_db;

INSERT INTO customers (customer_name, customer_age)
VALUES ('Minh Quan', 10),
		('Ngoc Oanh', 20),
        ('Hong Ha', 50);

INSERT INTO orders (customer_id, order_date, order_total_price)
VALUES (1, '2006-3-21', NULL),
		(2, '2006-3-23', NULL),
        (1, '2006-3-16', NULL);
        
INSERT INTO products (product_name, product_price)
VALUES ('May Giat', 3),
		('Tu Lanh', 5),
		('Dieu Hoa', 7),
        ('Quat', 1),
        ('Bep Dien', 2);
        
INSERT INTO order_details (order_id, product_id, order_qty)
VALUES (1, 1, 3),
		(1, 3, 7),
        (1, 4, 2),
        (2, 1, 1),
        (3, 1, 8),
        (2, 5, 4),
        (2, 3, 3);
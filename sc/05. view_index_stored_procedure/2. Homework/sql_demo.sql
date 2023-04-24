CREATE DATABASE demo;
USE demo;

CREATE TABLE products (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_code VARCHAR(10) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_price FLOAT,
    product_amount INT,
    product_description VARCHAR(100),
    product_status BIT
);

CREATE UNIQUE INDEX idx_product_code ON products (product_code);

CREATE INDEX idex_product_name_price ON products (product_name, product_price);

EXPLAIN SELECT * FROM products WHERE product_code;

CREATE VIEW view_products AS
SELECT product_code, product_name, product_price, product_status
FROM products;


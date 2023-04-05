CREATE DATABASE sale_db;
USE sale_db;
CREATE TABLE customers(
customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_name NVARCHAR(50) NOT NULL,
customer_age INT CHECK( customer_age > 0 AND customer_age < 120)
);
CREATE TABLE products(
product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_name NVARCHAR(100) NOT NULL,
product_price INT CHECK( product_price > 0)
);
CREATE TABLE orders(
order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
order_date DATE,
order_total_price INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE order_details(
order_id INT,
product_id INT,
order_qty INT,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
)
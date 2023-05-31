CREATE DATABASE furama_db;
USE furama_db;

CREATE TABLE positions (
	position_id INT AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(45)
);

CREATE TABLE levels (
	level_id INT AUTO_INCREMENT PRIMARY KEY,
    level_name VARCHAR(45)
);

CREATE TABLE departments (
	department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(45)
);

CREATE TABLE employees (
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(45) NOT NULL,
    employee_birthday DATE NOT NULL,
    employee_identify_id VARCHAR(45),
    employee_salary DOUBLE,
    employee_phone_number VARCHAR(45),
    employee_email VARCHAR(45),
    employee_address VARCHAR(45),
    position_id INT NOT NULL,
    level_id INT NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (position_id) REFERENCES positions(position_id),
    FOREIGN KEY (level_id) REFERENCES levels(level_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE customer_type (
	customer_type_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_type_name VARCHAR(45)
);

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_type_id INT NOT NULL,
    customer_name VARCHAR(45) NOT NULL,
    customer_birthday DATE NOT NULL,
    customer_gender BIT(1) NOT NULL,
    customer_identify_id VARCHAR(45) NOT NULL,
    customer_phone_number VARCHAR(45) NOT NULL,
    customer_email VARCHAR(45),
    customer_address VARCHAR(45),
    FOREIGN KEY (customer_type_id) REFERENCES customer_type(customer_type_id)
);

CREATE TABLE rental_type (
	rental_type_id INT AUTO_INCREMENT PRIMARY KEY,
    rental_type_name VARCHAR(45)
);

CREATE TABLE service_type (
	service_type_id INT AUTO_INCREMENT PRIMARY KEY,
    service_type_name VARCHAR(45)
);

CREATE TABLE services (
	service_id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(45) NOT NULL,
    service_area INT,
    service_rental_cost DOUBLE NOT NULL,
    service_maximum_people INT,
    rental_type_id INT NOT NULL,
    service_type_id INT NOT NULL,
    service_room_standard VARCHAR(45),
    service_other_amenity VARCHAR(45),
    service_pool_area DOUBLE,
    service_floor_number INT,
    FOREIGN KEY (rental_type_id) REFERENCES rental_type(rental_type_id),
    FOREIGN KEY (service_type_id) REFERENCES service_type(service_type_id)
);

CREATE TABLE contracts (
	contract_id INT AUTO_INCREMENT PRIMARY KEY,
    contract_begin_date DATE NOT NULL,
    contract_end_date DATE NOT NULL,
    contract_deposit DOUBLE,
    employee_id INT NOT NULL,
    customer_id INT NOT NULL,
    service_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);

CREATE TABLE additional_services (
	additional_service_id INT AUTO_INCREMENT PRIMARY KEY,
    additional_service_name VARCHAR(45) NOT NULL,
    additional_service_price DOUBLE NOT NULL,
    additional_service_unit VARCHAR(45) NOT NULL,
    additional_service_status VARCHAR(45)
);

CREATE TABLE contract_details (
	contract_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    contract_id INT NOT NULL,
    additional_service_id INT NOT NULL,
    contract_detail_quantity INT,
    FOREIGN KEY (contract_id) REFERENCES contracts(contract_id),
    FOREIGN KEY (additional_service_id) REFERENCES additional_services(additional_service_id)
);

    
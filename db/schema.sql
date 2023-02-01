DROP DATABASE IF EXISTS companyInfo_db;
CREATE DATABASE companyInfo_db;

USE companyInfo_db;

-- Table for department info 
DROP TABLE IF EXISTS department;
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL

);

-- Starts department id @ 1000 and increments up from there
ALTER TABLE department AUTO_INCREMENT = 1001;

-- Table for roles info
DROP TABLE IF EXISTS role;
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department INT,
    FOREIGN KEY (department)
    REFERENCES department(id)

);

ALTER TABLE role AUTO_INCREMENT = 2001;

-- Table for employee info
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role INT, 
    manager_id INT DEFAULT NULL,
    FOREIGN KEY (role)
    REFERENCES role(id)

);

ALTER TABLE employees AUTO_INCREMENT = 3001;

DROP DATABASE IF EXISTS companyInfo_db;
CREATE DATABASE companyInfo_db;

USE companyInfo_db;

-- Table for department info 
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL

);

-- Table for roles info
DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    departments_id INT,
    FOREIGN KEY (departments_id)
    REFERENCES departments(id)

);

-- Table for employee info
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    roles_id INT NOT NULL, 
    manager_id INT,
    FOREIGN KEY (roles_id)
    REFERENCES roles(id)

);

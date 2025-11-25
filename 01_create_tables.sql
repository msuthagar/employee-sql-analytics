CREATE DATABASE employee_analytics;
USE employee_analytics;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    gender VARCHAR(10),
    dept_id INT,
    salary INT,
    hire_date DATE,
    city VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

# Employee Management & HR Analytics (SQL Project)

## 📌 Overview
This project is a simple Employee Management & HR Analytics system built using MySQL.
It focuses on analyzing employee data such as department distribution, salaries, and hiring trends using SQL.

## 🛠 Tech Stack
- MySQL
- SQL (DDL + DML + Joins + Aggregations)

## 🗄 Database Structure
**Database:** `employee_analytics`

**Tables:**
- `departments` – department id, name, and location
- `employees` – employee details like name, gender, salary, hire date, department

## 📂 Files in this Repository
- `01_create_tables.sql` → Creates the database and tables.
- `02_insert_data.sql` → Inserts sample records into the tables.
- `03_analysis_queries.sql` → Contains analytical SQL queries for HR insights.

## 📊 Example Analysis Performed
- Total number of employees
- Employees per department
- Average salary per department
- Highest paid employee
- Employees earning above a salary threshold
- Recently hired employees
- Gender-wise employee count

## 🚀 How to Run
1. Open MySQL Workbench.
2. Run `01_create_tables.sql` to create the schema.
3. Run `02_insert_data.sql` to insert sample data.
4. Run `03_analysis_queries.sql` to view analytics output.

## 🎯 Purpose
This project is part of my learning path towards Data Analysis.
It demonstrates my ability to:
- Design a relational schema
- Work with SQL joins and aggregations
- Answer HR/business-related questions using SQL only

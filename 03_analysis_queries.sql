USE employee_analytics;

-- 1. View all employees
SELECT * FROM employees;

-- 2. Count total employees
SELECT COUNT(*) AS total_employees FROM employees;

-- 3. Count employees per department
SELECT d.dept_name, COUNT(*) AS employee_count
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- 4. Average salary by department
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- 5. Highest-paid employee
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;

-- 6. Employees earning above 50,000
SELECT emp_name, salary
FROM employees
WHERE salary > 50000;

-- 7. Employees hired after Jan 2023
SELECT emp_name, hire_date
FROM employees
WHERE hire_date > '2023-01-01';

-- 8. Highest salary in each department
SELECT d.dept_name, MAX(e.salary) AS highest_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- 9. Employees living in Chennai
SELECT emp_name, city
FROM employees
WHERE city = 'Chennai';

-- 10. Female vs Male count
SELECT gender, COUNT(*) AS count
FROM employees
GROUP BY gender;

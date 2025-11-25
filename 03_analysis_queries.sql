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

-- 11. Top 3 highest-paid employees
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 12. Department with the highest average salary
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY avg_salary DESC
LIMIT 1;

-- 13. Employees earning above their department average (SUBQUERY)
SELECT emp_name, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);

-- 14. Total salary cost per department
SELECT d.dept_name, SUM(e.salary) AS total_salary_cost
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY total_salary_cost DESC;

-- 15. Employees hired in the last 6 months
SELECT emp_name, hire_date
FROM employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

-- 16. Count of employees by city
SELECT city, COUNT(*) AS employee_count
FROM employees
GROUP BY city
ORDER BY employee_count DESC;

-- 17. Second highest salary (NO LIMIT)
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- 18. Employees whose salary is between 40,000 and 60,000
SELECT emp_name, salary
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- 19. Departments with more than 2 employees (HAVING)
SELECT d.dept_name, COUNT(*) AS total_employees
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING COUNT(*) > 2;

-- 20. Highest-paid employee in each department (SUBQUERY + JOIN)
SELECT d.dept_name, e.emp_name, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
WHERE (e.dept_id, salary) IN (
    SELECT dept_id, MAX(salary)
    FROM employees
    GROUP BY dept_id
);

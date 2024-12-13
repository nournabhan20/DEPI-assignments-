SELECT emp_id, last_name, salary
FROM employees
WHERE salary BETWEEN 2000 AND 5000
AND manager_id NOT IN (101, 200);
SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
ORDER BY d.name ASC;
SELECT dept_id, COUNT(emp_id) AS number_of_employees, AVG(salary) AS average_salary
FROM employees
GROUP BY dept_id;

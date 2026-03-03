-- =====================================
-- 06 - HAVING examples
-- Author: Abner Sales
-- =====================================

-- Departments with more than 3000 active employees
SELECT d.dept_name,
       COUNT(de.emp_no) AS total_employees
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
GROUP BY d.dept_name
HAVING COUNT(de.emp_no) > 3000;

-- Departments with average salary greater than 75000
SELECT d.dept_name,
       AVG(s.salary) AS avg_salary
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no = de.dept_no
INNER JOIN salaries s
ON de.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
GROUP BY d.dept_name
HAVING AVG(s.salary) > 75000;

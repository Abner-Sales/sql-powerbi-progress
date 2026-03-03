-- =====================================
-- 05 - GROUP BY examples
-- Author: Abner Sales
-- =====================================

-- Count employees per department
SELECT d.dept_name,
       COUNT(de.emp_no) AS total_employees
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
GROUP BY d.dept_name;

-- Average salary per department
SELECT d.dept_name,
       AVG(s.salary) AS avg_salary
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no = de.dept_no
INNER JOIN salaries s
ON de.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
GROUP BY d.dept_name;

-- Number of employees hired per year
SELECT YEAR(hire_date) AS hire_year,
       COUNT(*) AS total_hired
FROM employees
GROUP BY YEAR(hire_date)
ORDER BY hire_year;

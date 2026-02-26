-- =====================================
-- 01 - Basic SELECT statements
-- Author: Abner Sales
-- =====================================

-- Select all columns
SELECT *
FROM employees
LIMIT 10;

-- Select specific columns
SELECT emp_no, first_name, last_name
FROM employees
LIMIT 10;

-- Select with ordering
SELECT emp_no, first_name, last_name
FROM employees
ORDER BY emp_no DESC
LIMIT 10;

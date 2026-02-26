-- =====================================
-- 03 - Logical Operators (AND / OR)
-- Author: Abner Sales
-- =====================================

-- AND example
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1998-01-01'
AND last_name LIKE 'S%'
LIMIT 20;

-- OR example
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Mark'
OR first_name = 'John'
LIMIT 20;

-- Combining conditions
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1995-01-01'
AND (first_name = 'Mark' OR first_name = 'John')
LIMIT 20;

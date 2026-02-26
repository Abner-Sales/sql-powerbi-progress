-- =====================================
-- 02 - WHERE filtering examples
-- Author: Abner Sales
-- =====================================

-- Employees hired after 1998
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1998-01-01'
LIMIT 20;

-- Filter by specific first name
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Mark'
LIMIT 20;

-- Filter by last name pattern
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'S%'
LIMIT 20;

-- =====================================
-- 04 - INNER JOIN examples
-- Author: Abner Sales
-- =====================================

-- Basic INNER JOIN between employees and titles
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title
FROM employees e
INNER JOIN titles t
ON e.emp_no = t.emp_no
LIMIT 20;

-- INNER JOIN with filter (current titles only)
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title
FROM employees e
INNER JOIN titles t
ON e.emp_no = t.emp_no
WHERE t.to_date = '9999-01-01'
LIMIT 20;

-- INNER JOIN employees and salaries (current salary)
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01'
LIMIT 20;

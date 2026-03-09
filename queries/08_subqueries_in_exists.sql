-- =====================================
-- 08 - Subqueries using IN and EXISTS
-- Author: Abner Sales
-- =====================================

-- Employees who have worked as managers
SELECT emp_no,
       first_name,
       last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
);

-- Employees that currently have a salary record
SELECT e.emp_no,
       e.first_name,
       e.last_name
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM salaries s
    WHERE s.emp_no = e.emp_no
);

-- Employees whose salary is above the current average
SELECT emp_no,
       salary
FROM salaries
WHERE salary > (
    SELECT AVG(salary)
    FROM salaries
    WHERE to_date = '9999-01-01'
)
AND to_date = '9999-01-01';

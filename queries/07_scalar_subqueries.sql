-- =====================================
-- 07 - Scalar Subqueries examples
-- Author: Abner Sales
-- =====================================

-- Employees earning more than the average salary
SELECT emp_no,
       salary
FROM salaries
WHERE salary > (
    SELECT AVG(salary)
    FROM salaries
);

-- Current employees earning more than the current average salary
SELECT s.emp_no,
       s.salary
FROM salaries s
WHERE s.to_date = '9999-01-01'
AND s.salary > (
    SELECT AVG(s2.salary)
    FROM salaries s2
    WHERE s2.to_date = '9999-01-01'
);

-- Highest current salary in the company
SELECT emp_no,
       salary
FROM salaries
WHERE salary = (
    SELECT MAX(salary)
    FROM salaries
    WHERE to_date = '9999-01-01'
);

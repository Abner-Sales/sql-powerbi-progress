-- =====================================
-- 09 - CASE WHEN examples
-- Author: Abner Sales
-- =====================================

-- Classify employees based on salary
SELECT emp_no,
       salary,
       CASE
           WHEN salary < 50000 THEN 'Low Salary'
           WHEN salary BETWEEN 50000 AND 80000 THEN 'Medium Salary'
           ELSE 'High Salary'
       END AS salary_category
FROM salaries
WHERE to_date = '9999-01-01';

-- Identify employees above or below average salary
SELECT emp_no,
       salary,
       CASE
           WHEN salary > (
               SELECT AVG(salary)
               FROM salaries
               WHERE to_date = '9999-01-01'
           ) THEN 'Above Average'
           ELSE 'Below Average'
       END AS salary_comparison
FROM salaries
WHERE to_date = '9999-01-01';

-- Classify employees by hire period
SELECT emp_no,
       hire_date,
       CASE
           WHEN YEAR(hire_date) < 1990 THEN 'Old Employee'
           WHEN YEAR(hire_date) BETWEEN 1990 AND 2000 THEN 'Mid Period'
           ELSE 'Recent Employee'
       END AS hire_category
FROM employees;

-- 1. Display all records from a table
SELECT * FROM emp;

-- 2. Display only employee name and salary
SELECT name, salary FROM emp;

-- 3. Find employees whose salary is greater than 30000
SELECT * FROM emp WHERE salary > 30000;

-- 4. Find employees with NULL salary
SELECT * FROM emp WHERE salary IS NULL;

-- 5. Count total number of employees
SELECT COUNT(*) FROM emp;

-- 6. Find the highest salary
SELECT MAX(salary) FROM emp;

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

-- 7. Find the second highest salary (very important)
SELECT MAX(salary)
FROM emp
WHERE salary < (SELECT MAX(salary) FROM emp);

-- 8. Find employee(s) with the highest salary
SELECT *
FROM emp
WHERE salary = (SELECT MAX(salary) FROM emp);



-- 9. Find total salary department-wise
SELECT dept_id, SUM(salary)
FROM emp
GROUP BY dept_id;

-- 10. Find employees earning more than average salary
SELECT *
FROM emp
WHERE salary > (SELECT AVG(salary) FROM emp);

-- 11. Find duplicate employee names
SELECT name, COUNT(*)
FROM emp
GROUP BY name
HAVING COUNT(*) > 1;

-- 12. Delete duplicate records
DELETE e1
FROM emp e1
JOIN emp e2
ON e1.name = e2.name AND e1.id > e2.id;

-- 13. Find employees whose name starts with 'A'
SELECT * FROM emp WHERE name LIKE 'A%';

-- 14. Find employees with salary between 20000 and 50000
SELECT * FROM emp
WHERE salary BETWEEN 20000 AND 50000;

-- 15. Find top 5 highest paid employees
SELECT *
FROM emp
ORDER BY salary DESC
LIMIT 5;

-- 🔗 JOIN BASED SQL PROBLEMS (Most Asked)
16. Fetch employee name with department name
SELECT e.name, d.dept_name
FROM emp e
INNER JOIN dept d
ON e.dept_id = d.id;

-- 17. Find employees without any department
SELECT e.*
FROM emp e
LEFT JOIN dept d
ON e.dept_id = d.id
WHERE d.id IS NULL;

-- 18. Find departments with no employees
SELECT d.*
FROM dept d
LEFT JOIN emp e
ON d.id = e.dept_id
WHERE e.id IS NULL;

-- 🚀 ADVANCED SQL PROBLEMS
-- 19. Find the third highest salary
SELECT DISTINCT salary
FROM emp e1
WHERE 3 = (
  SELECT COUNT(DISTINCT salary)
  FROM emp e2
  WHERE e2.salary >= e1.salary
);

-- 20. Find employees with even salary
SELECT * FROM emp WHERE salary % 2 = 0;

-- 21. Find employees with odd salary
SELECT * FROM emp WHERE salary % 2 != 0;

-- 22. Categorize salary as High or Low
SELECT name,
CASE
 WHEN salary >= 50000 THEN 'High'
 ELSE 'Low'
END AS salary_level
FROM emp;

-- 23. Fetch the latest inserted record
SELECT *
FROM emp
ORDER BY created_at DESC
LIMIT 1;

-- 24. Find highest salary in each department
SELECT dept_id, MAX(salary)
FROM emp
GROUP BY dept_id;

-- 25. Display employee and their manager (Self Join)
SELECT e.name AS employee, m.name AS manager
FROM emp e
JOIN emp m
ON e.manager_id = m.id;

-- ⚡ PERFORMANCE & REAL-WORLD SQL
-- 26. Create an index on salary column
CREATE INDEX idx_salary ON emp(salary);

-- 27. Analyze query performance
EXPLAIN SELECT * FROM emp WHERE salary > 40000;

-- 28. Transaction example
START TRANSACTION;
UPDATE emp SET salary = salary + 5000 WHERE id = 1;
ROLLBACK;

-- 29. Stored Procedure example
CREATE PROCEDURE getEmployees()
BEGIN
 SELECT * FROM emp;
END;

-- 30. Trigger example
CREATE TRIGGER before_emp_insert
BEFORE INSERT ON emp
FOR EACH ROW
SET NEW.salary = IFNULL(NEW.salary, 0);

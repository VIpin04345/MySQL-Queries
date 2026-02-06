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



----------------------------------------------------------------------------------------------------------------



--Find the second highest salary from employees table.

SELECT MAX(salary) AS SecondHighestSalary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);



--Find the Nth highest salary.

SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT N-1, 1;

--Find duplicate emails.

SELECT email, COUNT(*) AS cnt
FROM users
GROUP BY email
HAVING COUNT(*) > 1;


--Follow-up: delete duplicates? (keep one)

DELETE u1
FROM users u1
JOIN users u2
ON u1.email = u2.email AND u1.id > u2.id;


-- Employees with No Department
SELECT e.*
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.id
WHERE d.id IS NULL;

-- Department-wise Highest Salary

SELECT dept_id, MAX(salary) AS max_salary
FROM employees
GROUP BY dept_id;

-- -- Advanced version (employee name also):

SELECT e.*
FROM employees e
JOIN (
  SELECT dept_id, MAX(salary) salary
  FROM employees
  GROUP BY dept_id
) t
ON e.dept_id = t.dept_id AND e.salary = t.salary;


-- 6️⃣ Count Employees in Each Department
SELECT dept_id, COUNT(*) AS total_emp
FROM employees
GROUP BY dept_id;

-- 7️⃣ Find Employees Earning Above Average Salary
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 8️⃣ Customers Who Never Ordered
SELECT c.*
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.id IS NULL;


-- 🚨 Very common interview question.

-- 9️⃣ Find Consecutive Records (Login 3 Days in a Row)
SELECT DISTINCT a.user_id
FROM logins a
JOIN logins b ON a.user_id = b.user_id AND b.login_date = a.login_date + INTERVAL 1 DAY
JOIN logins c ON a.user_id = c.user_id AND c.login_date = a.login_date + INTERVAL 2 DAY;


-- 🔥 Seen in product companies.

-- 🔟 Remove Duplicate Rows (Keep Lowest ID)
DELETE FROM employees
WHERE id NOT IN (
  SELECT MIN(id)
  FROM employees
  GROUP BY email
);

-- 1️⃣1️⃣ Find Employees with Same Salary
SELECT salary
FROM employees
GROUP BY salary
HAVING COUNT(*) > 1;

-- 1️⃣2️⃣ Fetch Last 3 Records
SELECT *
FROM employees
ORDER BY id DESC
LIMIT 3;

-- 1️⃣3️⃣ Difference Between WHERE and HAVING
-- -- WHERE works before GROUP BY
SELECT dept_id, COUNT(*)
FROM employees
WHERE salary > 30000
GROUP BY dept_id;

-- -- HAVING works after GROUP BY
SELECT dept_id, COUNT(*)
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 5;


-- 📌 Interview must-know

-- 1️⃣4️⃣ Find Even / Odd Records
-- -- Even
SELECT * FROM employees WHERE MOD(id,2)=0;

-- -- Odd
SELECT * FROM employees WHERE MOD(id,2)=1;

-- 1️⃣5️⃣ Highest Salary Without LIMIT
-- SELECT salary
-- FROM employees e1
-- WHERE 1 = (
--   SELECT COUNT(DISTINCT salary)
--   FROM employees e2
--   WHERE e2.salary >= e1.salary
-- );

-- CREATE DATABASE collage;
-- USE collage;

-- CREATE DATABASE collage;
-- USE collage;


-- CREATE TABLE student(
-- id INT PRIMARY KEY,
-- name VARCHAR(50),
-- age INT NOT NULL
-- );

-- CREATE TABLE student(
-- id INT PRIMARY KEY,
-- name VARCHAR(50),
-- age INT NOT NULL
-- );


-- INSERT INTO student VALUES(
-- 101,"SHUBHAM YADAV",21
-- );


-- INSERT INTO student VALUES(
-- 102,"kishan yadav",17
-- );

-- SELECT * FROM student;

-- CREATE DATABASE IF NOT EXISTS collage;
-- DROP DATABASE IF EXISTS COLLAGES;

-- SHOW DATABASES;
-- SHOW TABLES;


-- DROP TABLE student;

-- CREATE TABLE student(
-- rollno INT PRIMARY KEY,
-- name VARCHAR(50)
-- );


-- CREATE TABLE student(
-- rollno INT PRIMARY KEY,
-- name VARCHAR(50)
-- );

-- CREATE TABLE student(
-- rollno INT PRIMARY KEY,
-- name VARCHAR(50)
-- );


-- INSERT INTO student(rollno,name)
-- VALUES
-- (101,'SHUBHAM YADAV'),
-- (102,'KISHAN YADAV');
-- INSERT INTO student VALUES (103,'RAM');


-- SELECT * FROM student;

-- CREATE DATABASE IF NOT EXISTS XYZ_Comapny;
-- USE XYZ_Comapny;
-- CREATE TABLE employee_info(
-- id INT PRIMARY KEY,
-- name VARCHAR(50),
-- salary INT NOT NULL
-- );

-- INSERT INTO employee_info(id , name , salary)
-- VALUES
-- (1,'ADAM',25000),
-- (2,'BOB',30000),
-- (3,'CASEY',40000);

-- SELECT * FROM employee_info;
-- SELECT name FROM employee_info;
-- SELECT salary, name FROM employee_info;

-- CREATE TABLE temp1(
-- id INT UNIQUE
-- );
-- INSERT INTO temp1 VALUES(101);
-- INSERT INTO temp1 VALUES(101);


-- CREATE DATABASE IF NOT EXISTS collage1;
-- USE collage1;
-- CREATE TABLE student(
-- rollno INT PRIMARY KEY,
-- name VARCHAR(50),
-- marks INT NOT NULL,
-- grade VARCHAR(1),
-- city VARCHAR(20)
-- );


-- INSERT INTO student (rollno, name, marks,grade,city)
-- VALUES
-- (101,'ANIL',78,'C','PUNE'),
-- (102,'BHUMIKA',93,'A','MUMBAI'),
-- (103,'CHETAN',85,'B','MUMBAI'),
-- (104,'DHRUV',96,'A','DELHI'),
-- (105,'EMANUEL',12,'F','DELHI'),
-- (106,'FARAH',82,'B','DELHI');

-- INSERT INTO student (rollno, name, marks,grade,city)
-- VALUES
-- (101,'ANIL',78,'C','PUNE'),
-- (102,'BHUMIKA',93,'A','MUMBAI'),
-- (103,'CHETAN',85,'B','MUMBAI'),
-- (104,'DHRUV',96,'A','DELHI'),
-- (105,'EMANUEL',12,'F','DELHI'),
-- (106,'FARAH',82,'B','DELHI');

-- SELECT * FROM student;
-- SELECT city FROM STUDENT;
-- SELECT DISTINCT city FROM student;


-- SELECT * FROM student;
-- SELECT city FROM STUDENT;
-- SELECT DISTINCT city FROM student;

-- SELECT * FROM student WHERE marks>80;
-- SELECT * FROM student WHERE city='MUMBAI';


-- SELECT* FROM student WHERE marks>80 AND city='MUMBAI';
-- SELECT* FROM student WHERE marks>80 OR city='MUMBAI';

-- SELECT * FROM student WHERE marks BETWEEN 80  and 90;
-- SELECT * FROM student WHERE city IN ("DELHI","MUMBAI",'GURGAON');


-- SELECT * FROM student WHERE city NOT IN ("DELHI","MUMBAI");
-- SELECT * FROM student WHERE marks>75 LIMIT 3;

-- SELECT * FROM student ORDER BY marks ASC;
-- SELECT * FROM student ORDER BY city DESC;

-- SELECT * FROM student ORDER BY marks DESC LIMIT 3;

-- SELECT MAX(marks) FROM student;
-- SELECT MIN(marks) FROM student;
-- SELECT AVG(marks) FROM student;
-- SELECT COUNT(name) FROM student;
-- SELECT SUM(marks) FROM student;

-- SELECT COUNT(name),city,name FROM student
-- GROUP BY city,name ;
-- SELECT AVG(marks),city FROM student
-- GROUP BY city ;
-- SELECT AVG(marks),city FROM student 
-- GROUP BY city ORDER BY city ASC;
-- SELECT COUNT(customer), mode FROM payment 
-- GROUP BY mode;
-- SELECT COUNT(name),grade FROM student
-- GROUP BY grade ORDER BY grade;

-- SELECT COUNT(name),city
-- FROM student
-- GROUP BY city 
-- HAVING max(marks)>90;
-- SELECT city, count(marks)  FROM student
-- WHERE grade='A'
-- GROUP BY city
-- HAVING MAX(marks)>93
-- ORDER BY city ASC;

-- UPDATE student
-- SET grade='O'
-- WHERE grade='A';

-- UPDATE student
-- SET grade='B'
-- where marks BETWEEN 80 AND 90;

-- UPDATE student 
-- SET marks=marks+1;
-- SELECT * FROM student;

-- -- DELETE  ROWS AND DATA----
-- DELETE FROM student
-- WHERE marks<=15;


-- CREATE TABLE dept(
-- id INT PRIMARY KEY,
-- name VARCHAR(50)
-- ); 
-- CREATE TABLE dept(
-- id INT PRIMARY KEY,
-- name VARCHAR(50)
-- ); 

-- INSERT INTO dept(id,name)
-- VALUES
-- (101,'ENGLISH'),
-- (102,'COMPUTER'),
-- (103,'SCIENCE');
-- SELECT * FROM dept;
-- UPDATE dept
-- SET id=104
-- WHERE id=103;

-- CREATE TABLE teacher(
-- id INT PRIMARY KEY,
-- name VARCHAR(50),
-- dept_id INT NOT NULL,
-- FOREIGN KEY (dept_id) REFERENCES dept(id)
-- ON DELETE CASCADE
-- ON UPDATE CASCADE
-- );

-- INSERT INTO teacher(id,name,dept_id)
-- VALUES
-- (1,'ANIL',101),
-- (2,'AKASH',102),
-- (3,'DILIP',103),
-- (4,'DIPESH',103);
-- DROP TABLE teacher;
-- SELECT * FROM teacher;

-- INSERT INTO teacher(id,name,dept_id)
-- VALUES
-- (1,'ANIL',101),
-- (2,'AKASH',102),
-- (3,'DILIP',103),
-- (4,'DIPESH',103);
-- DROP TABLE teacher;
-- SELECT * FROM teacher;


-- -- TABLE RELATED QUIRES-----
-- SELECT * FROM student;

-- ALTER TABLE student
-- ADD COLUMN salary INT DEFAULT 25000;


-- ALTER TABLE student
-- DROP COLUMN salary;
-- git config --global user.name "user name"

-- git config --global user.name "user name"





CREATE DATABASE collage;
USE collage;



CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

INSERT INTO student VALUES(
101,"SHUBHAM YADAV",21
);

INSERT INTO student VALUES(
102,"kishan yadav",17
);

SELECT * FROM student;


CREATE DATABASE IF NOT EXISTS collage;
DROP DATABASE IF EXISTS COLLAGES;

SHOW DATABASES;
SHOW TABLES;

DROP TABLE student;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student(rollno,name)
VALUES
(101,'SHUBHAM YADAV'),
(102,'KISHAN YADAV');
INSERT INTO student VALUES (103,'RAM');

SELECT * FROM student;

CREATE DATABASE IF NOT EXISTS XYZ_Comapny;
USE XYZ_Comapny;
CREATE TABLE employee_info(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT NOT NULL
);

INSERT INTO employee_info(id , name , salary)
VALUES
(1,'ADAM',25000),
(2,'BOB',30000),
(3,'CASEY',40000);

SELECT * FROM employee_info;
SELECT name FROM employee_info;
SELECT salary, name FROM employee_info;


CREATE TABLE temp1(
id INT UNIQUE
);
INSERT INTO temp1 VALUES(101);
INSERT INTO temp1 VALUES(101);



CREATE DATABASE IF NOT EXISTS collage1;
USE collage1;
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO student (rollno, name, marks,grade,city)
VALUES
(101,'ANIL',78,'C','PUNE'),
(102,'BHUMIKA',93,'A','MUMBAI'),
(103,'CHETAN',85,'B','MUMBAI'),
(104,'DHRUV',96,'A','DELHI'),
(105,'EMANUEL',12,'F','DELHI'),
(106,'FARAH',82,'B','DELHI');

SELECT * FROM student;
SELECT city FROM STUDENT;
SELECT DISTINCT city FROM student;


-- WHERE CLAUSE------

SELECT * FROM student WHERE marks>80;
SELECT * FROM student WHERE city='MUMBAI';
SELECT* FROM student WHERE marks>80 AND city='MUMBAI';
SELECT* FROM student WHERE marks>80 OR city='MUMBAI';
SELECT * FROM student WHERE marks BETWEEN 80  and 90;
SELECT * FROM student WHERE city IN ("DELHI","MUMBAI",'GURGAON');
SELECT * FROM student WHERE city NOT IN ("DELHI","MUMBAI");
SELECT * FROM student WHERE marks>75 LIMIT 3;


-- ORDER BY CLAUSE-------- 

SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY city DESC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;


-- AGGREGATE FUNCTION-------

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(name) FROM student;
SELECT SUM(marks) FROM student;


-- GROUP BY CLAUSE-------


SELECT COUNT(name),city,name FROM student
GROUP BY city,name ;
SELECT AVG(marks),city FROM student
GROUP BY city ;
SELECT AVG(marks),city FROM student 
GROUP BY city ORDER BY city ASC;

SELECT COUNT(customer), mode FROM payment 
GROUP BY mode;

SELECT COUNT(name),grade FROM student
GROUP BY grade ORDER BY grade;

-- HAVING CLAUSE-------

SELECT COUNT(name),city
FROM student
GROUP BY city 
HAVING max(marks)>90;

SELECT city, count(marks)  FROM student
WHERE grade='A'
GROUP BY city
HAVING MAX(marks)>93
ORDER BY city ASC;

-- UPDATE ROWS AND DATA----

UPDATE student
SET grade='O'
WHERE grade='A';

UPDATE student
SET grade='B'
where marks BETWEEN 80 AND 90;

UPDATE student 
SET marks=marks+1;
SELECT * FROM student;


-- DELETE  ROWS AND DATA----
DELETE FROM student
WHERE marks<=15;

-- FOREIGN KEY-------

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
); 

INSERT INTO dept(id,name)
VALUES
(101,'ENGLISH'),
(102,'COMPUTER'),
(103,'SCIENCE');
SELECT * FROM dept;
UPDATE dept
SET id=104
WHERE id=103;


CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT NOT NULL,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

INSERT INTO teacher(id,name,dept_id)
VALUES
(1,'ANIL',101),
(2,'AKASH',102),
(3,'DILIP',103),
(4,'DIPESH',103);
DROP TABLE teacher;
SELECT * FROM teacher;



-- TABLE RELATED QUIRES-----
SELECT * FROM student;

ALTER TABLE student
ADD COLUMN salary INT DEFAULT 25000;

ALTER TABLE student
DROP COLUMN salary;

ALTER TABLE student01 
RENAME TO student;

ALTER TABLE student
CHANGE rollno id INT;

ALTER TABLE student
MODIFY marks VARCHAR(8);

TRUNCATE TABLE student ;


CREATE DATABASE Company_DB;
USE Company_DB;

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
salary INT ,
city VARCHAR(30),
joining_date DATE
);

ALTER TABLE employee
RENAME TO employees;

INSERT INTO employees(emp_id, name, age, department, salary, city, joining_date)
VALUES
(1, 'Amit', 25, 'IT', 50000, 'Mumbai', '2022-01-10'),
(2, 'Rahul', 30, 'HR', 40000, 'Delhi', '2021-03-15'),
(3, 'Sneha', 28, 'IT', 60000, 'Mumbai', '2020-07-20'),
(4, 'Neha', 32, 'Finance', 55000, 'Pune', '2019-11-25'),
(5, 'Karan', 27, 'IT', 45000, 'Delhi', '2022-06-05'),
(6, 'Priya', 29, 'HR', 48000, 'Mumbai', '2021-09-12'),
(7, 'Rohit', 35, 'Finance', 70000, 'Pune', '2018-04-18'),
(8, 'Anjali', 26, 'IT', 52000, 'Delhi', '2023-02-01');

SELECT * FROM employees;
SELECT name , salary FROM employees;
SELECT DISTINCT department FROM employees;
SELECT name FROM employees LIMIT 3;
SELECT DISTINCT city FROM employees;

SELECT name , salary FROM employees 
WHERE salary>50000;
SELECT name , age FROM employees 
WHERE age<30;
SELECT name , city FROM employees
WHERE city='Mumbai';
SELECT name , department FROM employees
WHERE department='IT';
SELECT name , salary FROM employees
WHERE salary = 45000;

SELECT name , department , salary FROM employees
WHERE department='IT' AND salary>50000;
SELECT name , department FROM employees
WHERE department='HR' OR department='Finance';
SELECT name , city , age FROM employees 
WHERE city='Mumbai' AND age>28;
SELECT name , city FROM employees 
WHERE city = 'Delhi' OR city ='Pune';
SELECT name , department , salary FROM employees 
WHERE department='IT' AND salary<55000;

SELECT * FROM employees 
WHERE department IN ('IT','HR');
SELECT * FROM employees 
WHERE city IN ('Mumbai','delhi');
SELECT * FROM employees
WHERE department NOT IN ('Finance');
SELECT * FROM employees
WHERE salary in (40000,50000,60000);
SELECT * FROM employees
WHERE city NOT IN ('Pune');

SELECT name , salary FROM employees 
WHERE salary BETWEEN 40000 AND 60000;
SELECT name ,age FROM employees 
WHERE age BETWEEN 25 AND 30;
SELECT name , joining_date FROM employees 
WHERE joining_date BETWEEN '2021-01-01' AND '2022-12-31';
SELECT name , salary FROM employees 
WHERE salary NOT BETWEEN 45000 AND 55000;
SELECT name , age FROM employees 
WHERE age BETWEEN 28 AND 35;

SELECT name FROM employees 
WHERE name LIKE 'A%';
SELECT name FROM employees 
WHERE name LIKE '%a';
SELECT name FROM employees 
WHERE name LIKE '%h%';
SELECT city FROM employees 
WHERE city LIKE 'M%';
SELECT department FROM employees 
WHERE department LIKE '%i%';

SELECT salary FROM employees 
ORDER BY salary ASC;
SELECT salary FROM employees 
ORDER BY salary DESC;
SELECT age FROM employees 
ORDER BY age DESC;
SELECT name FROM employees 
ORDER BY name ASC;
SELECT department , salary FROM employees 
ORDER BY department ASC;

SELECT SUM(salary) FROM employees ;
SELECT AVG(salary) FROM employees ;
SELECT MAX(salary) FROM employees ;
SELECT MIN(salary) FROM employees ;
SELECT COUNT(name) FROM employees ;

SELECT AVG(salary),department FROM employees 
GROUP BY department;
SELECT COUNT(city) , city FROM employees 
GROUP BY city;
SELECT MAX(salary), department FROM employees 
GROUP BY department;
SELECT SUM(salary), city FROM employees 
GROUP BY city;
SELECT MIN(salary), city FROM employees 
GROUP BY city;

SELECT AVG(salary),department FROM employees 
GROUP BY department HAVING AVG(salary)>50000;
SELECT COUNT(city),city FROM employees 
GROUP BY city HAVING COUNT(city)>2;
SELECT MAX(salary), department FROM employees 
GROUP BY department HAVING max(salary)>60000;
SELECT SUM(salary), city FROM employees 
GROUP BY city HAVING SUM(salary)>100000;
SELECT AVG(salary), department FROM employees 
GROUP BY department HAVING AVG(salary)<55000;


UPDATE employees
SET salary=55000
WHERE emp_id=1; 
UPDATE employees 
SET salary=salary+5000
WHERE department='HR';
UPDATE employees 
SET city='Virar'
WHERE city='Mumbai';
UPDATE employees
SET age=age+1;
UPDATE employees
SET salary=60000
WHERE department='IT';
UPDATE employees 
SET name ='Rohit'
WHERE name = 'ROHIT YADAV';

DELETE FROM employees 
WHERE salary<45000;
DELETE FROM employees 
WHERE department='HR';
DELETE FROM employees
WHERE age>32;
DELETE FROM employees 
WHERE city='Delhi';
DELETE FROM employees
WHERE emp_id=8;

ALTER TABLE employees
ADD COLUMN email VARCHAR(50) DEFAULT 'xyz@gmail.com';
ALTER TABLE employees 
MODIFY salary VARCHAR(10); 
ALTER TABLE employees 
DROP COLUMN email;
ALTER TABLE employees
RENAME TO employee;
TRUNCATE TABLE employee;

CREATE DATABASE company_join_db;
USE company_join_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT
);
INSERT INTO students VALUES
(1, 'Amit', 101),
(2, 'Rahul', 102),
(3, 'Sneha', 101),
(4, 'Neha', 103),
(5, 'Karan', 105);  -- no matching course

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);
INSERT INTO courses VALUES
(101, 'BCA'),
(102, 'BBA'),
(103, 'BTech'),
(104, 'MBA');

SELECT * FROM students;
SELECT * FROM courses;

SELECT s.name , c.course_name
FROM students as s
INNER JOIN courses as c
ON s.course_id=c.course_id;

SELECT s.name,c.course_name
FROM students as s
INNER JOIN courses as c
ON s.course_id=c.course_id
where s.course_id=101;

SELECT s.name,c.course_name
FROM students as s
INNER JOIN courses as c
ON s.course_id=c.course_id
WHERE c.course_name='BTECH';

SELECT s.name,c.course_name
FROM students as s
INNER JOIN courses as c
ON s.course_id=c.course_id;

SELECT s.name,c.course_name
FROM students as s
INNER JOIN courses as c
ON s.course_id=c.course_id
ORDER BY c.course_name ASC;

SELECT COUNT(s.name),c.course_name
FROM students as s
INNER JOIN courses as c
ON s.course_id=c.course_id
GROUP BY c.course_name;

SELECT s.name , c.course_name
FROM students as s
INNER JOIN courses as c
ON s.course_id=c.course_id
WHERE c.course_name='BBA';

SELECT c.course_name , COUNT(s.name)
FROM students as s
INNER JOIN courses as c
ON s.course_id=c.course_id
GROUP BY c.course_name;

SELECT s.name, c.course_name
FROM students as s
LEFT JOIN courses as c
ON s.course_id=c.course_id;

SELECT s.name , c.course_name
FROM students as s
LEFT JOIN courses as c
ON s.course_id=c.course_id
WHERE c.course_name is NULL;

SELECT COUNT(s.name),c.course_name
FROM courses as c
LEFT JOIN students as s
ON s.course_id=c.course_id
GROUP BY c.course_name;

SELECT s.name , c.course_name 
FROM students as s
RIGHT JOIN  courses as c
ON s.course_id=c.course_id;

SELECT c.course_name, s.name
FROM students s
RIGHT JOIN courses c
ON s.course_id = c.course_id;

SELECT s.name , c.course_name 
FROM students as s
RIGHT JOIN courses as c
ON s.course_id=c.course_id
WHERE s.course_id IS NULL;

SELECT COUNT(s.name),c.course_name
FROM students as s
RIGHT JOIN courses as c
ON s.course_id=c.course_id
GROUP BY c.course_name;

SELECT s.name , c.course_name 
FROM students as s
RIGHT JOIN courses as c
ON s.course_id=c.course_id
WHERE s.course_id IS not NULL;

SELECT s.name , c.course_name as total_student
FROM students as s
RIGHT JOIN courses as c
ON s.course_id=c.course_id
ORDER BY c.course_name;

SELECT s.name , c.course_name as all_data
FROM students as s
LEFT JOIN courses as c
ON s.course_id = c.course_id
UNION
SELECT s.name , c.course_name as all_data
FROM students as s
RIGHT JOIN courses as c
ON s.course_id=c.course_id;

SELECT s.name , c.course_name
FROM students as s
LEFT JOIN courses as c
ON s.course_id=c.course_id
UNION
SELECT s.name, c.course_name
FROM students as s
RIGHT JOIN courses as c
ON s.course_id=c.course_id
WHERE s.course_id IS NULL; 

SELECT count(s.name) , c.course_name 
FROM students as s
LEFT JOIN courses as c
ON s.course_id = c.course_id
UNION
SELECT count(s.name) , c.course_name 
FROM students as s
RIGHT JOIN courses as c
ON s.course_id=c.course_id
GROUP BY c.course_name;


CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee VALUES
(1, 'Amit', NULL),   -- boss
(2, 'Rahul', 1),
(3, 'Sneha', 1),
(4, 'Neha', 2),
(5, 'Karan', 2);

SELECT e.name as employee_name , m.name as manager_name 
FROM employee as e
LEFT JOIN employee as m
ON e.manager_id=m.emp_id;

SELECT e.name as employee_name , m.name as manager_name 
FROM employee as e
LEFT JOIN employee as m
ON e.manager_id=m.emp_id
WHERE e.manager_id IS  NULL;

SELECT COUNT(e.name) as employee_name , m.name as manager_name 
FROM employee as e
LEFT JOIN employee as m
ON e.manager_id=m.emp_id
GROUP BY m.name;

SELECT m.name AS manager_name, COUNT(e.emp_id) AS total_employees
FROM employee e
JOIN employee m
ON e.manager_id = m.emp_id
GROUP BY m.name
HAVING COUNT(e.emp_id)>=2;


CREATE DATABASE Company_System;
USE Company_System;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    manager_id INT
);
INSERT INTO employees VALUES
(1, 'Amit', 101, NULL),
(2, 'Rahul', 102, 1),
(3, 'Sneha', 101, 1),
(4, 'Neha', 103, 2),
(5, 'Karan', 102, 2),
(6, 'Anjali', 104, NULL);


CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Sales'); -- no employee



CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    emp_id INT
);
INSERT INTO projects VALUES
(1, 'Website', 1),
(2, 'App', 2),
(3, 'API', 3),
(4, 'AI', 4),
(5, 'ML', NULL); -- no employee


CREATE TABLE salaries (
    emp_id INT,
    salary INT
);
INSERT INTO salaries VALUES
(1, 70000),
(2, 50000),
(3, 60000),
(4, 55000),
(5, 45000);


SELECT e.name as emp_name , d.dept_name , p.project_name , s.salary , m.name as manager_name
FROM employees as e
LEFT JOIN departments as d
ON e.dept_id=d.dept_id
LEFT JOIN projects as p
ON e.emp_id=p.emp_id
LEFT JOIN salaries as s
ON e.emp_id=s.emp_id
LEFT JOIN employees as m
ON e.manager_id=m.emp_id;


SELECT 
    e.name AS emp_name,
    d.dept_name,
    p.project_name,
    s.salary,
    m.name AS manager_name
FROM employees e
LEFT JOIN departments d
    ON e.dept_id = d.dept_id
LEFT JOIN projects p
    ON e.emp_id = p.emp_id
LEFT JOIN salaries s
    ON e.emp_id = s.emp_id
LEFT JOIN employees m
    ON e.manager_id = m.emp_id;

SELECT e.name , d.dept_name
FROM employees as e
INNER JOIN departments as d
ON e.dept_id=d.dept_id;

SELECT e.name , d.dept_name
FROM employees as e
LEFT JOIN departments as d
ON e.dept_id=d.dept_id;



CREATE DATABASE Subquery_Practice;
USE Subquery_Practice;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary INT,
    age INT,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Amit', 101, 70000, 30, 'Mumbai'),
(2, 'Rahul', 102, 50000, 28, 'Delhi'),
(3, 'Sneha', 101, 60000, 26, 'Mumbai'),
(4, 'Neha', 103, 55000, 32, 'Pune'),
(5, 'Karan', 102, 45000, 27, 'Delhi'),
(6, 'Anjali', 104, 48000, 29, 'Mumbai'),
(7, 'Rohit', 103, 72000, 35, 'Pune'),
(8, 'Pooja', 104, 52000, 31, 'Delhi');

SELECT * FROM employees;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');

SELECT name FROM employees 
WHERE salary =(SELECT MAX(salary) FROM employees);

SELECT name FROM employees 
WHERE salary =(SELECT MIN(salary) FROM employees);

SELECT name FROM employees 
WHERE salary>(SELECT AVG(salary) FROM employees);

SELECT name FROM employees
WHERE dept_id=(SELECT dept_id FROM departments WHERE dept_name = 'IT');


SELECT name FROM employees 
WHERE city='Mumbai' AND 
dept_id IN (SELECT dept_id from DEPARTMENTs WHERE dept_name in ('IT' , 'HR'));

SELECT name FROM employees 
WHERE dept_id=(SELECT dept_id FROM departments WHERE dept_name='IT');

SELECT name FROM employees 
WHERE city = ('Mumbai') AND
dept_id IN (SELECT dept_id FROM departments WHERE dept_name IN ('IT','HR'));

SELECT name FROM employees 
WHERE dept_id IN (SELECT dept_id FROM departments WHERE dept_name IN ('Finance','Marketing')); 

SELECT name FROM employees 
WHERE salary>(SELECT AVG(salary), name FROM employees GROUP BY name);


CREATE VIEW emp_dept_name AS
SELECT name , dept_name FROM employees;

CREATE VIEW it_dept AS 
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';


CREATE VIEW view3 AS 
SELECT name , salary , dept_name 
FROM employees AS e
JOIN departments AS d
ON e.dept_id=d.dept_id;


-- CASE , IF , ELSE , WHEN-----

CREATE DATABASE companies_db;
USE companies_db;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    salary INT,
    dept VARCHAR(20)
);

INSERT INTO employees (name, salary, dept) VALUES
('Amit', 25000, 'HR'),
('Rahul', 50000, 'IT'),
('Sneha', 75000, 'IT'),
('Priya', 30000, 'HR'),
('Vikas', 90000, 'IT'),
('Neha', 45000, 'Sales');

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    marks INT,
    age INT
);

INSERT INTO students (name, marks, age) VALUES
('Rohan', 35, 17),
('Simran', 82, 20),
('Aman', 67, 22),
('Pooja', 91, 19),
('Karan', 48, 16),
('Anjali', 76, 60);

SELECT name , salary ,
IF (salary>5000 , 'High','Low') AS salary_status 
FROM employees;

SELECT name , salary,
CASE 
    WHEN salary>70000 THEN 'Primium'
    WHEN salary BETWEEN 40000 AND 70000 THEN 'standard'
    WHEN salary<40000 THEN ' Basic'
    ELSE 'incorrect data'
    END as s_category
FROM employees;

SELECT name , salary,
IF (salary>70000, 'Premium', IF (salary BETWEEN 40000 AND 70000 , 'Standard','Basic'))
as s_category
FROM employees;

SELECT 
    name,
    marks,
     IF(marks >= 40, 'Pass', 'Fail') AS result,
   IF(marks >= 40, marks + 5, marks) AS bonus_marks
FROM students;


SELECT name , age,
IF (age<18,'Minor',IF(age BETWEEN 18 AND 60,'Adult','Senior')) as age_category
FROM students;

SELECT name , salary ,
IF (salary>60000,'Rich','Middle Class') as pertionality
FROM employees;

SELECT name , marks
, IF (marks%2=0,'EVEN','ODD') as even_odd
FROM students;

SELECT name , salary, dept,
IF(salary>50000,'High','Low') as data1,
IF(dept='IT','Tech','Non-Tech') as data2
FROM employees;


SELECT name , marks, age ,
IF(marks>=40,'PASS','Fail') as result,
IF(age<18,'Minor','Adult')as age_group,
IF(result='Pass' AND age_group='Adult','Eligible', IF(result='Pass' AND age_group='Minor','Wait','Not Eligible') )as final_status

FROM employees;


SELECT name , salary ,
CASE 
   WHEN salary>60000 THEN 'High'
   WHEN salary<30000 THEN 'Low'
   ELSE 'Medium' 
   END as s_category
   FROM employees;
   
SELECT name , marks,
CASE
    WHEN marks>=90 THEN 'A'
    WHEN marks BETWEEN 75 AND 89 THEN 'B'
    WHEN marks BETWEEN 50 AND 74 THEN 'C'
    ELSE 'F'
END AS grade
    FROM students;
    
SELECT name , dept ,
CASE 
   WHEN dept='IT' THEN 'Tech Team'
   WHEN dept='HR' THEN 'Human Resource'
   ELSE 'Other'
END as dept_type
FROM employees;   


SELECT name , salary, 
CASE 
     WHEN salary>70000 AND dept='IT' THEN 'Top Performer'
     WHEN salary>50000 THEN 'Good'
     ELSE 'Average'
END as performance
FROM employees;
-- ---------------------------------------------------------------------- 

CREATE DATABASE companyDB;
USE companyDB;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    salary INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees (name, salary, dept_name) VALUES
('Shubh', 40000, 'IT'),
('Rahul', 55000, 'HR'),
('Amit', 30000, 'IT'),
('Neha', 70000, 'Finance'),
('Priya', 45000, 'HR');

SELECT * FROM employees;

DELIMITER $$
CREATE PROCEDURE emp_data()
BEGIN
   SELECT * FROM employees;
END $$
DELIMITER ;

CALL emp_data();

DELIMITER $$
CREATE PROCEDURE only_emp_name()
BEGIN
     SELECT name FROM employees;
END $$
DELIMITER ;

CALL only_emp_name();

DELIMITER $$
CREATE PROCEDURE getEmpById(IN emp_id INT )
BEGIN
   SELECT * FROM employees 
   WHERE id=emp_id;

END $$
DELIMITER ;

CALL getEmpById(3);


DELIMITER $$ 
CREATE PROCEDURE highSalary(IN emp_sal INT )
BEGIN
     SELECT name , salary FROM employees
     WHERE salary>emp_sal;
END $$
DELIMITER ;

CALL highSalary(40000);

DELIMITER $$
CREATE PROCEDURE totalemp(OUT total INT(50) )
BEGIN
      SELECT COUNT(*) INTO total FROM employees ;
END $$
DELIMITER ;
CALL totalemp(@t);
SELECT @t;

DELIMITER $$
CREATE PROCEDURE totalEmp(OUT total INT)
BEGIN
     SELECT MAX(salary) DELIMITER $$
CREATE PROCEDURE totalEmp(OUT total INT)
BEGIN
     SELECT MAX(salary)  FROM employees;
END $$

DELIMITER $$
CREATE TRIGGER before_insert_emp
BEFORE INSERT
ON employees
FOR EACH ROW
BEGIN
   SET NEW.salary=New.salary+1;
END $$

DELIMITER ;

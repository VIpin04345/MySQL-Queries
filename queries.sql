-- database is a collection of data in a format that can be accessed easily is called database
-- a software application used to manage the data base is called data base management system 
-- sql is stands for strctured quary langage 
-- it is uused to intract with relational databases.
-- it is used to perform some operation
-- CRUD
-- CREATE
-- READ
-- UPDATE
-- DELETE

CREATE DATABASE temp1;
CREATE DATABASE temp2;
CREATE DATABASE collage;
DROP DATABASE temp1;
DROP DATABASE temp2;
DROP DATABASE collage;



CREATE DATABASE IF NOT EXISTS college;
DROP DATABASE IF EXISTS college;
SHOW DATABASES;



CREATE DATABASE college;
USE college;

-- Creating our first table.

CREATE TABLE college(
id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(40),
age INT NOT NULL,
roll INT UNIQUE
);

INSERT INTO college VALUES(1, 'Shbham', 'Mumbai', 21, 101);
SELECT * FROM college;

INSERT INTO college(id, name, city, age, roll)
VALUES
(2, 'Kishan', 'Bokaro', 18, 102),
(3, 'Sonam', 'Ranchi', 26, 103),
(4, 'Raj', 'Dhanbad', 28, 104),
(5, 'Rahul', 'Duumka', 27, 105);

SELECT * FROM college;
SELECT id, name FROM college;
SELECT city, age, roll FROM college;
SELECT city FROM college;


-- Practice Quuestion

CREATE DATABASE IF NOT EXISTS abc;
CREATE TABLE emp(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT
);
INSERT INTO emp(id, name, salary)
VALUES
(1, 'adam', 25000),
(2, 'bob', 30000),
(3, 'casey', 40000);

SELECT * FROM emp;
SELECT name FROM emp;
SELECT salary FROM emp;



CREATE DATABASE IF NOT EXISTS collage;
USE collage;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student(id, name, marks, grade, city)
VALUES
(1, 'Anil', 78, 'C', 'Pune'),
(2, 'Bhumika', 93, 'A', 'Mumbai'),
(3, 'Chetan', 85, 'B', 'Mumbai'),
(4, 'Dhruv', 96, 'A', 'Delhi'),
(5, 'Emanuel', 12, 'E', 'Delhi'),
(6, 'Farah', 82, 'B', 'Delhi');

SELECT * FROM student;
SELECT city FROM student;
SELECT DISTINCT city FROM student;
SELECT DISTINCT grade FROM student;

-- WHERE CLAUSE--------------

SELECT * FROM student WHERE marks>80;
SELECT * FROM student WHERE city='Mumbai';
SELECT * FROM student WHERE marks>=80 AND city='Mumbai';

SELECT * FROM student WHERE marks+10>100;
SELECT * FROM student WHERE marks=93;

SELECT * FROM student WHERE marks>90 AND city='Mumbai';
SELECT * FROM student WHERE marks>90 OR city='Mumbai';
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ('Delhi','Mumbai','Gurgaon');
SELECT * FROM student WHERE marks IN (93,96,12);
SELECT * FROM student WHERE city NOT IN ('Delhi','Mumbai','Gurgaon');
SELECT * FROM student WHERE marks NOT IN (93,96,12);
SELECT * FROM student LIMIT 3;
SELECT * FROM student WHERE marks>75 LIMIT 3;

-- ORDER BY CLAUSE---------------

SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY marks DESC;
SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY city DESC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;


-- AGGREGATE FUNCTIONS------------

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT COUNT(name) FROM student;

-- GROUP BY CLAUSE----------------

SELECT city FROM student GROUP BY city;
SELECT city , COUNT(id) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY city DESC;
SELECT grade, COUNT(id) FROM student GROUP BY grade;

-- HAVING CLAUSE--------------

SELECT city, COUNT(id) FROM student GROUP BY city HAVING MAX(marks)>90;

-- GENERAL ORDER OF WRITING A QUERY-------

-- SELECT column name
-- FROM table_name
-- WHERE condition
-- GROUP BY column name
-- HAVING condition
-- ORDER BY column name asc dsc



SELECT city, COUNT(id)
FROM student
WHERE grade='A'
GROUP BY city
HAVING MAX(marks)>=90
ORDER BY city DESC;


-- TABLE RELATED QUERIES----------

UPDATE student
SET grade='O'
WHERE grade='A';

UPDATE student
SET grade='G'
WHERE grade='B';

UPDATE student
SET grade='A'
WHERE grade='C';

UPDATE student
SET grade='P'
WHERE grade='E';

UPDATE student
SET marks=80
WHERE marks=12;

UPDATE student
SET marks=marks+1
WHERE marks;

UPDATE student
SET marks=marks-1
WHERE marks;

UPDATE student
SET marks=12
WHERE marks=82;

DELETE FROM student
WHERE marks<=15;

SELECT * FROM student;


CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO dept(id, name)
VALUES
(101, 'Science'),
(102, 'English'),
(103, 'Hindi');

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT NOT NULL,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

INSERT INTO teacher(id, name, dept_id)
VALUES
(101, 'Adam', 101),
(102, 'Bob', 103),
(103, 'Casey', 102),
(104, 'Donald', 102);

DELETE FROM dept
WHERE id=103;

UPDATE dept
SET id=110
WHERE id=102;

SELECT * FROM dept;
SELECT * FROM teacher;


-- TABLE RELATED QUERIES IN SCHEMA {ALTER}

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 20;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE stu
RENAME TO student;

ALTER TABLE student
CHANGE COLUMN age stu_age INT;


-- TRUNCATE TABLE  student;


SELECT * FROM student;



ALTER TABLE student
CHANGE COLUMN name full_name VARCHAR(50);

DELETE FROM student
WHERE marks<80;

ALTER TABLE student
DROP COLUMN grade;


-- -- JOINS IN SQL---------------


CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(20)
);
INSERT INTO students(student_id, name)
VALUES
(101, 'Adam'),
(102,'Bob'),
(103,'Casey');

CREATE TABLE course(
course_id INT PRIMARY KEY,
course_name VARCHAR(20)
);
INSERT INTO course(course_id, course_name)
VALUES
(102, 'English'),
(105,'Math'),
(103,'Science'),
(107, 'Computer_science');

SELECT * FROM students;
SELECT * FROM course;

-- -- INNER JOINS----------

SELECT * 
FROM students
INNER JOIN course
ON students.student_id=course.course_id;

SELECT * 
FROM students as s
INNER JOIN course as c
ON s.student_id=c.course_id;

-- -- LEFT JOINS-----------

SELECT *
FROM students as a
LEFT JOIN course as b
ON a.student_id=b.course_id;

-- -- RIGHT JOINS------------

SELECT *
FROM students as s
RIGHT JOIN course as c
ON s.student_id=c.course_id;

-- -- FULL OUTER JOINS----------

SELECT *
FROM students as a
LEFT JOIN course as b
ON a.student_id=b.course_id
UNION
SELECT *
FROM students as s
RIGHT JOIN course as c
ON s.student_id=c.course_id;

-- -- LEFT EXCLUUSIVE JOINS-------

SELECT *
FROM students as a
LEFT JOIN course as b
ON a.student_id=b.course_id
WHERE b.course_id IS NULL;

-- -- RIGHT EXCLUSIVE JOINS---------

SELECT *
FROM students as s
RIGHT JOIN course as c
ON s.student_id=c.course_id
WHERE s.student_id IS NULL;

-- -- FULL EXCLUSIVE JOINS----------


SELECT *
FROM students as a
LEFT JOIN course as b
ON a.student_id=b.course_id
WHERE b.course_id IS NULL
UNION
SELECT *
FROM students as s
RIGHT JOIN course as c
ON s.student_id=c.course_id
WHERE s.student_id IS NULL;


-- -- SELF JOINS-----------


CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(20),
manager_id INT
);
INSERT INTO employee(id, name,manager_id)
VALUES
(101, 'Adam',103),
(102,'Bob',104),
(103,'Casey',NULL),
(104, 'Donald', 103);

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id=b.manager_id;

SELECT a.name as manager_name ,b.name
FROM employee as a
JOIN employee as b
ON a.id=b.manager_id;

-- -- UNION-------------
SELECT * FROM employee
UNION
SELECT * FROM employee;

SELECT * FROM employee
UNION ALL 
SELECT * FROM employee;

-- -- SUBQUERIES------------------
-- -- MARKS IS GRATER THAN AVRAGE MARKS------------

CREATE TABLE studentss(
id INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO studentss(id, name, marks, grade, city)
VALUES
(101, 'Anil', 78, 'C', 'Pune'),
(102, 'Bhumika',93, 'A', 'Mumbai'),
(103, 'Chetan', 85, 'B', 'Mumbai'),
(104, 'Dhruv', 96, 'A', 'Delhi'),
(105, 'Emanuel', 92, 'A', 'Delhi'),
(106, 'Farah', 82, 'B', 'Delhi');

SELECT * FROM studentss;


SELECT AVG(marks)
FROM studentss;

SELECT name FROM studentss
WHERE marks>87.6667;

SELECT name, marks
FROM studentss
WHERE marks>(SELECT AVG(marks) FROM studentss);

SELECT id 
FROM studentss
WHERE id % 2 = 0;

SELECT name , marks, id
FROM studentss
WHERE id in(SELECT id FROM studentss WHERE id % 2 = 0);

SELECT MAX(marks)
FROM (SELECT * FROM studentss WHERE city='Delhi') as temp;

SELECT (SELECT MAX(marks) FROM studentss), name
FROM studentss;

-- -- VIEWS--------------------
-- -- IT IS A VIRTUAL TABLE  IT IS A TEMPRORY TABLE 

CREATE VIEW view1 AS
SELECT id,name,marks
FROM studentss;

SELECT * FROM view1 
WHERE marks>90;

DROP VIEW view1;

-- -- STORED PROCEDURE----------

DROP PROCEDURE IF EXISTS p_name

CREATE TABLE employees(
id INT PRIMARY KEY,
f_name VARCHAR(20),
l_name VARCHAR(20),
desig VARCHAR(30),
dept VARCHAR(30),
salary INT NOT NULL
);
INSERT INTO employees(id, f_name, l_name, desig, dept, salary)
VALUES
(101, 'Raju', 'Rastogi', 'Manager', 'Loan', 37000),
(102, 'Sham', 'Mohan', 'Cashier', 'Cash', 32000),
(103, 'Baburao', 'Apte', 'Associate', 'Loan', 25000),
(104, 'Alex', 'Watt', 'Associate', 'Deposit', 35000),
(105, 'Leena', 'Jhonson' , 'Lead', 'Cash', 25000),
(106, 'Alex', 'Watt', 'Probation', 'Loan', 40000),
(107, 'Rick', 'Watt', 'Manager', 'Account', 45000),
(108, 'John', 'Paul', 'Manager', 'IT', 75000),
(109, 'Paul', 'Philip', 'Accountant', 'Account', 45000);

SELECT * FROM employees;

DELIMITER $$
CREATE PROCEDURE emp_info()
BEGIN
    SELECT * FROM employees;
END $$
DELIMITER ;

CALL collage.emp_info();
DROP PROCEDURE emp;

-- -- DYNAMIC PROCEDURE TAKING INPUT---------
DELIMITER $$
CREATE PROCEDURE emp_name(IN p_name VARCHAR(20))
BEGIN
     SELECT id FROM employees
     where f_name=p_name;
END $$
DELIMITER ;

CALL collage.emp_name('Sham');

DELIMITER $$
CREATE PROCEDURE get_sum_by_dept(IN p_dept VARCHAR(50), OUT p_sum DECIMAL (10,2))
BEGIN
    SELECT SUM(salary) INTO p_sum FROM employees
    WHERE dept=p_dept  ;
END $$
DELIMITER ;
DROP PROCEDURE get_sum_by_dept;

-- -- TRIGGERS----------------------
INSERT INTO employees VALUES (110, 'Shiva', 'Deshai', 'Manager', 'Loan', -37000),
DELIMITER $$
CREATE TRIGGER before_insert
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
     IF NEW.salary<0 THEN
     SET NEW.salary=0;
     END IF;
END $$
DELIMITER ;

SELECT * FROM employees;
-- -- CONDITIONAL STATEMENTS-------------

CREATE TABLE studant(
id INT PRIMARY KEY,
name VARCHAR(50),
percentage DECIMAL(10,2)
);
INSERT INTO studant(id, name, percentage)
VALUES
(1, 'Ram', 57),
(2, 'Salman', 28),
(3, 'Meera', 81),
(4, 'Sarita', 45);

-- INSERT INTO studant VALUES(5,'Juhi',47),(6,'Anil',74),(7,'John',64);
-- SELECT * FROM studant;

-- SELECT * ,
-- IF (percentage>=33,'Pass','Fail') as result
-- FROM studant;

-- SELECT id, name,
-- IF (percentage>=33,'Pass','Fail') as result
-- FROM studant;

-- SELECT * ,
-- CASE
--     WHEN percentage>=80 AND percentage <=100 THEN 'Merit'
--     WHEN percentage>=60 AND percentage <80 THEN '1st Devision'
--     WHEN percentage>=45 AND percentage <60 THEN '2nd Devision'
--     WHEN percentage>=33 AND percentage <=45 THEN '3rd Devision'
--     WHEN percentage<33 THEN 'Fail'
-- 	ELSE 'Not Correct %'
-- END as grade
-- FROM studant


-- CREATE TABLE employees (
--     emp_id INT PRIMARY KEY,
--     name VARCHAR(50),
--     department VARCHAR(30),
--     salary INT,
--     city VARCHAR(30)
-- );
-- INSERT INTO employees VALUES
-- (1, 'Amit', 'IT', 60000, 'Delhi'),
-- (2, 'Ravi', 'HR', 45000, 'Mumbai'),
-- (3, 'Sneha', 'IT', 70000, 'Pune'),
-- (4, 'Neha', 'Finance', 50000, 'Delhi'),
-- (5, 'Arjun', 'HR', 30000, 'Pune'),
-- (6, 'Pooja', 'IT', 80000, 'Mumbai'),
-- (7, 'Karan', 'Finance', 55000, 'Delhi'),
-- (8, 'Anjali', 'IT', 40000, 'Pune');
-- SELECT * FROM employees;
-- SELECT name, salary FROM employees;
-- SELECT * FROM employees
-- WHERE salary > 50000;
-- SELECT * FROM employees
-- WHERE department = 'IT';
-- SELECT DISTINCT department FROM employees;
-- SELECT * FROM employees
-- ORDER BY salary DESC;
-- SELECT * FROM employees
-- ORDER BY salary DESC
-- LIMIT 3;
-- SELECT COUNT(*) FROM employees;
-- SELECT department, COUNT(*) 
-- FROM employees
-- GROUP BY department;
-- SELECT department, COUNT(*)
-- FROM employees
-- WHERE salary > 50000
-- GROUP BY department;
-- SELECT AVG(salary) FROM employees;
-- SELECT MAX(salary) FROM employees;
-- SELECT MIN(salary) FROM employees;
-- SELECT MAX(salary)
-- FROM employees
-- WHERE salary < (SELECT MAX(salary) FROM employees);
-- SELECT city, COUNT(*)
-- FROM employees
-- GROUP BY city;
-- SELECT * FROM employees
-- WHERE name LIKE 'A%';
-- SELECT * FROM employees
-- WHERE salary BETWEEN 40000 AND 60000;
-- SELECT * FROM employees
-- WHERE city IN ('Pune', 'Delhi');
-- UPDATE employees
-- SET salary = 35000
-- WHERE emp_id = 5;
-- DELETE FROM employees
-- WHERE emp_id = 8;





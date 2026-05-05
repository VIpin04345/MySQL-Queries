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

SELECT * FROM student WHERE marks>80;
SELECT * FROM student WHERE city='MUMBAI';


SELECT* FROM student WHERE marks>80 AND city='MUMBAI';
SELECT* FROM student WHERE marks>80 OR city='MUMBAI';

SELECT * FROM student WHERE marks BETWEEN 80  and 90;
SELECT * FROM student WHERE city IN ("DELHI","MUMBAI",'GURGAON');


SELECT * FROM student WHERE city NOT IN ("DELHI","MUMBAI");
SELECT * FROM student WHERE marks>75 LIMIT 3;

SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY city DESC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(name) FROM student;
SELECT SUM(marks) FROM student;


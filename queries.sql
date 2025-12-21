
create database collage;
-if exist    -- if not exist-- 
use collage;
create table student(
id int primary key,
name varchar(40),
age int not null
);
insert into student value(1,'shubham',20);
insert into student value(2,'shubh',24);
drop table student;
select * from student;
show databases;
show tables;
drop table student;

create table student(
id int primary key,
name varchar(50)
);
insert into student
(id,name)
value
(1,'shubham'),
(2,'kishan');
select * from student;
insert into student value(3,'dinesh');


create database if not exists xyz_company;
use xyz_company;
create table employee(
id int primary key,
name varchar(50),
salary int not null
);
insert into employee
(id,name,salary)
value
(1,'adam',23000),
(2,'bob',25000),
(3,'casey',40000);

select * from employee;
create table student(
id int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student
(id,name,marks,grade,city)
values
(101,'anil',78,'c','pune'),
(102,'bhumika',93,'a','mumbai'),
(103,'chetan',85,'b','mumbai'),
(104,'dhruv',96,'a','delhi'),
(105,'emanuel',12,'f','delhi'),
(106,'farah',82,'b','delhi');

select * from student;
select city from student;
select distinct city from student;
-- -- clauses................--

select *from student where marks>=80;
select * from student where city='mumbai'; 
select * from student where marks>80 and city='mumbai';
select * from student where marks+10>100;
select * from student where marks=93;
select * from student where marks>90;

select * from student where marks>90 and city='mumbai';
select * from student where marks>90 or city='mumbai';

select * from student where marks between 80 and 90;
select* from student where city in('delhi','mumbai','asar');



select * from student where city not in ('delhi','mumbai');

select * from student where marks>75 limit 3;

select * from student order by name asc;
select * from student order by marks asc;

select * from student order by marks desc limit 3;

select marks from student;
drop database collage;

create database collage;
use collage;
create table student(
id int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student
(id,name,marks,grade,city)
values
(101,'anil',78,'c','pune'),
(102,'bhumika',93,'a','mumbai'),
(103,'chetan',85,'b','mumbai'),
(104,'dhruv',96,'a','delhi'),
(105,'emanuel',12,'f','delhi'),
(106,'farah',82,'b','delhi');
insert into student value(107,'dinesh',92,'a','noida');
select * from student;
select id from student;
select name from student;
select marks from student;
select grade from student;
select city from student;


select distinct marks from student;
select distinct grade from student;
select distinct city from student;

-- -- where clauses-- 

select * from student where marks>80;
select * from student where city='mumbai';
select * from student where marks>80 and city ='mumbai';
select * from student where marks+10 >100;


select * from student where marks >80 or city = 'delhi';
select * from student where city='delhi' and grade='b';
select * from student where marks between 70 and 90;
select * from student where city in('delhi','noida');
select * from student where city not in ('delhi','noida');

-- -- limit


select * from student limit 3;
select * from student where marks>70 limit 3;

select * from student order by marks asc;
select * from student order by name desc;
select * from student order by name asc limit 4;


-- -- aggrigate function

select sum(marks) from student;
select max(marks) from student;
select max(grade) from student;
select min(city) from student;
select count(name) from student;
select avg(marks) from student;

-- -- group by clause --

select city , count(id)
from student
group by city  ;

select grade, count(id)
from student
group by grade;

select city, avg(marks)
from student
group by city;

select city,avg(marks)
from student
group by city
order by avg(marks) desc;


-- -- having clause--

  select city, count(id)
  from student
  group by city
  having max(marks)>90;
  
  -- general order--
  
select column(s)
  from table_name
  where condition
  group by column(s)
  having condition
  order by coloumn(s) asc , desc 

 

select city
from student
where grade='a'
group by city
having max(marks)>=93
order by city desc;


-- -- table related queies--
-- -- update-- 

update student
set grade='o'
where grade='a';

update student
set name='shubham'
where id=101;

update student
set marks=marks+1;

-- -- delete--

delete from student
where name='dinesh' ;

select * from student;



-- -- forgien key-- 

create table dept(
id int primary key,
name varchar(50)
);
-- insert into dept values(101,'english'),(102,'it');
-- update dept
-- set id=103
-- where id=102;
-- create table teacher(
-- id int primary key,
-- name varchar(50),
-- dept_id int not null,
-- foreign key (dept_id) references dept(id)
-- on update cascade
-- on delete cascade

-- );
-- insert into teacher values(101,'adam',101),(102,'eve',102);
-- select * from dept;
-- select * from teacher;

-- drop table teacher;

-- -- alter--


-- -- add --

-- alter table student
-- add column age int;  
-- select * from student;

-- -- drop--

-- alter table student
-- drop column age; 
-- select * from student;

-- -- rename--

-- alter table student
-- rename to stu;

-- select * from stu;

-- alter table stu
-- rename to student;

-- alter table student
-- add column age varchar(2) default 20;

-- -- modify-- 

-- alter table student
-- modify column age int;

-- -- change--

 
-- alter table student
-- change age stu_age varchar(2);

-- select * from student;

-- truncate table student;

-- alter table student
-- change name full_name varchar(50);

-- -- joins--

-- use collage;
-- create table studentt(
-- id int primary key,
-- name varchar(50)
-- );

-- insert into studentt
-- values
-- (101,'adam'),
-- (102,'bob'),
-- (103,'casey');

-- create table course(
-- id int primary key,
-- course varchar(50)
-- );
-- insert into course(id, course)
-- values
-- (102,'english'),
-- (105,'math'),
-- (103,'scoence'),
-- (107,'cs');

-- select * from studentt;
-- select * from course;

-- select *
-- from studentt
-- inner join course
-- on studentt.id=course.id;

-- drop table student;
-- drop table studentt;
-- drop table course;


-- create table student(
-- id int primary key,
-- name varchar (50)
-- );
-- insert into student(id,name)
-- values
-- (101,'adam'),
-- (102,'bob'),
-- (103,'casey');

-- create table course(
-- id int primary key,
-- course varchar(50)
-- );

-- insert into course(id , course)
-- values
-- (102,'english'),
-- (105,'math'),
-- (103,'science'),
-- (107,'cs');

-- select *
-- from student as s
-- left join course as c
-- on s.id=c.id;


-- select * 
-- from student as s
-- right join course as c
-- on s.id=c.id;


-- create table student(
-- id int primary key,
-- name varchar (50)
-- );
-- insert into student(id,name)
-- values
-- (101,'adam'),
-- (102,'bob'),
-- (103,'casey');

-- create table course(
-- id int primary key,
-- course varchar(50)
-- );

-- insert into course(id , course)
-- values
-- (102,'english'),
-- (105,'math'),
-- (103,'science'),
-- (107,'cs');

-- select *
-- from student as s
-- left join course as c
-- on s.id=c.id
-- union
-- select *
-- from student as s
-- right join course as c
-- on s.id=c.id;


-- select *
-- from student as s
-- left join course as c
-- on s.id=c.id
-- where c.id is null;

-- select *
-- from student as s
-- right join course as c
-- on s.id=c.id
-- where s.id is null;


-- select *
-- from student as s
-- left join course as c
-- on s.id=c.id
-- union
-- select *
-- from student as s
-- right join course as c
-- on s.id=c.id
-- where c.id and s.id is null;

-- -- self join--

-- select *
-- from student as s
-- join course as c
-- on s.id=c.id; 

-- create table employee(
-- id int primary key,
-- name varchar(50),
-- manager_id int 
-- );
-- insert into employee(id , name , manager_id)
-- values
-- (101,'adam',103),
-- (102,'bob',104),
-- (103,'casey',null),
-- (104,'donald',103);

-- select a.name as manager_name , b.name
-- from employee as a
-- join employee as b
-- on a.id=b.manager_id;

-- drop table employee;

-- create table employee(
-- roll_no int primary key,
-- name varchar(50),
-- marks int ,
-- city varchar(50));

-- insert into employee(roll_no,name,marks,city)
-- values
-- (101,'anil',78,'pune'),
-- (102,'bhumika',93,'mumbai'),
-- (103,'chetan',85,'mumbai'),
-- (104,'dhruv',96,'delhi'),
-- (105,'bob',92,'delhi'),
-- (106,'casey',81,'delhi');

-- select* from employee;

-- select avg(marks) from employee;

-- select * from employee
-- where marks>(select avg(marks) from employee);


-- select roll_no from employee
-- where roll_no %2 = 0;

-- select name from employee
-- where roll_no in (select roll_no from employee
-- where roll_no %2 = 0);

-- select max(marks)
-- from (select * from employee where city='delhi') as temp;

-- select(select max(marks) from employee),name from employee;


-- create view view1 as 
-- select roll_no , name , marks
-- from employee;

-- select * from view1
-- where marks >90;

-- drop view view1;

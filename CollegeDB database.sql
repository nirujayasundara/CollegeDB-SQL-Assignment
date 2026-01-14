DROP DATABASE IF EXISTS `CollegeDB`;
CREATE DATABASE `CollegeDB`;
USE `CollegeDB`;

create table student (
student_Id int,
first_name varchar (50),
last_name varchar(50),
age int, 
department varchar (100),
primary key(student_id)
);

select * from student;

Alter table student add
Column email varchar(100);
ALTER TABLE student
RENAME COLUMN department TO dept_name;
INSERT INTO student (student_id, first_name, last_name, age, dept_name, email)
VALUES
(101, 'Aman', 'Sharma', 21, 'Computer Science', 'aman@college.edu'),
(102, 'Priya', 'Singh', 22, 'Data Analytics', 'priya@college.edu'),
(103, 'Rohan', 'Mehta', 20, 'Marketing', 'rohan@college.edu');
SELECT * FROM student;
UPDATE student
SET age = 21
WHERE student_id = 103;
SELECT first_name, last_name, dept_name
FROM student
WHERE age > 21;
UPDATE student
SET dept_name = 'Business Analytics'
WHERE student_id = 102;
SELECT COUNT(*) AS total_students
FROM student;










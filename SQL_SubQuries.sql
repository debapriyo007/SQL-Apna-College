USE Debu;

-- SQL Sub Queries  || Inner Queries || Nested Queries

-- it's involved 2 statement 
-- 1) write inside SELECT 
-- 2) inside FROM
-- 3) inside where Clause

-- Q1: Print those student name who are geeting more marks then college avg.

CREATE TABLE Student(
	rollNumber INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(2),
    city VARCHAR(20)
);

INSERT INTO Student
(rollNumber,name, marks, grade,city)
VALUES
(101, "Ram", 78, "C", "Pune"),
(102, "Rakesh", 93, "A", "Mumbai"),
(103, "Roshan", 85, "B", "Mumbai"),
(104, "Raj", 96, "A", "Kolkata"),
(105, "Rajesh", 92, "A", "Kolkata"),
(106, "Ramesh", 82, "B", "Delhi");

SELECT * FROM Student;

-- cal the avg of marks.
SELECT AVG(marks)
FROM Student;

-- print those students name only whose marks are greater than class average.
SELECT name , marks 
FROM Student
WHERE marks > 87.6667;

-- the above process is static we have to do it dynamic 
-- the problem is : suppose some new student will come and some student marks will increase then it will affect in the avg for that
-- without static we have to write dynamic sql quries instatede of static.

SELECT name , marks 
FROM Student
WHERE marks > (
SELECT AVG(marks)
FROM Student
);

-- Q2: Print those student name whoes rollNumber is Even.
SELECT rollNumber 
FROM Student
WHERE rollNumber % 2 = 0;

SELECT name, rollNumber 
FROM Student
WHERE rollNumber IN(
	  SELECT rollNumber 
	  FROM Student
	  WHERE rollNumber % 2 = 0
);


-- Q3: Print those students who are getting max marks from Kolkata.

-- cal the max marks.
SELECT MAX(marks)
FROM Student;
SELECT name, city

FROM Student
WHERE marks >= (SELECT MAX(marks)
FROM Student) && city = "Kolkata";


-- find out the st whoes are from "Kolkata"
SELECT name 
FROM Student
WHERE city = "Kolkata";

SELECT name, city
FROM Student
WHERE (
	marks >= (SELECT MAX(marks)FROM Student) && city = (SELECT name FROM Student WHERE city = "Kolkata")
);

-- Sol is given by Shradha Di.
SELECT MAX(marks)
FROM (SELECT * FROM Student WHERE city = "Kolkata") AS tem;






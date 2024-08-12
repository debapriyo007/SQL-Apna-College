-- learn about MYSQL View.

USE dbLearning;
-- create my main table which is student.
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

-- Now create a view of Teacher "Teacher does't want to know from where the students belong"

CREATE VIEW view1 AS
SELECT rollNumber, name, marks FROM Student;

SELECT * FROM view1; -- this is't real table this is virtual table.
-- now we are easy perfrom any operation on this view1 table as per need.
-- for and example "PRINT THOSE STUDENTS WHO ARE GEATTING MARKS MORE THAN 80"

SELECT * FROM view1
WHERE marks > 80;

-- like as we drop the table we also be drop the View.
DROP VIEW view1; 
-- if we are create and delete any VIEW it will reflect on schema but not in our data base.

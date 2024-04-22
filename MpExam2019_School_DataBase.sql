CREATE DATABASE School;
USE School;

-- create table our School Madhyamik Batch(2019).

CREATE TABLE MpBatch_2019( -- U can create more col for more info.
	rollNo INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(3),
    vill VARCHAR(50)
);

INSERT INTO MpBatch_2019
(rollNo,name,marks,grade, vill)
VALUES
(1,"Debu",84,"A", "Santipur"),
(2,"Kuntal",95,"A+", "Pandugram"),
(3,"Arpan",99,"A++","Bhatshala"),
(4,"Subho",91,"A+","Bhatshala"),
(5,"Chitra",98,"A++","Bhatshala"),
(6,"Kiran",70,"B","Jharia"),
(7,"Santosh",90,"A+","Jharia");

DROP TABLE MpBatch_2019; -- i need to run this line coz i have to change the grade char size.

-- so, i only show the students name and their marks from the Table.

SELECT * FROM MpBatch_2019; -- when  i write astrarick means select all col. Print the whole table data.
SELECT name, marks FROM MpBatch_2019;
SELECT DISTINCT marks FROM MpBatch_2019; -- DISTINCT Shows me the unique value.

SELECT * FROM MpBatch_2019 WHERE marks>90; -- Use here WHERE Clause

-- In "WHERE" Clause there are multiple Operators.
SELECT *
FROM MpBatch_2019
WHERE marks+10 >100;

-- Comparision Operator.
SELECT *
FROM MpBatch_2019
WHERE marks < 90;

-- logical Operator.
SELECT *
FROM MpBatch_2019
WHERE marks < 90 AND grade = "B";

-- If we select data in particular Range.
SELECT *
FROM MpBatch_2019
WHERE marks BETWEEN 84 AND 90;

-- IN and NOT IN Caluse.
SELECT *
FROM MpBatch_2019
WHERE grade IN ("A++");

-- NOT IN
SELECT *
FROM MpBatch_2019
WHERE grade NOT IN ("A++");


-- Limit Clause. In here we also use WHERE Clause.
SELECT * 
FROM MpBatch_2019 
WHERE marks > 90
LIMIT 3;


-- Order By Clause.
-- Some times we need data Acendeing order or may be Decending Order.
SELECT * 
FROM MpBatch_2019
ORDER BY name ASC;

-- I want top 3 student in our school.

SELECT * 
FROM MpBatch_2019
ORDER BY marks DESC
LIMIT 3;



-- FUNCTION ARE START FROM HERE "AGGREGATE FUNCTION"     -----

-- Calculate the maximum marks in my table.

SELECT MAX(marks)
FROM MpBatch_2019;  -- same way cal the MINI

-- Calculate the Avrage Marks in Our Batch.
SELECT AVG(marks)
FROM MpBatch_2019;

-- Cal how many student in our batch.
SELECT COUNT(name)
FROM MpBatch_2019;

-- GROUP BY Clause---

SELECT vill , COUNT(name)   -- Now i want to know how many students are learning from a particular village.
FROM MpBatch_2019          -- So , i find out how many student are learning base on Name
GROUP BY vill;

 
SELECT vill ,name, COUNT(name)  -- You can pass multiple varriable. 
FROM MpBatch_2019        
GROUP BY vill, name;


-- Average marks in each village.
SELECT vill , AVG(marks)
FROM MpBatch_2019 
GROUP BY vill;

-- Having Caluse
-- Similar as WHERE Clause apply condition on row.

-- Q: Count the number of student in each village where maximum number is cross 90

SELECT vill , count(rollNo)
FROM MpBatch_2019
GROUP BY vill
HAVING MAX(marks>90);

-- Some General Order .
-- SELECT -> FROM -> WHERE -> GROUP BY -> HAVING -> ORDER BY (ASC)

SELECT vill
FROM MpBatch_2019
WHERE grade = "A+"
GROUP BY vill
HAVING MAX(marks>90)
ORDER BY vill DESC;

-- Table Related Quries.

-- UPDATE 
-- SET
-- WHERE

SET SQL_SAFE_UPDATES = 0;

UPDATE MpBatch_2019
SET grade = "O"
WHERE grade = "A++";

-- Suppose rollNumber(6) Review and his marks got increase so, i will update his marks in my database.
UPDATE MpBatch_2019
SET marks = 88
WHERE rollNo = 6;
 
UPDATE MpBatch_2019
SET grade = "A+"
WHERE rollNo = 6;


UPDATE MpBatch_2019
SET grade = "B"
WHERE marks BETWEEN 79 AND 89;


-- Like in exam 1 question is wrong so, School decided that increase each student marks 1.
UPDATE MpBatch_2019
SET marks = marks+1;



-- DELETE QUEARY

DELETE FROM MpBatch_2019
WHERE marks <30;

-- no one contain marks 30 , so i update anyone marks.
UPDATE MpBatch_2019
SET marks = 25
WHERE rollNo = 6;

SELECT * FROM MpBatch_2019;

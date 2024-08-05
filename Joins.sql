USE Debu;

-- Learning JOINS.
-- Joins are 3 types -> 1) Inner Join. 2)Left Join . 3)Right Join 4) Full Join.



-- (1) INNER JOIN : -
-- Inner joins return rec that have matchinig values with both the tables.

-- create two tables.
CREATE TABLE students(
	st_id INT,
    name VARCHAR(50)
);

-- insert some data.
INSERT INTO students(st_id, name)
VALUES
(101, "Adam"),
(102, "Bob"),
(103, "Alice");

-- create course table.
CREATE TABLE mycourse(
	st_id INT,
    coursename VARCHAR(50)
);

-- insert data into mycourse table
INSERT INTO mycourse(st_id, coursename)
VALUES
(102, "English"),
(105, "Math"),
(103, "Science"),
(107, "Computer Science");

-- now display the tables
SELECT * FROM students;
SELECT * FROM mycourse;

-- Now inner-Join both of them.
SELECT *
FROM students as s -- this 's' and 'c' is called "alias" in future when we use we just write "s & c " instade of writing the whole col name.
INNER JOIN mycourse as c
ON s.st_id = c.st_id; -- if you change the col name it's doe't affect





-- (2) LEFT JOIN :-
-- Return all the record from left table and the record matches from the right table.

-- which table of data is fully needed write down that table 1st.
 
SELECT *
FROM students as s 
LEFT JOIN mycourse as c
ON s.st_id = c.st_id; 



-- (3) RIGHT JOIN :-
SELECT *
FROM students as s 
RIGHT JOIN mycourse as c
ON s.st_id = c.st_id; 



-- (4) FULL JOIN :-


SELECT *
FROM students as s 
LEFT JOIN mycourse as c
ON s.st_id = c.st_id 
UNION   	-- union give us "Unique data"
SELECT *
FROM students as s 
RIGHT JOIN mycourse as c
ON s.st_id = c.st_id; 

-- THERE ARE ALSO TWO JOINS -> "LEFT EXCLUSIVE " and "RIGHT EXCLUSIVE" 

-- LEFT EXCLUSIVE:-
SELECT *
FROM students as s 
LEFT JOIN mycourse as c
ON s.st_id = c.st_id 
WHERE c.st_id IS NULL;


-- RIGHT EXCLUSIVE:-
SELECT *
FROM students as s 
RIGHT JOIN mycourse as c
ON s.st_id = c.st_id 
WHERE s.st_id IS NULL;
 

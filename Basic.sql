-- First Creating DataBase.
CREATE DATABASE School;
-- Use that DataBase
USE  School;


-- Create a Table 
CREATE TABLE Student(
	RollNo INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Now, How to show my all data in my table.
SELECT * FROM Student; -- "THIS IS THE COMMAD TO SHOW ALL TABLE DATA"
-- till now there is no data in my table.coz i did't insert any data in my table.
-- Now i INSERT data in my table.

INSERT INTO Student
(RollNo, name)
VALUES
(1, "Debu"),
(2,"Kuntal"),
(3, "Arpan"),
(4, "Subo");

-- Add only one data.
INSERT INTO Student VALUES (5,"Chitra");


CREATE DATABASE Debu;
USE Debu;

-- Here We are Learing about KEYS.

CREATE TABLE tem1(
	id INT UNIQUE     -- Here using UNIQUE Constraints.

);
INSERT INTO tem1 VALUES (101);
INSERT INTO tem1 VALUES (101); -- this line give me error coz our id is UNIQUE Constraints.

SELECT * FROM tem1;

-- Define Primary key Second Syntax.
CREATE TABLE Students(
	id INT, 
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    
    -- here is the syntax.
    PRIMARY KEY (id)
);

-- Create a Table for Employers."DEFAULT CONSTRAINTS.."
CREATE TABLE Emp(
	id INT,
    salary INT DEFAULT 30000

);
-- now insert data into table.
INSERT INTO Emp (id) VALUES (121);

SELECT * FROM Emp;




-- "CHECK CONSTRAINTS...."
CREATE TABLE City(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
	CONSTRAINT age_check CHECK (age >= 18 AND city = "Kolkata")
);

-- Another way of Syntax.
CREATE TABLE newTab(
	age INT CHECK (age>=18)
);
CREATE DATABASE MyMcWrld;
USE MyMcWrld;

CREATE TABLE Mcs(
	name VARCHAR(50),
    age INT PRIMARY KEY,
    hit VARCHAR(50)
);

-- now i want to insert into this table.
INSERT INTO Mcs
(name, age, hit)
VALUE
("21 Savage", 21, "redrum"),
("50 Cent", 32, "Many Man"),
("Kendrick Lemar", 28, "DNA"),
("Drake", 33, "God Plan"),
("Lil Wayne", 35, "Kant Nobody");

SELECT * FROM Mcs; -- Print my table
	
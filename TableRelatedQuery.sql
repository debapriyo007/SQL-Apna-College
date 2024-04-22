-- TABLE RELATED QUERIES..
use School;

CREATE TABLE Student( 
	rollNo INT PRIMARY KEY,
    name VARCHAR(50),
	age INT
);

DROP TABLE Student;

INSERT INTO Students
(rollNo,name,age)
VALUES
(1,"Debu",21),
(2,"Ram",22),
(3,"Shyam",24),
(4,"Jassi",21),
(5,"Rakim",25);

SELECT * FROM Students;

ALTER TABLE Student 
ADD COLUMN vill VARCHAR(20) NOT NULL DEFAULT "Hugli";

-- Till now in my table age is INT but i want to chaNge it VARCHAR.
-- modifY Column.
ALTER TABLE Student
MODIFY age VARCHAR(2);

-- Now Change Col name as well as data Type.
ALTER TABLE Student
CHANGE  age std_age INT;


INSERT INTO Student
(rollNo,name,std_age)
VALUES
(6, "Bob", 100);

-- Delete the Col
ALTER TABLE Student
DROP COLUMN std_age;

-- Rename Table Name.
ALTER TABLE Student
RENAME TO Students;


-- Truncate (Table Related Queries) -> To delete all table's Data
-- DROP delete the whole table, But Truncate delete the data in the table.
TRUNCATE TABLE Students;


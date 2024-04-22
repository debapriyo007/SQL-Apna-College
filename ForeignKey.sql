USE Debu;
-- We are learning here Revisiting FK(Foren key)


CREATE TABLE Course( -- This table is called Parent Table

	courseId INT PRIMARY KEY,
    Coursename VARCHAR(50)
);

CREATE TABLE Teacher(   -- This table is called Child Table.

	teacherId INT PRIMARY KEY,
    Teachername VARCHAR(50),
    -- Bellow line is to link with Teacher and Courses.
    -- Foreign Key is just link with one table with another table.
    
    deptId INT,
    FOREIGN KEY (deptId) REFERENCES Course(courseId)
);

DROP TABLE Teacher;

INSERT INTO Course
(courseId,Coursename)
VALUES
(101,"English"),
(102,"Bengali"),
(103,"Math"),
(104,"Physics");


INSERT INTO Teacher
(teacherId,Teachername,deptId)
VALUES
(101,"Sourav Babu, 101"),
(102,"Santi Babu",102),
(103,"Robin Babu",103),
(104,"Achinta Babu", 104);


-- Casading FK.
-- Like two table are inter connected with each other like, if i update one table then that changes (it may be DELETE , UPDATE) should be 
-- reflected in the other table , this is the concept of Casading.


CREATE TABLE Teacher(   -- This table is called Child Table.

	teacherId INT PRIMARY KEY,
    Teachername VARCHAR(50),
    -- Bellow line is to link with Teacher and Courses.
    -- Foreign Key is just link with one table with another table.
    
    deptId INT,
    FOREIGN KEY (deptId) REFERENCES Course(courseId)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

SELECT * FROM Teacher;









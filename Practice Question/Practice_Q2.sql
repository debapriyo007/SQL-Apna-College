
-- Question (1) : -> Write a Query to find the average Views in  City in Acending Order.
USE Debu;

CREATE TABLE DHHRappers(
no INT PRIMARY KEY,
name VARCHAR(50),  
album VARCHAR(50),
hitSong VARCHAR(50),
views VARCHAR(10),
city VARCHAR(50)

);
DROP TABLE DHHRappers;

INSERT INTO DHHRappers
(no,name, album, hitSong, views, city)
VALUES
(1,"Raftaar", "Mr Nair", "Aage Chal","35M" , "Delhi" ),
(2,"Kr$na", "Still Here", "Parthana","25M" , "Delhi" ),
(3,"Karma", "Eyes of the Prize", "Duniya Makkaar","40M" , "Dehradun"),
(4,"Gravity", "Moonbounce", "Jalaluddin","20M" , "Mumbai"),
(5,"J Trix", "Both Saih", "Thelka","8M" , "Kolkata");

SELECT * FROM DHHRappers;

INSERT INTO DHHRappers VALUES (6, "Divine", "Punay Paap" , "Mera Bhi", "200M" , "Mumbai");




SELECT city , AVG(views)
FROM DHHRappers
GROUP BY city
ORDER BY AVG(views) DESC;


-- End the First Question Here.




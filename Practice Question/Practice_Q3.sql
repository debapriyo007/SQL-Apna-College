USE Debu;

CREATE TABLE Payment(

	Customer_id INT PRIMARY KEY,
    Customer VARCHAR(50),
    mode VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Payment
(Customer_id, Customer,mode,City)
VALUES
(101, "Mr Frankline", "NetBanking", "Crompton"),
(102, "Sunil", "Credite Card", "Kolkata"),
(103, "Benjamin", "Credite Card", "Landon"),
(104, "Harry", "NetBanking", "Delhi"),
(105, "Alex Carry", "Debit Card", "Japan"),
(106, "Smith", "Debit Card", "Moscow");

DROP TABLE Payment;
SELECT * FROM Payment;

SELECT mode , count(Customer)
FROM Payment
GROUP BY mode;

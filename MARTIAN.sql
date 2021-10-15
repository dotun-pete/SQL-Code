
-- USING A GENERATED DATA SAMPLE QUERIES





-- 1. Creating A Database 


CREATE DATABASE Mars


-- 2. Creating A Table


CREATE TABLE Martian
(
"Martian_Id" int Primary key,
"First_Name" varchar(5000),
"Last_Name" Varchar (5000),
"Base_Id" int,
"Super_Id" int
);


-- 3. Inserting Values into created Table


INSERT INTO Martian
("Martian_Id","Last_Name","First_Name","Base_Id","Super_Id")

VALUES
(1,'Ray','Bradbury',1,null),
(2,'John','Black',4,10),
(3,'Samuel','Hinkston',4,2),
(4,'Jeff','Spender',1,9),
(5,'Sam','Parkhill',2,12),
(6,'Elma','Parkhill',3,8),
(7,'Melissa','Lewis',1,1),
(8,'Mark','Watney',3,null),
(9,'Beth','Johanssen',1,1),
(10,'Chris','Beck',4,null),
(11,'Nathaniel','York',4,2),
(12,'Elon','Musk',2,null),
(13,'John','Carter',null,8);


-- 4. View the created Table 


SELECT *
FROM Martian


-- 5. Inserting default values into NULL rows using ISNULL function


SELECT Martian_Id, First_Name, Last_Name, Base_Id, Super_Id, ISNULL(Serial_Killer, 'Verified')
FROM Martian


-- 6. Deleting values from the column


DELETE FROM Martian
WHERE Serial_Killer = 'verified'


-- 7. Adding more columns to an existing Table


ALTER TABLE Martian
ADD "Friendlies" VARCHAR (500)


-- 8. Upadating selected columns in an existing Table


UPDATE Martian
SET Friendlies = 'Verified'
WHERE Martian_Id IN (1,3,4,7,11);


-- 9. Using the JOINS function to merge two Tables


    SELECT *
    FROM Martian
    JOIN Base
    ON Martian.Base_Id = Base.Base_Id


-- 10. How to derive specific data from the table using thw WHERE function


	SELECT *
	FROM Martian
	WHERE Martian_Id BETWEEN 5 AND 9


-- 11. Using the UNION function to unite two or more Tables in a single column


    SELECT First_Name
    FROM Martian 
	UNION
	SELECT Base_Name
	FROM Base

	
-- 12. Using a CASE statement 


     SELECT First_Name, Last_Name, Jobtitle, Salary,
	 CASE
	     WHEN Jobtitle = 'Salesman'
		 THEN Salary = Salary + (Salary * .20)
		 WHEN Jobtitle = 'Accountant' 
		 THEN Salary = Salary + (Salary* .0.05)
		 WHEN Jobtitle = 'HR'
		 THEN Salary = Salary + (Salary* .0.0008)
		 ELSE Salary + (Salary* 0.4)
     END 

	 
--13. Using String Functions like TRIM, UPPER and LOWER


         SELECT First_Name, TRIM (First_Name) AS Given_Name
		 FROM Martian

	     SELECT UPPER(Last_Name)
		 FROM Martian


-- 14. Using Subquery 
         SELECT ID, Salary,(SELECT AVG(Salary) FROM Martian)
		 FROM Martian











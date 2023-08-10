CREATE Database Students_Record;

CREATE Table Students_Info("Student_ID" int unique not null, "Gender" Varchar(50), "Name" Varchar(50), "Age" int, "Subject" Varchar(50) not null;

SELECT *FROM Students_Info;

CREATE Table Health_Records("Student_ID" int unique not null, "Blood Group" Varchar(10), "Height" int, "Weight" int;

SELECT * FROM Health_Records;

CREATE Table Performance("Student_ID" int unique not null, "Score" int Default(0), "Grade" Varchar(10));

SELECT * FROM Performance;

EXEC sp_rename "Students_Info.Subject", "Course";

ALTER Table Students_Info DROP COLUMN "Age";

USE Students_Record;

SELECT * FROM Employee;

SELECT * FROM Employee WHERE city = 'Mumbai' OR city = 'Delhi';

SELECT * FROM Employee WHERE fname LIKE '%a%' AND fname LIKE '%e%';

SELECT * FROM Employee WHERE date_of_birth > '12-31-1990';

SELECT * FROM Salary;

SELECT * FROM Salary WHERE Base < 1000000 ORDER BY Base ASC;

SELECT * FROM Employee CROSS APPLY STRING_SPLIT(email, '@');

SELECT COUNT(*) AS 'TOTAL EMPLOYEES' FROM Employee;

SELECT TOP 5 city, COUNT(*) AS 'TOTAL EMPLOYEES' FROM Employee
GROUP BY city
HAVING COUNT(*) > 15
ORDER BY 'TOTAL EMPLOYEES' DESC;

SELECT TOP 1 pincode, COUNT(*) AS 'MOST USED PINCODE' FROM Employee
GROUP BY pincode
ORDER BY 'MOST USED PINCODE' DESC;
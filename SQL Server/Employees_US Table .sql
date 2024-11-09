USE [Sales Database]

-- Creating Employees Table 
CREATE TABLE Employees_US(
    EmployeeID INT PRIMARY KEY,
    FirstName  VARCHAR(50),
    LastName Varchar(50),
    Department VARCHAR(50)
)

-- Inserting Sample Records into the employees table 

INSERT INTO Employees_US(EmployeeID, FirstName,LastName,Department) VALUES
(1,'Nick','Patel','Engineering'),
(2,'Manav','Patel','Engineering'),
(3,'Akshar','Sharma','Engineering'),
(4,'Kaushal','Shukla','Admin'),
(5,'Shrey','Patil','Finance'),
(6,'Preet','Payare','Finance'),
(7,'Dhruv','Patel','Marketing'),
(8,'Vrutik','Patil','HR')


SELECT * FROM dbo.Employees_US
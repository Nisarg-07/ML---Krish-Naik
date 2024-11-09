USE [Assignments]

-- Creating the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);

INsert INTO Employees VALUES
(6, 'Peter', 'Parker', 'Peter.Parker@example.com', 105, '2021-07-19', 81000.00)
-- Inserting data into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');

SELECT *
FROM dbo.Employees
SELECT * FROM 
dbo.Departments

--1) Write a SQL query to list the names of employees along with the names of the departments they work in.

SELECT FirstName, LastName, D.DepartmentName
FROM dbo.Employees [E]
INNER JOIN dbo.Departments [D]
ON E.DepartmentID = D.DepartmentID

--2) Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
 
SELECT D.DepartmentName, FirstName, LastName
FROM dbo.Employees [E]
RIGHT JOIN dbo.Departments [D]
ON E.DepartmentID = D.DepartmentID

--3) Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID)



SELECT FirstName, LastName
FROM dbo.Departments [D]
RIGHT JOIN dbo.Employees [E]
ON D.DepartmentID = E.DepartmentID
Where D.DepartmentID IS NULL

--4) Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'

SELECT FirstName,LastName,EmployeeID
FROM dbo.Employees
WHERE DepartmentID = (SELECT DepartmentID From dbo.Employees WHERE FirstName Like 'JANE' AND LastName Like 'Doe') 
AND FirstName NOT LIKE 'Jane' AND LastName NOT LIKE 'DOE'

SELECT *

FROM Employees E1

JOIN Employees E2

ON E1.DepartmentID = E2.DepartmentID

WHERE E1.FirstName = 'Jane' AND E1.LastName = 'Doe'

AND E2.EmployeeID <> E1.EmployeeID;

--5) Write a SQL query to find the department with the highest total salary paid to its employees
SELECT *
FROM dbo.Employees
SELECT * FROM 
dbo.Departments

SELECT DepartmentName,Salary
FROM dbo.Employees [E]
JOIN dbo.Departments [D]
ON E.DepartmentID = D.DepartmentID
WHERE Salary = (SELECT MAX(Salary) FROM dbo.Employees)



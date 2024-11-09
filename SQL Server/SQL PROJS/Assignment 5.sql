--1) Write a SQL query to select all columns and rows from the Employees table.

SELECT * 
FROM dbo.Employees

--2) Write a SQL query to find the names and email addresses of all employees who work in the department with DepartmentID = 101.

SELECT FirstName, LastName,Email
FROM dbo.Employees
WHERE DepartmentID = 101

--3) Write a SQL query to find the total number of employees in the Employees table

SELECT COUNT(EmployeeID) [Number of Employees]
FROM dbo.Employees

--4) Write a SQL query to find the details of employees who were hired in the year 2020.

SELECT *
FROM dbo.Employees
WHERE YEAR(HireDate)= 2020

--5) Write a SQL query to update the salary of 'Jane Doe' to 90,000
SELECT * 
FROM dbo.Employees

UPDATE dbo.Employees
SET Salary = 90000
WHERE FirstName LIKE 'Jane' AND LastName LIKE 'Doe'

SELECT * 
FROM dbo.Employees


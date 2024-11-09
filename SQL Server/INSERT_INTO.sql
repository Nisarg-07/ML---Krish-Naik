SELECT * from dbo.Employees

INSERT INTO dbo.Employees(EmployeeID,FirstName,LastName,Department,Salary,HireDate)
VALUES(6,'Vraj','Oberoy','Accounting',55000,'2020-08-09')

SELECT * from dbo.Employees


INSERT INTO dbo.Employees(EmployeeID,FirstName,LastName)
VALUES(7,'Preet','Pyare')

-- Without writing Column name

INSERT INTO dbo.Employees
VALUES(8,'Vrutik','Shukla','Maintenance',61000,'2020-04-09')

-- Know the order of the column 
SELECT * From INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Employees'
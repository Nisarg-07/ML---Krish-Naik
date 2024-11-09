-- 1) How do you select all the columns from the Employees table?
SELECT * FROM dbo.Emplyees

-- 2) How do you select only the FirstName and LastName column from the Employees Table?

SELECT FirstName,LastName FROM dbo.Emplyees

-- 3) How do you find all the employees who works in thr It Department

SELECT * FROM dbo.Emplyees Where Department='IT'

-- OR
SELECT * FROM Emplyees WHERE Department Like 'IT'

-- 4) How do select employees with a salary greater than 70000?

SELECT * FROM dbo.Emplyees WHERE Salary>70000

-- 5) How do you sort the result by LastName in ascending order

SELECT * FROM dbo.Emplyees ORDER BY LastName ASC

-- 6) How do you select distinct department from the employees table?
SELECT Distinct Department FROM dbo.Emplyees

-- 7) How do you count the number of employees in each department?

SELECT Department,COUNT(*) [Number of Employees] FROM dbo.Emplyees GROUP BY Department

-- 8) How do you find the maximum salary of the Employee?
SELECT MAX(Salary) [Maximum Salary] FROM dbo.Emplyees

-- 9) How do you find an average salary from the table
SELECT AVG(Salary) [Average Salary] FROM dbo.Emplyees

-- 10) How do you select employees whose name starts with M?
SELECT * FROM Emplyees WHERE LastName LIKE 'Martinez'


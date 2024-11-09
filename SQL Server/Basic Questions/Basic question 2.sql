
SELECT * FROM dbo.Emplyees
-- 1) How do you select a person who works in IT and has salary greater than 75000 
SELECT * FROM Emplyees WHERE Department LIKE 'IT' AND Salary>=75000

-- 2) How will you find a person who works in 'HR' and have a salary that is Less than 60000?
SELECT * FROM Emplyees WHERE Department in ('HR') OR Salary<= 60000

-- 3) How do you select employees who doesn't work in the finance department?
SELECT * FROM dbo.Emplyees WHERE Department NOT IN ('Finance')

-- OR 
SELECT * FROM dbo.Emplyees WHERE NOT Department = 'Finance'

-- 4) How do you find Employees whose salary is between 60000 - 70000 and also who works in the Finance Department 
SELECT * FROM dbo.Emplyees WHERE 60000<=Salary AND 70000>=Salary AND Department = 'Finance'
SELECT * FROM dbo.Emplyees WHERE Salary BETWEEN 60000 AND 70000 AND Department = 'Finance'

-- 5 How do you find Employees who works in the 'IT' Department and do not have a salary greater than 80,000?
SELECT * FROM dbo.Emplyees WHERE Department in ('IT') AND Salary<=80000

-- 6) How do you find employees who works in HR or Finance and have salary greater than 65,000?

SELECT * FROM dbo.Emplyees WHERE Department in ('HR') OR Department in ('Finance') AND Salary>=65000 ORDER BY Department
SELECT * FROM dbo.Emplyees WHERE (Department in ('HR') OR Department in ('Finance')) AND Salary>=65000 ORDER BY Department

-- 7) How do you select Employees whose last name starts with D and doesn't work in the HR Department 
SELECT * FROM dbo.Emplyees
SELECT * FROM dbo.Emplyees WHERE LastName like 'd%' AND NOT Department in ('Finance')

--8) How do you SELECT Employees Who do not work in the 'IT' Department and have Salary Greater than 70000?
SELECT * FROM dbo.Emplyees WHERE NOT Department in ('IT') AND Salary >= 70000

--9) How do you SELECT Employees who work in the IT department and either have salary greater than 75000 or have the first name Laura

SELECT * FROM dbo.Emplyees
SELECT * FROM dbo.Emplyees WHERE Department in ('IT') AND (Salary>75000 OR FirstName ='Laura')

-- 10) How do you find the Employees who does not work in the 'HR' or 'IT' departments?

SELECT * FROM dbo.Emplyees
SELECT * FROM dbo.Emplyees WHERE Not (Department in ('IT') OR Department in ('HR'))
SELECT * from dbo.Employees

SELECT * from dbo.Employees WHERE not FirstName='Nick'


SELECT * from dbo.Employees WHERE not FirstName='Nick' and not Salary = 120000

SELECT * from dbo.Employees WHERE not FirstName='Nick' OR not Salary = 120000

SELECT * from dbo.Employees WHERE not LastName='Patel'

-- BETWEEN --

SELECT * from dbo.Employees WHERE Salary BETWEEN 50000 AND 120000
SELECT * from dbo.Employees WHERE Salary>= 50000 AND Salary<=120000 ORDER BY HireDate DESC

-- NOT BETWEEN 
SELECT * from dbo.Employees WHERE not Salary BETWEEN 60000 AND 120000
SELECT * from dbo.Employees WHERE Salary NOT BETWEEN 60000 AND 120000 ORDER BY Salary DESC


--- IN 

SELECT * from dbo.Employees WHERE Department = 'Chemical' or Department = 'AI'
SELECT * from dbo.Employees WHERE Department in ('AI','Chemical')
SELECT * from dbo.Employees WHERE Department not in ('AI','Chemical')
SELECT * from dbo.Employees WHERE not Department in ('AI','Chemical')




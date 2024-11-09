SELECT * 
FROM dbo.Employees

--) Creating Back up Table

SELECT *
INTO EMP_BKUp
FROM dbo.Employees

SELECT *
FROM dbo.EMP_BKUp

-- A View is a virtual Table, It is a Stored SQL Query 
-- It helps in reducing the complexity of the code 
-- It helps in implementing the security 

CREATE VIEW View_1 as(
    SELECT EmployeeID,FirstName,LastName,Email,DepartmentID , HireDate FROM dbo.Employees
)

SELECT * FROM View_1

-- View is the virtual table created on top of Main table
-- If we make change in the view than the records in the main table would also change 
UPDATE View_1
SET EmployeeID = 100
WHERE FirstName in ('John')

SELECT * 
FROM dbo.Employees
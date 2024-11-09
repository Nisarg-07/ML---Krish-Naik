SELECT * 
FROM dbo.Employees

CREATE PROCEDURE SP_test
as
BEGIN
    SELECT * FROM Employees
END

--- 
SP_test
EXEC SP_test
EXECUTE SP_test


---) Example 2

CREATE PROC EMP_Personal_details
AS
BEGIN
    SELECT FirstName,LastName,Email FROM dbo.Employees
END
EMP_Personal_details

--) Dropping Procedure 
DROP PROCEDURE [EMP_Personal_details]
GO

--) Altering Procedure 

ALTER PROC EMP_Personal_details
AS
BEGIN
    SELECT EmployeeID,FirstName,LastName,Email FROM dbo.Employees
END

EXEC EMP_Personal_details


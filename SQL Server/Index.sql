SELECT * FROM dbo.Employees

CREATE INDEX IDX_11 ON dbo.Employees(Salary DESC)

CREATE INDEX IDX_12 ON dbo.Employees(FirstName, LastName)

DROP INDEX dbo.Employees.IDX_11
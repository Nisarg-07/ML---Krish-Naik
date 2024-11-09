SELECT *
FROM dbo.EmployeeSalaries

SELECT *,
FIRST_VALUE(Salary) OVER(ORDER BY Salary) [Min Salary]
FROM dbo.EmployeeSalaries


SELECT *,
FIRST_VALUE(EmployeeName) OVER(ORDER BY Salary) [Employee with Min Salary],
FIRST_VALUE(Salary) OVER(ORDER BY Salary) [ Min Salary],
FIRST_VALUE(Department) OVER(ORDER BY Department DEsc) [Employee's Department]
FROM dbo.EmployeeSalaries
ORDER BY EmployeeID


SELECT *,
FIRST_VALUE(EmployeeID) OVER(PARTITION BY Department ORDER BY Salary DESC) [Employee ID],
FIRST_VALUE(EmployeeName) OVER(PARTITION BY Department ORDER BY Salary DESC) [Employee Name]
FROM dbo.EmployeeSalaries


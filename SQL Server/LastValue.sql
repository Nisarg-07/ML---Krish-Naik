--) Incorrect Query

SELECT *,
LAST_VALUE(EmployeeName) Over(Order By Salary DESC) [EMP with Lowest Salary]
FROM dbo.EmployeeSalaries

--) Correct Query

SELECT *,
LAST_VALUE(EmployeeName) Over(Order By Salary DESC rows between unbounded preceding and unbounded following) [EMP with Lowest Salary],
LAST_VALUE(Salary) Over(Order By Salary DESC rows between unbounded preceding and unbounded following) [Lowest Salary]
FROM dbo.EmployeeSalaries

--)
SELECT *,
LAST_VALUE(EmployeeName) Over(PARTITION BY Department
    Order By Salary DESC rows between unbounded preceding and unbounded following) [EMP with Lowest Salary],
LAST_VALUE(Salary) Over(PARTITION BY Department
    Order By Salary DESC rows between unbounded preceding and unbounded following) [Lowest Salary]
FROM dbo.EmployeeSalaries


SELECT *,
LAST_VALUE(EmployeeName) Over(PARTITION BY Department
    Order By Salary rows between unbounded preceding and unbounded following) [EMP with Heighest Salary],
LAST_VALUE(Salary) Over(PARTITION BY Department
    Order By Salary rows between unbounded preceding and unbounded following) [Heighest Salary]
FROM dbo.EmployeeSalaries


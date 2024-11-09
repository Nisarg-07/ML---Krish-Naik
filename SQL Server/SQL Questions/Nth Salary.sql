
-- 1st Approach

-- 2nd Highest Salary
SELECT MAX(Salary) [2nd Highest Salary] 
FROM dbo.Employees 
WHERE Salary < (SELECT MAX(Salary) FROM dbo.Employees)

-- 2nd Approach

-- DENSE RANK function with CTE


WITH CTE AS(
    SELECT *, DENSE_RANK() OVER(ORDER BY SALARY DESC) [DR] FROM dbo.Employees
)
SELECT DISTINCT Salary [2nd Highest Salary]
FROM CTE 
WHERE DR in (2)

-- 3rd Approach

-- Sub Query with DenseRank func

SELECT Salary [ 2nd Highest Salary]
FROM (SELECT *, DENSE_RANK() OVER(ORDER BY Salary DESC) [DR] FROM dbo.Employees) x
WHERE DR in (2)

-- 4th Approach

-- SUb Quaries 

SELECT TOP 1 Salary [2nd Highest Salary]
FROM (SELECT DISTINCT TOP 2 Salary From dbo.Employees ORDER BY Salary DESC) x
ORDER BY Salary

SELECT TOP 1 Salary [10th Highest Salary]
FROM (SELECT DISTINCT TOP 10 Salary From dbo.Employees ORDER BY Salary DESC) x
ORDER BY Salary


SELECT DISTINCT Salary FROM dbo.Employees
Order BY Salary DESC





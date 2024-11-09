--) CTE

SELECT *
FROM dbo.Employees

SELECT * into #temp1 FROM Employees

SELECT * 
FROM #temp1

--) CTE - Example 1

With CTE AS(
    SELECT * FROM #temp1
)

SELECT EmployeeID from CTE WHERE Salary is NULL

--) Example 2 : CTE

With Test_CTE AS(
    SELECT EmployeeID, FirstName 
    From #temp1
    WHERE EmployeeID in (2,4)
)

SELECT * FROM Test_CTE

--) Example 3 : Creating a new table from the existing data 

With [Comm Table Expression] AS (
    SELECT *
    FROM #temp1
    WHERE EmployeeID in (1,2,3)
)

SELECT * 
INTO #temp2 
FROM [Comm Table Expression]

SELECT *
FROM #temp2

--) Example 4 

WITH CTE_1 AS (
    SELECT *
    FROM #temp1
    WHERE EmployeeID in (2,3,4)
)

UPDATE #temp1 SET EmployeeID = 101 where EmployeeID in (SELECT DISTINCT EmployeeID FROM CTE_1)

SELECT *
FROM #temp1

--) Example 5 DELETE
WITH CTE_2 AS(
    SELECT *
    FROM #temp1
    WHERE EmployeeID = 1
)
DELETE FROM #temp1 WHERE EmployeeID in (SELECT DISTINCT EmployeeID FROM CTE_2)
SELECT *
FROM #Temp1

--) Example 6 Insert 
WITH CTE_3 AS(
    SELECT * 
    FROM #temp1
    WHERE EmployeeID in (101)
)

INSERT INTO #Temp1 SELECT * FROM CTE_3

SELECT *
FROM #Temp1
ORDER BY EmployeeID DESC
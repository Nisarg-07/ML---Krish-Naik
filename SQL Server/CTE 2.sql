SELECT *
FROM Employees

SELECT * 
INTO #1
FROM dbo.Employees

--) Example 1

WITH CTE1 AS (
    SELECT * FROM #1 WHERE EmployeeID in (1,2)
), CTE2 AS(
    SELECT * FROM #1 WHERE EmployeeID in (3,4)
)

SELECT * FROM CTE1
UNION ALL
SELECT * FROM CTE2

--) Example 2

WITH CTE3 AS(
    SELECT EmployeeID, FirstName FROM #1 
    WHERE EmployeeID in (1)
), CTE4 AS(
    SELECT EmployeeID, FirstName FROM #1
    WHERE EmployeeID in (3)
)


SELECT * INTO #2 FROM (
    SELECT * FROM CTE3
    UNION ALL
    SELECT * FROM CTE4
) x

SELECT * FROM #2

--) Example 3 INSERT

WITH CTE3 AS(
    SELECT EmployeeID, FirstName FROM #1 
    WHERE EmployeeID in (1)
), CTE4 AS(
    SELECT EmployeeID, FirstName FROM #1
    WHERE EmployeeID in (3)
)


INSERT INTO #2 SELECT * FROM (
    SELECT * FROM CTE3
    UNION ALL
    SELECT * FROM CTE4
) x

SELECT * FROM #2

--) Example 5 DELETE
WITH CTE3 AS(
    SELECT EmployeeID, FirstName FROM #1 
    WHERE EmployeeID in (5,6)
), CTE4 AS(
    SELECT EmployeeID, FirstName FROM #1
    WHERE EmployeeID in (6,7)
)

DELETE FROM #1 WHERE EmployeeID in (SELECT DISTINCT EmployeeID FROM CTE3
UNION ALL 
SELECT DISTINCT EmployeeID FROM CTE4)


SELECT * FROM #1

--) Example 5 
WITH CTE3 AS(
    SELECT EmployeeID, FirstName FROM #1 
    WHERE EmployeeID in (1)
), CTE4 AS(
    SELECT EmployeeID, FirstName FROM #1
    WHERE EmployeeID in (2)
)

UPDATE #1 SET EmployeeID = 69
WHERE EmployeeID NOT IN (
    SELECT DISTINCT EmployeeID FROM CTE3
    UNION ALL 
    SELECT DISTINCT EmployeeID FROM CTE4
)

SELECT * FROM #1
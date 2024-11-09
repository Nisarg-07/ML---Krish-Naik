-- 1st Approach

SELECT * 
FROM dbo.EmployeeRecords 
ORDER BY EmployeeID

SELECT * INTO EmpRech FROM dbo.EmployeeRecords
SELECT * FROM EMPRech

WITH CTE AS(
    SELECT *, ROW_NUMBER() OVER(PARTITION BY EmployeeID, EmployeeName, ManagerID ORDER BY EmployeeID) [Row Number] FROM EmpRech
)
--SELECT * FROM CTE
DELETE FROM CTE WHERE [Row Number] =2

--2nd Approach

SELECT * 
INTO EmpBackup FROM EmployeeRecords

SELECT *
FROM EmpBackup

SELECT DISTINCT * 
INTO #1 FROM EmpBackup

TRUNCATE TABLE EmpBackup

INSERT INTO EmpBackup SELECT * FROM #1


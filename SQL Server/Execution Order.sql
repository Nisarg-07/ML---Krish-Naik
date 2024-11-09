SELECT * FROM EmployeeSalaries

SELECT Distinct Top 1 Department, AVG(Salary) [Average Salary] 
FROM EmployeeSalaries 
GROUP BY Department 
Having AVG(SALARY)> 50000 
ORDER BY Department

-- FROM & JOIN
-- WHERE
-- GroupBY
-- Having
-- SELECT
-- Distinct
-- ORDER BY
-- Top 1

SELECT * 
FROM reportingStructure


SELECT Distinct B.EmployeeName [Reportee], A.EmployeeName [Manager]
FROM reportingStructure [A] RIGHT JOIN  reportingStructure [B]
ON A.EmployeeID =B.ManagerID

SELECT B.EmployeeName [Reportee], A.EmployeeName [Manager]
FROM reportingStructure [A] RIGHT JOIN  reportingStructure [B]
ON A.EmployeeID =B.ManagerID
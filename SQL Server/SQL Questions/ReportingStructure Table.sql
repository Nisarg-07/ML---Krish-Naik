CREATE TABLE ReportingStructure(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    ManagerID INT
)

INSERT INTO ReportingStructure VALUES
(1,'Alice Smith',NULL),
(2,'Bob Johnson',1),
(3,'Carol White',1),
(4,'David Brown',2),
(5,'Eve Davis',2),
(6,'Frank Miller',3)


SELECT * 
FROM ReportingStructure
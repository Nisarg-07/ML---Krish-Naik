SELECT * FROM dbo.Customers
SELECT * FROM dbo.Orders

SELECT * FROM dbo.Customers
WHERE customer_id in (
    SELECT Distinct customer_id FROM Orders WHERE order_date between '2024-06-20' AND '2024-08-31'
)

SELECT AVG(Salary) FROM dbo.Employees

SELECT * FROM dbo.Employees 

SELECT * FROM dbo.Employees 
WHERE Salary > (SELECT AVG(Salary) From dbo.Employees)
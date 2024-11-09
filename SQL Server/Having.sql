SELECT * FROM dbo.Sales

-- Having 

-- Total Sales, avg sales, total quantity, avg quantity for each product

SELECT 
ProductID,
SUM(TotalAmount) as [Total Sales],
AVG(TotalAmount) as [Average Sales],
SUM(Quantity) as [Total Quantity],
AVG(Quantity) as [Average Quantity]
From dbo.Sales 
GROUP BY ProductID 
HAVING SUM(TotalAmount)<680 AND (SUM(Quantity) = 21 OR SUM(Quantity)= 27)
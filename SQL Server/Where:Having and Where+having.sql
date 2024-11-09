SELECT * FROM dbo.Sales


SELECT * FROM dbo.Sales WHERE TotalAmount <=160


SELECT 
ProductID,
SUM(TotalAmount) [Total Sales]
FROM dbo.Sales 
GROUP BY ProductID 
HAVING SUM(TotalAmount)<700

SELECT
ProductID,
sum(TotalAmount) [Total Sales]
FROM dbo.Sales
WHERE TotalAmount>161
GROUP BY ProductID
HAVING SUM(TotalAmount)>201 
ORDER BY SUM(TotalAmount)

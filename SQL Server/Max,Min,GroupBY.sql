SELECT * FROM Sales 

-- MAXIMUM

SELECT MAX(SaleDate) [Quantity] FROM Sales


-- GROUP BY

-- Maximum Quantity sold for each product ID 

SELECT SalespersonID, MAX(Quantity)  [Maximum Quantity]from dbo.Sales GROUP BY SalespersonID



SELECT PaymentMethod, MAX(TotalAmount) [Maximum Amount] from dbo.Sales GROUP BY PaymentMethod
SELECT * FROM dbo.Sales


-- MINIMUM

SELECT MIN(PaymentMethod) [ Minimum Quantity] from dbo.Sales



SELECT StoreID, MIN(TotalAmount) [Minimum Total Amount #Store] from dbo.Sales GROUP BY StoreID



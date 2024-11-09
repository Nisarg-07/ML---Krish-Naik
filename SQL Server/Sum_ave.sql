SELECT * FROM DBO.Sales

-- SUM 

SELECT SUM(Quantity) [Total Quantity] FROM dbo.Sales
SELECT SUM(Quantity) [Total Quantity], SUM(TotalAmount) [Total Amount] FROM dbo.Sales


-- Avergae 
SELECT AVG(Quantity) [Average Quantity] FROM dbo.Sales
SELECT AVG(Quantity) [Average Quantity], AVG(TotalAmount) [Average Amount] FROM dbo.Sales

/* Question 

Find out the sum of the Quantity, total amount
Average of the Quantity, total amont for each product id
*/

SELECT * FROM dbo.Sales

SELECT ProductID, 
SUM(Quantity) [Total Quantity], SUM(TotalAmount) [Total Amount], 
AVG(Quantity) [Average Quantity], AVG(TotalAmount) [AVG Total Amount] 
from dbo.Sales GROUP BY ProductID


/* Question 

Find out the sum of the Quantity, total amount
Average of the Quantity, total amont for each product id and Store id 
*/

SELECT * FROM dbo.Sales

SELECT
ProductID, StoreID,
SUM(Quantity) [Total Quantity], SUM(TotalAmount) [Total Amount],
AVG(Quantity) [Avg Quantity], AVG(TotalAmount) [AVG Amount]
from dbo.Sales GROUP BY ProductID, StoreID


-- Count

SELECT count(*) FROM dbo.Sales


SELECT COUNT(PaymentMethod) [Number records in PaymentMethod ]from dbo.Sales

SELECT COUNT(distinct PaymentMethod) [Number distinct records in PaymentMethod ]from dbo.Sales

SELECT
PaymentMethod, 
count(distinct PaymentMethod) [Payment Mode]
FROM dbo.Sales GROUP BY PaymentMethod

SELECT
PaymentMethod, 
count(PaymentMethod) [Payment Mode]
FROM dbo.Sales GROUP BY PaymentMethod

SELECT
PaymentMethod, 
count(*) [Payment Mode]
FROM dbo.Sales GROUP BY PaymentMethod




-- Group by EXAMPLES 

SELECT * from dbo.Sales


SELECT PaymentMethod , sum(TotalAmount) [Total Sales] from dbo.Sales GROUP BY PaymentMethod


SELECT PaymentMethod, ProductID, SUM(TotalAmount) [Sales BY PaymentMethod and ProductID]
from dbo.Sales GROUP BY PaymentMethod, ProductID ORDER BY PaymentMethod

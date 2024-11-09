USE [SQL Questions Joins]
SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM Products

-- 1) Identify pairs of cutomers who lives in the same country

SELECT A.CustomerID,B.CustomerID,A.CustomerName,B.CustomerName,A.Country,'Lives in USA' Label 
FROM Customers [A] 
INNER JOIN Customers [B] 
ON A.Country = B.Country 
AND A.CustomerID <> B.CustomerID 
AND A.CustomerID>B.CustomerID

-- 2) Identify Customers who has spent most on thier orders
SELECT CustomerName,[Amount spent], DR FROM
(SELECT CustomerName, SUM(Price) [Amount spent], DENSE_RANK() OVER(order by SUM(Price) DESC) [DR]
FROM Customers [C] INNER JOIN Orders [O] ON C.CustomerID = O.CustomerID 
INNER JOIN Products [P] ON O.ProductID = P.ProductID
GROUP BY CustomerName) m WHERE DR=1 OR DR=2


-- 3) Identify Customers who have order more than one type of product 
SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM Products


SELECT CustomerName,COUNT(ProductID) [Number of order Products] FROM Customers [C] INNER JOIN Orders [O] 
ON C.CustomerID = O.CustomerID GROUP BY CustomerName HAVING COUNT(ProductID) >1


-- 4) List all the products and their corresponding orders, using right join, including the products that never has been ordered.

SELECT * FROM Orders
SELECT * FROM Products
SELECT P.ProductID, P.ProductName, O.OrderID, O.OrderDate FROM Orders [O] RIGHT JOIN Products [P] ON O.ProductID = P.ProductID

-- 5) Retrive all the orders placed by customers from USA

SELECT TOP 1 O.OrderID,O.OrderDate, C.CustomerName,O.ProductID FROM Customers [C] INNER JOIN Orders [O] ON C.CustomerID = O.CustomerID
 WHERE Country = 'USA'

-- TOP 1 P.ProductID, P.ProductName,
-- INNER JOIN Products [P] ON O.ProductID = P.ProductID

-- 6) Find customers who have ordered a product worth above $500

SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM Products

SELECT DISTINCT CustomerName, ProductName,Price FROM Customers [C] INNER JOIN Orders [O] ON C.CustomerID = O.CustomerID 
INNER JOIN Products [P] ON O.ProductID = P.ProductID Where Price>500

-- 7) Find the customer who have order same product more than once 
SELECT CustomerName,ProductID,Count(OrderID) FROM Customers [C] INNER JOIN Orders [O] ON C.CustomerID = O.CustomerID 
GROUP BY CustomerName,ProductID


SELECT CustomerName,Country
FROM Customers
GROUP BY Country,CustomerName






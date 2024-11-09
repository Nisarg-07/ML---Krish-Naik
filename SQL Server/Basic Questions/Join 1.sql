SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM Products

-- 1) Write SQL query to find the names of customers who have placed an order 
SELECT CustomerName FROM Customers [C] INNER JOIN Orders [O] ON C.CustomerID = O.CustomerID

-- 2) Find out about customers who have not placed any order?
SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM Products
SELECT distinct CustomerName FROM Customers [c] LEFT JOIN Orders [o] ON c.CustomerID = o.CustomerID WHERE o.OrderID is NULL

-- 3) List all the orders with product Name and price 

SELECT Distinct ProductName,Price FROM Orders [O] INNER JOIN Products [P] ON O.ProductID = P.ProductID

-- 4) Find the Name of the customers and thier orders, including customer's who have not placed any order.
SELECT Distinct CustomerName,OrderID FROM Customers [C] LEFT JOIN Orders [O] ON C.CustomerID = O.CustomerID

-- 5) Retrive the name of the products that have never been order

SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM Products
SELECT ProductName FROM Products [P] LEFT JOIN Orders [O] ON P.ProductID = O.ProductID WHERE OrderID is NULL


-- 6) Find the total number of orders placed by each customers

SELECT CustomerName,Count(OrderID) [Placed Orders ]FROM Customers [C] LEFT JOIN Orders [O] ON C.CustomerID = O.CustomerID
GROUP BY CustomerName ORDER by [Placed Orders ] DESC

-- 7) Displays the customers, the Products they've ordered, and the order date. Including customer's who haven't placed any order 

SELECT CustomerName,ProductName,OrderDate 
FROM Customers [C] LEFT JOIN Orders [O] ON C.CustomerID = O.CustomerID 
LEFT JOIN Products [P] ON O.ProductID =P.ProductID
ORDER BY OrderDate
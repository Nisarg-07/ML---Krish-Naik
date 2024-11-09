SELECT *
FROM dbo.ProfitData

--) Lag - Is used to show the previous ovservation 

--) E.G. Add a new column which will show the profit of the previous month for each product

SELECT *,
LAG(Profit) OVER(PARTITION BY product ORDER BY MonthNumber) [Last Month's Profit]
FROM dbo.ProfitData

--) Only include MonthNumber, MonthName and total Profit in OP
--) New column with Previous Total Profit 

SELECT MonthNumber,MonthName, SUM(Profit) [Total Profit],
LAG(SUM(Profit)) Over(ORDER BY MonthNumber) [Previous Total Profit]
FROM dbo.ProfitData
GROUP BY MonthNumber,MonthName


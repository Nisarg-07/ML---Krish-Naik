SELECT *
FROM dbo.ProfitData

--) Lead Func

SELECT *, LEAD(Profit) OVER(PARTITION BY Product ORDER BY MonthNumber) [Next Month's Profit]
FROM dbo.ProfitData


--) WE don't want the product colummn in the output but we want the sum of the total profit by monthNumber and MonthName coulumn
--) Create a new column which will show the profit for the next month 

SELECT MonthNumber,MonthName,SUM(Profit) [Total Profit],
LEAD(SUM(Profit)) OVER(ORDER BY MonthNumber ) [Next Month's Profit]
FROM dbo.ProfitData
GROUP BY MonthNumber,MonthName
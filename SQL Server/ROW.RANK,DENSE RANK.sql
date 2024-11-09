

SELECT * 
FROM dbo.Students
ORDER BY marks DESC

--) ROW NUMBER - In case of tie raw number will be assigned randomly
--) Rank Number [Rank will be skipped if there is repeatative entry]  

SELECT *, ROW_NUMBER() OVER(ORDER BY marks DESC) [ROW NUMBER]---, RANK() OVER( ORDER BY marks DESC) [Rank Number]
FROM dbo.Students

--) DENSE Rank - In case of duplicate the rank won't be missed 

SELECT *, DENSE_RANK() OVER(ORDER BY marks DESC) [DENSE RANK]
FROM dbo.Students

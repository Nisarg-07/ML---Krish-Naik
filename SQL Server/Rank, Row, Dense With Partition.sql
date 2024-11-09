SELECT *
FROM dbo.Students


SELECT *, ROW_NUMBER() OVER(PARTITION BY subject ORDER BY marks DESC) [ROW NUMBER Marks DESC]
FROM dbo.Students

SELECT *, ROW_NUMBER() OVER(PARTITION BY student_name ORDER BY marks DESC) [ROW NUMBER Marks DESC]
FROM dbo.Students

--) RANK

SELECT * , RANK() OVER(PARTITION BY student_name ORDER BY Marks) [ Rank_marks]
FROM dbo.Students


SELECT * , RANK() OVER(PARTITION BY subject ORDER BY Marks) [ Rank_marks]
FROM dbo.Students

--) DENSE Rank 


SELECT * , DENSE_RANK() OVER(PARTITION BY student_name ORDER BY Marks) [ DENSE_Rank_marks]
FROM dbo.Students

SELECT * , DENSE_RANK() OVER(PARTITION BY subject ORDER BY Marks) [ DENSE_Rank_marks]
FROM dbo.Students

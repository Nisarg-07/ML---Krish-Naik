USE [Sales Database]

CREATE TABLE Table_1 (C1 int, C2 nvarchar(max))
INSERT INTO Table_1 VALUES(1,'A'),
(2,'B'),
(3,'C'),
(Null,'D'),
(7,'EA')


CREATE TABLE Table_2 (C1 int, C3 nvarchar(max))
INSERT INTO Table_2 VALUES(1,'CA'),
(1,'BB'),
(2,'CA'),
(Null,'D'),
(2,'EE')

INSERT INTO Table_2 VALUES(3,'XO'),
(4,'XO'),
(3,'BO')


SELECT * FROM dbo.Table_1

SELECT * FROM dbo.Table_2


-- Inner Join 

SELECT A.C1, A.C2,B.C3 FROM Table_1 [A] INNER JOIN Table_2 [B] on  A.C1 =B.C1


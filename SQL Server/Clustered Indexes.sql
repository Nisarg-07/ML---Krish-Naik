CREATE DATABASE Test_Index

USE Test_Index

CREATE Table Students (ID INT, Name Varchar(69), Age SmallInt, Gender Varchar(20))

SELECT * FROM dbo.Students

INSERT INTO Students VALUES
(1,'Nick',25,'M'),
(2,'Manav',21,'M'),
(3,'Avanee',25,'F'),
(4,'Bhargavi',25,'F'),
(5,'Vraj',25,'M')

SELECT * FROM dbo.Students

CREATE CLUSTERED INDEX IX_11 ON dbo.Students(ID DESC)
-- The Table should not have two clustered indexs it should only have one clustered index 

DROP INDEX IX_11 ON dbo.Students

CREATE CLUSTERED INDEX IX_12 ON dbo.Students(Gender DESC, Age DESC)


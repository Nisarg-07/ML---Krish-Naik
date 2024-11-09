CREATE DATABASE Constraints 

USE [Constraints]

-- Not NUll COnstraint 

-- Case 1    Create a new table 

Create table test_not_null(
    EiD INT not NULL,
    Age TINYINT,
    Ename VARCHAR(200)
)

INSERT Into test_not_null VALUES(1,21,'Nick')
INSERT Into test_not_null VALUES(1,21,'Nick')
INSERT Into test_not_null VALUES(Null,21,'Nick')
INSERT Into test_not_null VALUES(3,NUll,'Nick')

SELECT * FROM test_not_null


-- Case 2 If the Table exists 

ALTER TABLE test_not_null
ALTER COLUMN Ename Varchar(256) NOT NULL

INSERT Into test_not_null VALUES(3,NUll,NULL)
INSERT Into test_not_null VALUES(4,NUll,'Nick')
SELECT * FROM test_not_null


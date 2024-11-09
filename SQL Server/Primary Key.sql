-- PRIMARY KEY 
-- Will Not allow Nulls, duplicate
-- Case 1 : NEW TABLE
CREATE TABLE Test_PK1(
    Eid INT PRIMARY KEY,
    Gender CHAR(1),
    Age TINYINT,
    FirstName Varchar(256)
)

Select * FROM Test_PK1

INSERT INTO Test_PK1 VALUES (1,'M',20,'Nick')
INSERT INTO Test_PK1 VALUES (1,'F',21,'Ava')


-- CASE 2 : The Table already Exists

ALTER TABLE Test_PK1
DROP CONSTRAINT PK_Test_PK1_C1971B5350444700;

ALTER Table Test_PK1
add PRIMARY KEY (Age)

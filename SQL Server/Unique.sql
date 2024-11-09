-- UNIQUE Constraint

-- It make sure that the columns consist of unique entries 


--- Case 1 :- We need to create the table

CREATE TABLE test_unique(
    Sid INT UNIQUE,
    Age TINYINT NOT NULL,
    FirstName Varchar(256) NOT NULL UNIQUE,
    LastName Varchar(256)
)

SELECT * FROM test_unique

INSERT INTO test_unique VALUES(1,21,'Nisarg','Patel')
INSERT INTO test_unique VALUES(2,18,'Manav','Patl')
INSERT INTO test_unique VALUES(3,20,NULL,'Patel')
INSERT INTO test_unique VALUES(3,20,'Akshar',NULL)




-- Case 2 :- The Table already Exists

TRUNCATE TABLE test_unique
ALTER TABLE test_unique
ADD UNIQUE (LastName)




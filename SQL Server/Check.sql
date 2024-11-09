-- Check Constraint
-- It checks for certain conditions that is applied on the column of the table, if the condition fails, 
-- it will not allow us to insert the records into the table

 -- Case 1 : Create table 
CREATE TABLE test_check(
    Eid int,
    Age TINYINT CHECK(Age>=10),
    EmpName VARCHAR(256),
)

SELECT * FROM test_check
Insert Into test_check VALUES(1,12,'Nick')
Insert Into test_check VALUES(10,91,'Manav')


UPDATE test_check SET Eid = 10 WHERE Eid = 1

 -- Case 2 : Table already Exists
TRUNCATE Table test_check
 ALTER TABLE test_check
 ADD CHECK (Eid>5)

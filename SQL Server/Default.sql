-- Default Constraint 
-- This constraint is used to provide the default value to the column

-- Case 1 The table does not exists
Create TABLE test_default(
    Eid int DEFAULT(3),
    Age TINYINT DEFAULT(18),
    FirstName Varchar(256),
    LastName Varchar(256)
)

SELECT * FROM test_default

Insert Into test_default values (1,21,'Nisarg','Patel')
INSERT into test_default(FirstName,LastName) VALUES('Manav','Patel')
INSERT into test_default(FirstName,LastName) VALUES('Manav','Patel')

-- Case 2 The table exist 
Alter TABLE test_default
Add DEFAULT 'Patel' for LastName
INSERT into test_default(FirstName) VALUES('Mathuro')

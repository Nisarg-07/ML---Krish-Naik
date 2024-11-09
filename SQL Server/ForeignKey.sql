-- Foreign Key Constrains

-- Case 1 When the table has to be created 
CREATE Table Test_PrimaryKey(
    Eid int PRIMARY Key,
    EmpName VARCHAR(256)
)

INSERT INTO Test_PrimaryKey VALUES(1,'Nisarg'),
(2,'Manav'),
(3,'Akshar')

SELECT * FROM Test_PrimaryKey

CREATE TABLE Test_ForeignKey(
    Eid INT FOREIGN KEY REFERENCES Test_PrimaryKey(Eid),
    CourseName VARCHAR(256)
)

INSERT INTO Test_ForeignKey VALUES(1,'A'),
(NULL,'B')

INSERT INTO Test_ForeignKey Values(5,'C')

SELECT * FROM Test_ForeignKey

CREATE TABLE Test_ForeignKey1(Eid int, course varchar(250))
-- Case 2 Table exists

ALTER TABLE Test_ForeignKey1
Add FOREIGN Key (Eid) REFERENCES Test_PrimaryKey(Eid)
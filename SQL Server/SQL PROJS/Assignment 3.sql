-- Write a SQL query to find the names of employees whose first names start with the letter 'J'.

SELECT FirstName, LastName
FROM dbo.Employees
WHERE FirstName 
LIKE 'J%'

--2) Write a SQL query to find the names of employees whose last names end with the letter 'n'.
SELECT *
FROM dbo.Employees

SELECT FirstName, LastName
FROM dbo.Employees
WHERE LastName
LIKE '%n'

--3) Write a SQL query to find the email addresses of employees that contain the word "john".

SELECT *
FROM dbo.Employees


SELECT Email
FROM dbo.Employees
WHERE Email LIKE '%john%'

--4) Write a SQL query to find the names of employees whose first names have exactly 5 characters.
SELECT *
FROM dbo.Employees

SELECT FirstName, LastName
FROM dbo.Employees
WHERE FirstName LIKE '_____'

--5) Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.

SELECT *
FROM dbo.Employees

SELECT FirstName, LastName
FROM dbo.Employees
WHERE LastName Like '_a%'
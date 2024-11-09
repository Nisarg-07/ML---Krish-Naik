-- 1) Find the Employees whose LastName Starts with S
SELECT * FROM dbo.Employees_US

SELECT * FROM dbo.Employees_US WHERE LastName LIKE 's%'


-- 2) Find The Employees Whose FirstName ends with the A.
SELECT * FROM Employees_US WHERE FirstName LIKE '%y'


-- 3) Find the Employeed Whose Department contains 'ENG'
SELECT * FROM Employees_US WHERE Department LIKE '%ENG%'

-- 4) Find an Employee whose Last name is exatly 5 characters long 

SELECT * FROM EMPLOYEES_US WHERE LastName Like '______'

--5) Find an Employee Whose first name starts with either N or M

SELECT * FROM Employees_US WHERE FirstName Like '[CD]%'

--6) Find Employee Whose FirstName Contains reet

SELECT * FROM Employees_US WHERE FirstName like '%re%'

--7 Find Employee Whose name contains 'i' as a second Character

SELECT * FROM Employees_US WHERE FirstName like '_H%'

-- 8) Find the Employees Whose LastName Starts with any Character Between A and O

SELECT * FROM Employees_US WHERE FirstName like '[a-n]%'

-- 9) Find the Employees Whose FirstName doesnot contain 'n'

SELECT * FROM Employees_US WHERE FirstName NOT LIKE '%n%'

-- 10) Find the Employees Whose Last name Ends with A and has exact 6 Characters 

SELECT * FROM Employees_US WHERE LastName Like '_____a'

-- 11) Find the Employees Whose Department Starts with "ENG" and ends with "ing"

SELECT * FROM Employees_US WHERE Department Like 'ENG%ing'

-- 12) Find the Employees whose LastName has "T" in the third position 
SELECT * FROM Employees_US Where LastName LIKE '__y%'

-- 13) Find the Employees Whose FirstName Starts with either "NI" OR 'SH
SELECT * FROM Employees_US WHERE FirstName Like 'NI%' OR FirstName LIKE 'SH%'


-- 14) Find The employees whose FirstName starts with any vowel
SELECT * FROM Employees_US WHERE FirstName Like '[AEIOU]%'

-- 15) Find the Employees Whose FirstName Doesnot starts with consonant

SELECT * FROM Employees_US WHERE FirstName NOT Like '[^AEIOU]%'

-- 16) Find the Employees Whose FirstName only starts with consonant

SELECT * FROM Employees_US WHERE FirstName Like '[^AEIOU]%'
SELECT *
FROM dbo.Customers


--) Isnull - is the 1st overservation is null it will return 2nd entry else the 1st
SELECT Isnull(1,Null)
SELECT ISNULL(null, NUll)

-- Coleasce - it will return first non null entry

SELECT COALESCE(NUll,NULL, 'Nick') [1st Non Null Value]


--) Table

--) Isnull
SELECT *
FROM dbo.Customers

SELECT FirstName,isnull(Email,'Email NA') [Email], ISNULL(PhoneNumber,'Ph.No. NA')[PhoneNumber]
FROM dbo.customers

--) Coleasce 

SELECT FirstName, COALESCE(Email,PhoneNumber,'Contact NA') [ COALESCE Function]
FROM dbo.Customers


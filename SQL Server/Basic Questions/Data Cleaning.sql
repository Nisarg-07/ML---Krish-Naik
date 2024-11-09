CREATE DATABASE [SQl PROJ 1]

SELECT * FROM dbo.layoffs

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'layoffs'

-- 1) Remove the Duplicates 
-- 2) Standardize the Dataset
-- 3) Null Values or Blank values
-- 4) Feature Engineering 

SELECT TOP 0 * INTO LayoffsStagging FROM Layoffs

SELECT * FROM LayoffsStagging
INSERT LaysoffsStagging 

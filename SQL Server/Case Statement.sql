
SELECT * FROM dbo.Products

-- Example 1: Add a Coulumn to categorize each column into high, medium and low categpry 

SELECT *, 
CASE
    WHEN Price>500 then 'High'
    WHEN Price <500 and Price>200 then 'Medium'
    ELSE 'Low'
END AS Categories 
FROM dbo.Products

-- Example 2: Provide Category to each category and sort the data accoring to that priority

SELECT * FROM Products
ORDER BY 
Case
    When Category in ('Electronics') then 0
    When Category in ('Furniture') then 2
    else 3
END

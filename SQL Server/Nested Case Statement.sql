SELECT * FROM Products

-- Group the Data based on the columns Category and price into different categories that is Affordable and Premimum 

SELECT *,
CASE
    WHEN Category = 'Electronics' THEN
        CASE
        WHEN Price>=300 THEN 'Premimum Electronics'
        ELSE 'Affordable Electronics'
        END
    
    WHEN Category = 'Furniture' THEN
        CASE
        WHEN Price>=250 THEN 'Premimum Furniture'
        ELSE 'Affordable Furniture'
        END
ELSE
        CASE
        WHEN Price>=25 THEN 'Premimum Accessories'
        ELSE 'Affordable Accesories'
        END
END as [Budget Groups]
FROM dbo.Products

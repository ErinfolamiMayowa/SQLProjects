-- CTE
WITH Salesperson AS (
      
	  SELECT A.BusinessEntityID,
	         FirstName + ' ' + LastName AS FullName,
	         CommissionPct
	  FROM [Sales].[SalesPerson] AS A
	  INNER JOIN [Person].[Person] AS B
	  ON A.BusinessEntityID = B.BusinessEntityID
	  WHERE [SalesQuota] IS NOT NULL
)

SELECT 
      SUM([SubTotal]) AS Sales,
	  SUM([SubTotal]) * CommissionPct AS Commission
FROM [Sales].[SalesOrderHeader] AS A
INNER JOIN Salesperson AS B
ON B.BusinessEntityID = A.SalesPersonID
WHERE YEAR([OrderDate]) = 2014 
GROUP BY CommissionPct
 
-- CREATING VIEW

CREATE VIEW Product_Catalog AS
SELECT PP.[ProductID],
       PP.[ProductNumber],
	   PP.[Name] AS Product,PP.[Color],
	  ISNULL(PP.[Size], '') AS Size,
	   PP.[StandardCost],
	   PPSC.[Name] AS ProductSubCat,PPC.[Name] AS ProductCat
FROM [Production].[Product] AS PP
INNER JOIN [Production].[ProductSubcategory] AS PPSC
ON PP.ProductSubcategoryID = PPSC.ProductSubcategoryID
INNER JOIN [Production].[ProductCategory] AS PPC
ON PPC.ProductCategoryID = PPSC.ProductCategoryID





SELECT * FROM [dbo].[Product_Catalog]
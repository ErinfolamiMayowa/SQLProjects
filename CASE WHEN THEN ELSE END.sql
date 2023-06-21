SELECT [ProductNumber],[Name],[ProductLine],[MakeFlag],[DiscontinuedDate],
      CASE [ProductLine]
	        WHEN 'R' THEN 'Road'
			WHEN 'S' THEN 'Standard'
			WHEN 'M' THEN 'Mountain'
			WHEN 'T' THEN 'Touring'
	  END
FROM [Production].[Product]


SELECT [ProductNumber],[Name],[ProductLine],[MakeFlag],[DiscontinuedDate],
      CASE [ProductLine]
	        WHEN 'R' THEN 'Road'
			WHEN 'S' THEN 'Standard'
			WHEN 'M' THEN 'Mountain'
			WHEN 'T' THEN 'Touring'
			ELSE 'N/A'
	  END
FROM [Production].[Product]




SELECT [ProductNumber],[Name],[ProductLine],[MakeFlag],[DiscontinuedDate],
      CASE [ProductLine]
	        WHEN 'R' THEN 'Road'
			WHEN 'S' THEN 'Standard'
			WHEN 'M' THEN 'Mountain'
			WHEN 'T' THEN 'Touring'
			ELSE 'N/A'
	  END AS PRODUCTLINE,
	  CASE [MakeFlag]
	       WHEN 1 THEN 'Manufactured In-House'
		   ELSE 'Purchased'
     END AS MAKEFLAG
FROM [Production].[Product]



SELECT [ProductNumber],[Name],[DiscontinuedDate],
      CASE [ProductLine]
	        WHEN 'R' THEN 'Road'
			WHEN 'S' THEN 'Standard'
			WHEN 'M' THEN 'Mountain'
			WHEN 'T' THEN 'Touring'
			ELSE 'N/A'
	  END AS PRODUCTLINE,
	  CASE [MakeFlag]
	       WHEN 1 THEN 'Manufactured In-House'
		   ELSE 'Purchased'
     END AS MAKEFLAG
FROM [Production].[Product]




SELECT [SalesOrderID],[OrderQty],
       CASE 
	       WHEN [OrderQty] BETWEEN 0 AND 9 THEN 'Under 10' 
	       WHEN [OrderQty] BETWEEN 10 AND 19  THEN 'Under 20'
		   WHEN [OrderQty] BETWEEN 20 AND 29  THEN 'Under 30'
		   WHEN [OrderQty] BETWEEN 30 AND 39  THEN 'Under 40'
		   ELSE 'ABOVE'
       END AS QTYRANGE
FROM [Sales].[SalesOrderDetail]
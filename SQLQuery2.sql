--//Cleansed DIM_Customers table
SELECT 
	c.CustomerKey As CustomerKey,
    --,[GeographyKey]
    --,[CustomerAlternateKey]
    --,[Title]
    c.FirstName As [FirstName],
    --,[MiddleName]
    c.LastName As [LastName],
	c.firstname + ' ' + lastname As [FullName],
    --//Combined the first name and last name
	--,[NameStyle]
    --,[BirthDate]
    --,[MaritalStatus]
    --,[Suffix]
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END As Gender,
    --,[EmailAddress]
    --,[YearlyIncome]
    --,[TotalChildren]
    --,[NumberChildrenAtHome]
    --,[EnglishEducation]
    --,[SpanishEducation]
    --,[FrenchEducation]
    --,[EnglishOccupation]
    --,[SpanishOccupation]
    --,[FrenchOccupation]
    --,[HouseOwnerFlag]
    --,[NumberCarsOwned]
    --,[AddressLine1]
    --,[AddressLine2]
    --,[Phone]
    c.DateFirstPurchase As [DateFirstPurchase],
    --,[CommuteDistance]
	g.city As [CustomerCity]--//Joined customer city from geography table
  FROM dbo.DimCustomer As c
  LEFT JOIN dbo.DimGeography As g ON g.GeographyKey= c.GeographyKey
  ORDER BY CustomerKey ASC--//Ordered the list by customer key

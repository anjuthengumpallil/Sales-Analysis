--//Cleansed DIM_Product Table
SELECT
	p.[ProductKey],
    p.[ProductAlternateKey] As ProductItemCode,
    --,[ProductSubcategoryKey]
    --,[WeightUnitMeasureCode]
    --,[SizeUnitMeasureCode]
    p.[EnglishProductName] As ProductName,
	ps.EnglishProductSubCategoryName As [SubCategory],
	pc.EnglishProductCategoryName As [Category],
    --[SpanishProductName]
    --[FrenchProductName]
    --[StandardCost]
    --,[FinishedGoodsFlag]
    p.[Color] As [Product Colour],
    --,[SafetyStockLevel]
    --,[ReorderPoint]
    --,[ListPrice]
    p.[Size] As [Product Size],
    --,[SizeRange]
    --,[Weight]
    --,[DaysToManufacture]
    p.[ProductLine] As [Product Line],
    --,[DealerPrice]
    --,[Class]
    --,[Style]
    p.[ModelName] As [Product Model Name],
    --,[LargePhoto]
    p.[EnglishDescription] As [Product Description],
    --,[FrenchDescription]
    --,[ChineseDescription]
    --,[ArabicDescription]
    --,[HebrewDescription]
    --,[ThaiDescription]
    --,[GermanDescription]
    --,[JapaneseDescription]
    --,[TurkishDescription]
    --,[StartDate]
    --,[EndDate]
    --,[Status]
  ISNULL (p.Status, 'Outdated ') As [Product Status]
  FROM [dbo].[DimProduct] As p
  LEFT JOIN dbo.DimProductSubcategory As ps ON ps.ProductSubcategoryKey= p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory As pc ON pc.ProductCategoryKey=ps.ProductCategoryKey

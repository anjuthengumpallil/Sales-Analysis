--Cleansed DIM_date table--
SELECT 
	[DateKey],
    [FullDateAlternateKey] as Date,
    --,[DayNumberOfWeek]
    [EnglishDayNameOfWeek] as Day,
    --,[SpanishDayNameOfWeek]
    --,[FrenchDayNameOfWeek]
    --,[DayNumberOfMonth]
    --[DayNumberOfYear],
    [WeekNumberOfYear] As Weeknumber,
    --[EnglishMonthName] As Month,
	LEFT([EnglishMonthName],3) As MonthShort,
    --,[SpanishMonthName]
    --,[FrenchMonthName]
    [MonthNumberOfYear] As Monthnumber,
    [CalendarQuarter] As Quarter,
    [CalendarYear] As Year
    --,[CalendarSemester]
    --,[FiscalQuarter]
    --,[FiscalYear]
    --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear>=2010
  SELECT DISTINCT [CalendarYear]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]


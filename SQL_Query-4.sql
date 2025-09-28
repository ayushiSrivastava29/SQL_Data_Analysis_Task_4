--Using Aggregate Functions like (SUM, AVG, MAX, MIN, COUNT)

-- Total Sales across all states
SELECT SUM(Total_Sales) AS TotalCompanySales
FROM [Adidas_US Sales Datasets1];

-- Average Operating Profit
SELECT AVG(Operating_Profit) AS AvgProfit
FROM [Adidas_US Sales Datasets1]

-- Count unique products
SELECT COUNT(DISTINCT Product) AS UniqueProducts
FROM [Adidas_US Sales Datasets1]

-- Max sales by any retailer
SELECT MAX(Total_Sales) AS MaxSales
FROM [Adidas_US Sales Datasets1]

--Min sales by any retailer
SELECT MIN(Total_Sales) AS MinSales
FROM [Adidas_US Sales Datasets1]

-- Creating Views For Analysis

-- Create a view for sales by region
CREATE VIEW Sales_ByRegion AS
	SELECT Region, SUM(Total_Sales) AS TotalSales, AVG(Operating_Profit) AS AvgProfit
	FROM [Adidas_US Sales Datasets1]
	GROUP BY Region;

-- Use the view
SELECT * FROM Sales_ByRegion;

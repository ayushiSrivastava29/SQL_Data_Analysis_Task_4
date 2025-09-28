-- Using Subqueries 
SELECT Retailer, Total_Sales
FROM [Adidas_US Sales Datasets1]
WHERE Total_Sales > (SELECT AVG(Total_Sales) FROM [Adidas_US Sales Datasets1])

--Selecting Product with maximum units sold
SELECT Product, Units_Sold
FROM [Adidas_US Sales Datasets1]
WHERE Units_Sold = (SELECT MAX(Units_Sold) FROM [Adidas_US Sales Datasets1])
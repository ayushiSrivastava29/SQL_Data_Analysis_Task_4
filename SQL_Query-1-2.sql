--Using clauses like WHERE, HAVING, ORDER BY, GROUP BY

--Using WHERE with AND operator
select Retailer_ID, Product, State, City, Region, Total_Sales
from [Adidas_US Sales Datasets1]
where State='Washington' AND Total_Sales>400000;

select Retailer_ID, Product, State, City, Region, Total_Sales
from [Adidas_US Sales Datasets1]
where City='Las Vegas' AND Total_Sales>400000;

--Using ORDER BY
select Retailer, Product, Total_Sales
From [Adidas_US Sales Datasets1]
ORDER BY Total_Sales DESC;

--Using GROUP BY 
SELECT State, SUM(Total_Sales) AS Region_Sales
FROM [Adidas_US Sales Datasets1]
GROUP BY State
Having SUM(Total_Sales)>2500000
--Using Joins(INNER, LEFT, RIGHT)

-- Create RetailerInfo table
CREATE TABLE RetailerInfo (
    Retailer_ID INT PRIMARY KEY,
    Retailer_Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(100),
    Region VARCHAR(50),
    State VARCHAR(50),
    City VARCHAR(50)
);

ALTER TABLE [Adidas_US Sales Datasets1]
ADD CONSTRAINT FK_Adidas_Retailer
FOREIGN KEY (Retailer_ID) REFERENCES RetailerInfo(Retailer_ID);

INSERT INTO RetailerInfo (Retailer_ID, Retailer_Name)
VALUES (6, 'Unknown Retailer'); 

INSERT INTO RetailerInfo (Retailer_ID, Retailer_Name, Contact, Region, State, City)
VALUES
(1185735, 'Walmart', 'contact@walmart.com', 'East', 'Florida', 'Miami'),
(1189233, 'Target', 'contact@target.com', 'West', 'California', 'Los Angeles'),
(1197631, 'BestBuy', 'contact@bestbuy.com', 'North', 'New York', 'New York City'),
(1138299, 'Nike Store', 'contact@nike.com', 'South', 'Texas', 'Houston'),
(1185632, 'Adidas Store', 'contact@adidas.com', 'East', 'Florida', 'Orlando');

--Inner Join
SELECT s.Retailer_ID, r.Retailer_Name, s.Product, s.Units_Sold, s.Total_Sales
FROM [Adidas_US Sales Datasets1] AS s
INNER JOIN RetailerInfo AS r
ON s.Retailer_ID = r.Retailer_ID;

--Left Join
SELECT s.Retailer_ID, r.Retailer_Name, s.Product, s.Units_Sold, s.Total_Sales
FROM [Adidas_US Sales Datasets1] AS s
LEFT JOIN RetailerInfo AS r
ON s.Retailer_ID = r.Retailer_ID

--Right join
SELECT s.Retailer_ID, r.Retailer_Name, s.Product, s.Units_Sold, s.Total_Sales
FROM [Adidas_US Sales Datasets1] AS s
RIGHT JOIN RetailerInfo AS r
ON s.Retailer_ID = r.Retailer_ID;
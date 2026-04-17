CREATE DATABASE sales_project;
USE sales_project;

CREATE TABLE sales (
    OrderID INT,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Price INT,
    OrderDate DATE
);

INSERT INTO sales VALUES
(1, 'Laptop', 'Electronics', 50000, '2024-01-10'),
(2, 'Phone', 'Electronics', 20000, '2024-01-12'),
(3, 'Shirt', 'Clothing', 1500, '2024-01-15'),
(4, 'Laptop', 'Electronics', 52000, '2024-02-01'),
(5, 'Shoes', 'Footwear', 3000, '2024-02-05'),
(6, 'Phone', 'Electronics', 21000, '2024-02-10');

SELECT SUM(Price) AS Total_Revenue FROM sales;

SELECT Product, SUM(Price) AS Total_Sales
FROM sales
GROUP BY Product;

SELECT Category, SUM(Price) AS Total_Sales
FROM sales
GROUP BY Category;

SELECT MONTH(OrderDate) AS Month, SUM(Price) AS Total_Sales
FROM sales
GROUP BY MONTH(OrderDate);
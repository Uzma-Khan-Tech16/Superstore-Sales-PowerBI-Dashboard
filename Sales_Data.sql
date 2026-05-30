create database sales_project;
use sales_project;
SELECT * FROM superstore_sales LIMIT 5;

SELECT 
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS net_profit_margin_pct
FROM superstore_sales;

SELECT 
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY sub_category
HAVING total_profit < 0
ORDER BY total_profit ASC;

SELECT 
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS regional_margin_pct
FROM superstore_sales
GROUP BY region
ORDER BY total_sales DESC;
SELECT COUNT(*) AS total_orders FROM sales_data;

SELECT 
    MIN(order_date) AS start_date,
    MAX(order_date) AS end_date
FROM sales_data;

SELECT
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data;

SELECT
    year,
    month,
    ROUND(SUM(sales),2) AS monthly_sales
FROM sales_data
GROUP BY year, month,
ORDER BY year;

SELECT
    region,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

SELECT
    category,
    sub_category,
    ROUND(SUM(sales),2) AS sales,
    ROUND(SUM(profit),2) AS profit
FROM sales_data
GROUP BY category, sub_category
ORDER BY sales DESC;

SELECT
    sub_category,
    ROUND(SUM(sales),2) AS revenue
FROM sales_data
GROUP BY sub_category
ORDER BY revenue DESC
LIMIT 10;

SELECT
    customer_id,
    ROUND(SUM(sales),2) AS customer_sales
FROM sales_data
GROUP BY customer_id
HAVING SUM(sales) > 10000
ORDER BY customer_sales DESC;



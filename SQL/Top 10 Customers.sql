SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;
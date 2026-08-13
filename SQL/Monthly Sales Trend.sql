SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY month
ORDER BY month;
SELECT
    region,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY region
ORDER BY total_sales DESC;
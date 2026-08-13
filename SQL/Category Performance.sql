SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0)) * 100, 2) AS profit_margin_percentage
FROM retail_sales
GROUP BY category
ORDER BY profit_margin_percentage DESC;
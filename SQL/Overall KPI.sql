SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(sales) AS average_sales,
    SUM(quantity) AS total_quantity_sold
FROM retail_sales;
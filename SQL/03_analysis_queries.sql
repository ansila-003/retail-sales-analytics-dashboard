SELECT COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales;

SELECT SUM(sales) AS total_sales
FROM retail_sales;

SELECT SUM(profit) AS total_profit
FROM retail_sales;

SELECT AVG(sales) AS average_sales
FROM retail_sales;

SELECT SUM(quantity) AS total_quantity
FROM retail_sales;

SELECT
    category,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;

SELECT
    category,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY category
ORDER BY total_profit DESC;

SELECT
    region,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY region
ORDER BY total_sales DESC;

SELECT
    region,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY region
ORDER BY total_profit DESC;

SELECT
    product_name,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY month
ORDER BY month;

SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY month
ORDER BY month;

SELECT
    category,
    region,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category, region
ORDER BY total_sales DESC;

SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY payment_method
ORDER BY total_sales DESC;

SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY gender
ORDER BY total_sales DESC;

SELECT
    category,
    AVG(discount) AS average_discount,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category
ORDER BY average_discount DESC;

SELECT
    category,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category
HAVING SUM(sales) > 50000
ORDER BY total_sales DESC;

SELECT
    order_id,
    sales,
    CASE
        WHEN sales >= 1000 THEN 'High'
        WHEN sales >= 500 THEN 'Medium'
        ELSE 'Low'
    END AS sales_category
FROM retail_sales;

SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0)) * 100, 2) AS profit_margin_percentage
FROM retail_sales
GROUP BY category
ORDER BY profit_margin_percentage DESC;

SELECT
    COUNT(*) AS total_rows,
    COUNT(order_id) AS order_id_count,
    COUNT(order_date) AS order_date_count,
    COUNT(customer_id) AS customer_id_count,
    COUNT(customer_name) AS customer_name_count,
    COUNT(product_id) AS product_id_count,
    COUNT(product_name) AS product_name_count,
    COUNT(category) AS category_count,
    COUNT(sales) AS sales_count,
    COUNT(profit) AS profit_count
FROM retail_sales;

SELECT
    order_id,
    COUNT(*) AS duplicate_count
FROM retail_sales
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM retail_sales;

SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(sales) AS average_sales,
    SUM(quantity) AS total_quantity_sold
FROM retail_sales;
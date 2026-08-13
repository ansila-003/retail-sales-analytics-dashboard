CREATE TABLE retail_sales (
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    gender VARCHAR(20),
    age INT,
    city VARCHAR(100),
    state VARCHAR(100),
    region VARCHAR(50),
    product_id VARCHAR(50),
    product_name VARCHAR(150),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    quantity INT,
    unit_price NUMERIC(12,2),
    discount NUMERIC(5,2),
    sales NUMERIC(12,2),
    profit NUMERIC(12,2),
    payment_method VARCHAR(50)
);

SELECT COUNT(*) AS total_rows
FROM retail_sales;

SELECT *
FROM retail_sales
LIMIT 10;


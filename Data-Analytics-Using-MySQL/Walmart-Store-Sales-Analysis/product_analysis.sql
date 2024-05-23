-- 1. How many unique product lines does the data have?
SELECT 
	COUNT(DISTINCT(product_line)) AS num_product_line
FROM sales;


-- 2. what is the most common payment method?
SELECT 
	payment, 
    COUNT(payment) AS total_payment_method
FROM sales
GROUP BY payment;


-- 3. what is the most selling product line?
SELECT 
	product_line, 
    SUM(quantity) AS total_products_sold
FROM sales
GROUP BY product_line
ORDER BY total_products_sold DESC;



-- 4. What is the total revenue by month?
SELECT
	month_name,
	ROUND(SUM(total), 2) AS total_revenue
FROM sales
GROUP BY month_name
ORDER BY total_revenue DESC;


-- 5. What month had the largest COGS?
SELECT
	month_name,
	SUM(cogs) AS total_cogs
FROM sales
GROUP BY month_name
ORDER BY total_cogs DESC;


-- 6. what product had the largest revenue?
SELECT 
	product_line,
    ROUND(SUM(total),2) AS total_product_line_revenue
FROM sales
GROUP BY product_line
ORDER BY total_product_line_revenue DESC;


-- 7. What is the city with the largest revenue?
SELECT 
	city,
    ROUND(SUM(total),2) AS total_city_revenue
FROM sales
GROUP BY city
ORDER BY total_city_revenue DESC;


-- 8. What product line had the largest value-added tax?
SELECT
	product_line,
    ROUND(avg(tax_pct),2) avg_tax
FROM sales
GROUP BY product_line
ORDER BY avg_tax DESC;


--  9. Which branch sold more products than average product sold?
SELECT
	branch,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY branch
HAVING total_quantity > AVG(quantity);


-- 10. What is the most common product line by gender?
SELECT
	gender,
    product_line,
    COUNT(gender) AS total_cnt
FROM sales
GROUP BY gender, product_line
ORDER BY total_cnt DESC;


-- 11. What is the average rating of each product line?
SELECT 
	product_line,
    AVG(rating) AS avg_rating
FROM sales
GROUP BY product_line
ORDER BY avg_rating DESC;











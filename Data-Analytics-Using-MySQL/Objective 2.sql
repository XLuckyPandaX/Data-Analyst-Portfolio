-- OBJECTIVE 2: The objective is to explore the data in the order_details table 

-- 1. View the order_details table. 
SELECT * 
FROM order_details;

-- 2. What is the date range of the table?
SELECT 
	MIN(order_date), 
	MAX(order_date) 
FROM order_details;

-- 3. how many orders were made within this date range?
SELECT 
	COUNT(DISTINCT order_id) AS num_orders
FROM order_details;

-- 4. how many items were ordered within this date range?
SELECT 
	COUNT(*) 
FROM order_details;

-- 5. which orders had the most number of items?
SELECT 
	order_id,
    count(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;


-- How many orders had more than 12 items?
SELECT 
	COUNT(*) 

FROM (SELECT 
	order_id,
    count(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_orders;






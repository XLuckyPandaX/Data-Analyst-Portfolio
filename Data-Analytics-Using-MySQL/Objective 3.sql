-- OBJECTIVE 3: ANALYZE CUSTOMER BEHAVIOR 

-- 1. Combine the menu_items and orders_details into a single table

SELECT * 
FROM order_details od
LEFT JOIN menu_items mi 
	ON od.item_id = mi.menu_item_id;

-- 2. what is the most to least ordered items? What categories were they in?
SELECT 
	mi.item_name,
    mi.category,
	count(od.order_details_id) AS num_purchases
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name, mi.category
ORDER BY num_purchases DESC;

-- 3. What were the top 5 orders that spent the most money?
SELECT 
	od.order_id,
    SUM(mi.price) AS total_spend
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY od.order_id
ORDER BY total_spend DESC LIMIT 5;

-- 4. View the details of the highest spend order. 
SELECT 
	mi.category, 
    count(item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE od.order_id  = 440
GROUP BY mi.category;


-- 5. View the details of the top 5 highest spend orders. 
SELECT 
	od.order_id, 
    mi.category, 
    count(item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE od.order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY od.order_id, mi.category;

-- OBJECTIVE 1: The objective is to explore the data in the menu_items

-- 1. view the menu_items table. 
SELECT * FROM menu_items;

-- 2. Find the number of items on the menu.
 SELECT 
	COUNT(*) AS num_of_item
 FROM menu_items;

-- 3. How many italian dishes are on the menu? 
SELECT 
	count(*) AS  num_of_italian_dishes
FROM menu_items
WHERE category =  'Italian';

-- 4. What are the least and most expensive Italian dishes on the menu
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- 5. How many dishes are in each category? 
SELECT
	category,
	count(menu_item_id) AS num_dishes
FROM menu_items
GROUP by category;


-- 6. What is the average dish price within each category?
SELECT
	category,
    ROUND(AVG(price), 2) AS avg_category_price
FROM menu_items
GROUP by category;








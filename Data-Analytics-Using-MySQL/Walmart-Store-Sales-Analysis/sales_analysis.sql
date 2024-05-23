-- 1. What number of sales made in each time of the day per weekday?
SELECT
	time_of_day,
	COUNT(*) AS total_sales
FROM sales
WHERE day_name = "Sunday"
GROUP BY time_of_day 
ORDER BY total_sales DESC;


-- 2. Which of the customer types brings the most revenue?
SELECT
	customer_type,
    ROUND(SUM(total),2) AS total_customer_type_revenue0
FROM sales
GROUP BY customer_type;

-- 3. Which city has the largest tax percent?
SELECT
	city,
    ROUND(AVG(tax_pct), 2) AS avg_tax_pct
FROM sales
GROUP BY city 
ORDER BY avg_tax_pct DESC;

-- 4. Which customer type pays the most in VAT?
 SELECT
	customer_type,
	ROUND(AVG(tax_pct), 2) AS total_tax
FROM sales
GROUP BY customer_type
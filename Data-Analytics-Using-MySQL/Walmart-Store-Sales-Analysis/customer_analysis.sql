
-- 1. How many unique customer types does the data have?
SELECT 
	DISTINCT(customer_type) 
FROM sales;

-- 2. How many unique payments method does the data have?
SELECT
	DISTINCT(payment)
FROM sales;

-- 3. What is the most common customer type?
SELECT 
	customer_type,
    COUNT(*) AS count_customer
FROM sales
GROUP BY customer_type;

-- 4. Which customer type pays the most in VAT?
SELECT
	customer_type,
	AVG(tax_pct) AS total_tax
FROM sales
GROUP BY customer_type
ORDER BY total_tax;

-- 5. What is the gender distribution per branch?
SELECT
	branch,
	gender,
    COUNT(*) AS gender_count
FROM sales
GROUP BY branch, gender
ORDER BY branch, gender_count DESC;


-- 6. Which time of the day do customers give most ratings?
SELECT 
	time_of_day,
    count(*) count_rating
FROM sales
GROUP BY time_of_day;
    

-- 7. Which day of the week has the best avg rating?
SELECT
	day_name,
	AVG(rating) AS avg_rating
FROM sales
GROUP BY day_name 
ORDER BY avg_rating DESC;


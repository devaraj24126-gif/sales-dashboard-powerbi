-- =====================================================
-- CUSTOMER ANALYSIS
-- =====================================================

-- Orders by Gender
SELECT gender,
COUNT(*) total_orders
FROM retail_sales
GROUP BY gender;

-- Revenue by Gender
SELECT gender,
ROUND(SUM(amount),2) revenue
FROM retail_sales
GROUP BY gender;

-- Orders by Age Group
SELECT age_group,
COUNT(*) total_orders
FROM retail_sales
GROUP BY age_group
ORDER BY total_orders DESC;

-- Revenue by Age Group
SELECT age_group,
ROUND(SUM(amount),2) revenue
FROM retail_sales
GROUP BY age_group
ORDER BY revenue DESC;

-- Top 10 Customers
SELECT cust_id,
ROUND(SUM(amount),2) total_spent
FROM retail_sales
GROUP BY cust_id
ORDER BY total_spent DESC
FETCH FIRST 10 ROWS ONLY;

-- B2B vs B2C Orders
SELECT b2b,
COUNT(*) total_orders
FROM retail_sales
GROUP BY b2b;

-- B2B vs B2C Revenue
SELECT b2b,
ROUND(SUM(amount),2) revenue
FROM retail_sales
GROUP BY b2b;
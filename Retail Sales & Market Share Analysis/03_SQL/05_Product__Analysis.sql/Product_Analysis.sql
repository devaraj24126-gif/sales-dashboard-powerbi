-- =====================================================
-- PRODUCT ANALYSIS
-- =====================================================

-- Orders by Category
SELECT category,
COUNT(*) total_orders
FROM retail_sales
GROUP BY category
ORDER BY total_orders DESC;

-- Revenue by Category
SELECT category,
ROUND(SUM(amount),2) revenue
FROM retail_sales
GROUP BY category
ORDER BY revenue DESC;

-- Top 10 Products
SELECT sku,
COUNT(*) total_orders
FROM retail_sales
GROUP BY sku
ORDER BY total_orders DESC
FETCH FIRST 10 ROWS ONLY;

-- Top 10 Revenue Products
SELECT sku,
ROUND(SUM(amount),2) revenue
FROM retail_sales
GROUP BY sku
ORDER BY revenue DESC
FETCH FIRST 10 ROWS ONLY;

-- Popular Sizes
SELECT size_name,
COUNT(*) total_orders
FROM retail_sales
GROUP BY size_name
ORDER BY total_orders DESC;
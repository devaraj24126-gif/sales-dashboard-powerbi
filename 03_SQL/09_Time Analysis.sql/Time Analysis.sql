-- =====================================================
-- TIME ANALYSIS
-- =====================================================

-- Revenue by Month
SELECT month_name,
ROUND(SUM(amount),2) revenue
FROM retail_sales
GROUP BY month_name
ORDER BY revenue DESC;

-- Orders by Month
SELECT month_name,
COUNT(*) total_orders
FROM retail_sales
GROUP BY month_name
ORDER BY total_orders DESC;
-- =====================================================
-- REGIONAL ANALYSIS
-- =====================================================

-- Revenue by State
SELECT ship_state,
ROUND(SUM(amount),2) revenue
FROM retail_sales
GROUP BY ship_state
ORDER BY revenue DESC;

-- Orders by State
SELECT ship_state,
COUNT(*) total_orders
FROM retail_sales
GROUP BY ship_state
ORDER BY total_orders DESC;

-- Top 10 Cities
SELECT ship_city,
ROUND(SUM(amount),2) revenue
FROM retail_sales
GROUP BY ship_city
ORDER BY revenue DESC
FETCH FIRST 10 ROWS ONLY;
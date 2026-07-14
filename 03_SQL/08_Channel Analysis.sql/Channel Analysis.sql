-- =====================================================
-- CHANNEL ANALYSIS
-- =====================================================

-- Orders by Channel
SELECT channel,
COUNT(*) total_orders
FROM retail_sales
GROUP BY channel
ORDER BY total_orders DESC;

-- Revenue by Channel
SELECT channel,
ROUND(SUM(amount),2) revenue
FROM retail_sales
GROUP BY channel
ORDER BY revenue DESC;
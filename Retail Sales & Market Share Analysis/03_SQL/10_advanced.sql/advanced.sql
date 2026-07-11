-- =====================================================
-- ADVANCED SQL
-- =====================================================

-- Top 5 States by Revenue
SELECT *
FROM (
SELECT ship_state,
SUM(amount) revenue,
RANK() OVER(ORDER BY SUM(amount) DESC) rnk
FROM retail_sales
GROUP BY ship_state
)
WHERE rnk<=5;
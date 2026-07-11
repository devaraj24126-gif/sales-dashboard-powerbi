-- =====================================================
-- Project : Retail Sales & Customer Insights Analysis
-- Module  : KPI Analysis
-- Author  : Deva
-- Database: Oracle Database 21c XE
-- =====================================================

/*
Objective:
To calculate the key performance indicators (KPIs)
that measure the overall performance of the retail business.
*/

-
-- =====================================================
-- Project : Retail Sales & Customer Insights Analysis
-- Module  : KPI Analysis
-- Author  : Deva
-- Database: Oracle Database 21c XE
-- =====================================================

/*
Objective:
To calculate the key performance indicators (KPIs)
that measure the overall performance of the retail business.
*/


-- =====================================================
-- KPI 1 : Total Revenue
-- =====================================================
SELECT SUM(amount) AS total_revenue
FROM retail_sales;

-- =====================================================
-- KPI 2 : Total Orders
-- =====================================================
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales;

-- =====================================================
-- KPI 3 : Total Customers
-- =====================================================
SELECT COUNT(DISTINCT cust_id) AS total_customers
FROM retail_sales;

-- =====================================================
-- KPI 4 : Total Quantity Sold
-- =====================================================
SELECT SUM(qty) AS total_quantity_sold
FROM retail_sales;

-- =====================================================
-- KPI 5 : Average Order Value
-- =====================================================
SELECT ROUND(
       SUM(amount) / COUNT(DISTINCT order_id),2
       ) AS average_order_value
FROM retail_sales;

-- =====================================================
-- END OF MODULE 2 : KPI ANALYSIS
-- =====================================================





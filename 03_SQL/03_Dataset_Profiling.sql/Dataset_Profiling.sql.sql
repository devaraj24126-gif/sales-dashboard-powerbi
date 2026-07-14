-- =====================================================
-- Project : Retail Sales & Customer Insights Analysis
-- Module  : Dataset Profiling
-- Author  : Deva
-- Database: Oracle 21c XE
-- =====================================================

-- Objective:
-- Explore the dataset and understand its structure before
-- performing business analysis.

/*
Objective:
To understand the structure, quality, and distribution of the retail
sales dataset before performing business analysis.

Topics Covered:
1. Dataset Overview
2. Customer Profiling
3. Order Profiling
4. Product Profiling
5. Channel Profiling
6. Geographic Profiling
7. Financial Profiling
8. Date Profiling
9. Data Quality Validation
*/



-- =====================================================
-- SECTION 1 : DATASET OVERVIEW
-- =====================================================

-- Q1 Total Records
SELECT COUNT(*) AS total_records
FROM retail_sales;

-- Q2 Total Columns
SELECT COUNT(*)
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME='RETAIL_SALES';

-- Q3 Sample Data
SELECT *
FROM retail_sales
FETCH FIRST 10 ROWS ONLY;

-- =====================================================
-- SECTION 2 : CUSTOMER PROFILING
-- =====================================================

-- Q4 Total Customers
SELECT COUNT(DISTINCT cust_id) AS total_customers
FROM retail_sales;

-- Q5 Gender
SELECT DISTINCT gender
FROM retail_sales;

-- Q6 Age Groups
SELECT DISTINCT age_group
FROM retail_sales
ORDER BY age_group;

-- Q7 Gender Distribution
SELECT gender,
       COUNT(*) AS total_customers
FROM retail_sales
GROUP BY gender
ORDER BY total_customers DESC;

-- Q8 Age Group Distribution
SELECT age_group,
       COUNT(*) AS total_customers
FROM retail_sales
GROUP BY age_group
ORDER BY total_customers DESC;

-- =====================================================
-- SECTION 3 : ORDER PROFILING
-- =====================================================

-- Q9 Order Status
SELECT DISTINCT status
FROM retail_sales
ORDER BY status;

-- Q10 Order Status Distribution
SELECT status,
       COUNT(*) AS total_orders
FROM retail_sales
GROUP BY status
ORDER BY total_orders DESC;


-- =====================================================
-- SECTION 4 : CHANNEL PROFILING
-- =====================================================

-- Q11 Available Channels
SELECT DISTINCT channel
FROM retail_sales
ORDER BY channel;

-- Q12 Orders by Channel
SELECT channel,
       COUNT(*) AS total_orders
FROM retail_sales
GROUP BY channel
ORDER BY total_orders DESC;



-- =====================================================
-- SECTION 5 : PRODUCT PROFILING
-- =====================================================

-- Q13 Categories
SELECT DISTINCT category
FROM retail_sales
ORDER BY category;

-- Q14 Number of Categories
SELECT COUNT(DISTINCT category)
FROM retail_sales;

-- Q15 Number of Products
SELECT COUNT(DISTINCT sku)
FROM retail_sales;

-- Q16 Available Sizes
SELECT DISTINCT size_name
FROM retail_sales
ORDER BY size_name;



-- =====================================================
-- SECTION 6 : GEOGRAPHIC PROFILING
-- =====================================================

-- Q17 States
SELECT DISTINCT ship_state
FROM retail_sales
ORDER BY ship_state;

-- Q18 Number of States
SELECT COUNT(DISTINCT ship_state)
FROM retail_sales;

-- Q19 Number of Cities
SELECT COUNT(DISTINCT ship_city)
FROM retail_sales;


-- =====================================================
-- SECTION 7 : FINANCIAL PROFILING
-- =====================================================

-- Q20 Currency
SELECT DISTINCT currency
FROM retail_sales;

-- Q21 Minimum Amount
SELECT MIN(amount)
FROM retail_sales;

-- Q22 Maximum Amount
SELECT MAX(amount)
FROM retail_sales;

-- Q23 Average Amount
SELECT ROUND(AVG(amount),2)
FROM retail_sales;


-- =====================================================
-- SECTION 8 : QUANTITY PROFILING
-- =====================================================

-- Q24 Minimum Quantity
SELECT MIN(qty)
FROM retail_sales;

-- Q25 Maximum Quantity
SELECT MAX(qty)
FROM retail_sales;

-- Q26 Average Quantity
SELECT ROUND(AVG(qty),2)
FROM retail_sales;


-- =====================================================
-- SECTION 9 : DATE PROFILING
-- =====================================================

-- Q27 Earliest Order Date
SELECT MIN(order_date)
FROM retail_sales;

-- Q28 Latest Order Date
SELECT MAX(order_date)
FROM retail_sales;

-- Q29 Available Months
SELECT DISTINCT month_name
FROM retail_sales
ORDER BY month_name;



-- =====================================================
-- SECTION 10 : DATA QUALITY VALIDATION
-- =====================================================

-- Q30 Missing Customer IDs
SELECT COUNT(*)
FROM retail_sales
WHERE cust_id IS NULL;

-- Q31 Missing Amount
SELECT COUNT(*)
FROM retail_sales
WHERE amount IS NULL;

-- Q32 Missing Category
SELECT COUNT(*)
FROM retail_sales
WHERE category IS NULL;

-- Q33 Missing State
SELECT COUNT(*)
FROM retail_sales
WHERE ship_state IS NULL;



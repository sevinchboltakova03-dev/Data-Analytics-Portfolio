-- Customer Churn Analysis
-- SQL Portfolio Project
-- Tool: PostgreSQL


-- =====================================
-- 1. Data Exploration
-- =====================================

-- Total number of customers

SELECT COUNT(*) AS total_customers
FROM customers;


-- Check missing customer IDs

SELECT COUNT(*) AS missing_customer_id
FROM customers
WHERE customerid IS NULL;


-- Check duplicate customers

SELECT customerid, COUNT(*) AS duplicate_count
FROM customers
GROUP BY customerid
HAVING COUNT(*) > 1;


-- =====================================
-- 2. Overall Churn Analysis
-- =====================================

-- Customer distribution by churn status

SELECT 
    churn,
    COUNT(*) AS customers
FROM customers
GROUP BY churn;


-- =====================================
-- 3. Churn Analysis by Contract
-- =====================================

SELECT 
    contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY contract
ORDER BY churn_rate DESC;
-- =====================================
-- 4. Churn Analysis by Payment Method
-- =====================================

SELECT
    paymentmethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY paymentmethod
ORDER BY churn_rate DESC;

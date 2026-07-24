-- Customer Churn Analysis
-- SQL Project

-- 1. View all customers
SELECT *
FROM customers;

-- 2. Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 3. Calculate churn rate
SELECT 
    churn,
    COUNT(*) AS customer_count
FROM customers
GROUP BY churn;

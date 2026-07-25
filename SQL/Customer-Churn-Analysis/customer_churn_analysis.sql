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
-- =====================================
-- 5. Churn Analysis by Internet Service
-- =====================================

SELECT
    internetservice,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY internetservice
ORDER BY churn_rate DESC;
-- =====================================
-- 6. Churn Analysis by Senior Citizen
-- =====================================

SELECT
    seniorcitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY seniorcitizen
ORDER BY churn_rate DESC;
-- =====================================
-- 7. Churn Analysis by Tenure
-- =====================================

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY tenure_group
ORDER BY churn_rate DESC;
-- =====================================
-- 8. Average Monthly Charges by Churn
-- =====================================

SELECT
    churn,
    COUNT(*) AS customers,
    ROUND(AVG(monthlycharges),2) AS avg_monthly_charges
FROM customers
GROUP BY churn;
-- =====================================
-- 9. Churn Analysis by Tech Support
-- =====================================

SELECT
    techsupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY techsupport
ORDER BY churn_rate DESC;
-- =====================================
-- 10. Churn Analysis by Gender
-- =====================================

SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY gender;
-- =====================================
-- 11. High Risk Customer Profile
-- =====================================

SELECT
    contract,
    paymentmethod,
    internetservice,
    COUNT(*) AS customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customers
GROUP BY 
    contract,
    paymentmethod,
    internetservice
ORDER BY churned_customers DESC
LIMIT 10;
-- =====================================
-- 11. High Risk Customer Profile
-- =====================================

SELECT
    contract,
    paymentmethod,
    internetservice,
    COUNT(*) AS customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customers
GROUP BY 
    contract,
    paymentmethod,
    internetservice
ORDER BY churned_customers DESC
LIMIT 10;


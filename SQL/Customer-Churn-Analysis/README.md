# Customer Churn Analysis (SQL)

## Project Overview

This project focuses on analyzing customer churn data to identify patterns behind customer loss and understand factors that influence customer retention.

The main objective of this analysis is to answer key business questions:
- How many customers are leaving the company?
- Which customer segments have the highest churn rates?
- What factors are associated with customer churn?
- How can businesses improve customer retention?

This project demonstrates how SQL can be used to explore customer data, calculate churn metrics, and generate actionable business insights.

---

## Dataset

**Dataset:** Telco Customer Churn Dataset

The dataset contains customer information from a telecommunications company, including:

- Customer demographics
- Service subscriptions
- Contract types
- Payment methods
- Monthly charges
- Customer tenure
- Churn status

The dataset includes customer-level information that helps analyze customer behaviour and identify potential churn drivers.

---

## Tools Used

- PostgreSQL
- SQL
- GitHub

---

## Analysis Performed

The analysis includes:

### Data Exploration & Quality Checks
- Total customer count analysis
- Missing value checks
- Duplicate customer identification

### Customer Churn Analysis
- Overall churn distribution
- Churn rate calculation
- Customer retention analysis

### Churn Analysis by Customer Attributes
- Contract type
- Payment method
- Internet service
- Senior citizen status
- Customer tenure
- Monthly charges
- Technical support availability
- Gender

### Customer Risk Analysis
- Identification of customer groups with higher churn risk
- Analysis of factors associated with customer retention

---

## Key Insights

### Contract Analysis

- Customers with **month-to-month contracts** have the highest churn rate (**42.71%**).
- Customers with longer-term contracts show significantly better retention, with two-year contracts having the lowest churn rate (**2.83%**).

**Business Insight:**  
Encouraging customers to choose longer-term contracts may help reduce churn and improve customer loyalty.

---

### Payment Method Analysis

- Customers using **Electronic check** have the highest churn rate (**45.29%**).
- Customers using automatic payment methods show lower churn rates.

**Business Insight:**  
Promoting automatic payment options may help improve customer retention.

---

### Internet Service Analysis

- Customers using **Fiber optic service** have a higher churn rate (**41.89%**) compared to other internet service groups.

**Business Insight:**  
The company should investigate possible reasons behind higher churn among Fiber optic customers, such as pricing, service quality, or customer experience.

---

### Customer Retention Factors

- Customers with longer tenure are generally more likely to stay.
- Additional support services may contribute to higher customer satisfaction and retention.

---

## Project Structure

```text
Customer-Churn-Analysis
│
├── README.md
├── customer_churn_analysis.sql
└── screenshots
    ├── churn_by_contract.png
    ├── churn_by_payment.png
    └── churn_by_internet.png
```
---

## Conclusion

This project demonstrates the use of SQL for customer behaviour analysis and business problem solving.

By analyzing churn patterns across different customer segments, this project provides insights that can support data-driven decisions and improve customer retention strategies.

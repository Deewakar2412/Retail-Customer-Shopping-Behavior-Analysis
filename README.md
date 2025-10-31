# Retail Customer Shopping Behavior Analysis

### Project Overview

This project is an end-to-end analysis of a retail company's customer shopping behavior dataset (3,900 records). The primary objective was to leverage this data to identify trends, understand key purchase drivers, and provide actionable recommendations to improve sales, customer satisfaction, and long-term loyalty.

The analysis follows a complete data-to-decision pipeline, covering all 5 key deliverables of the business problem:
1.  **Data Preparation & Modeling (Python)**
2.  **Data Analysis (SQL)**
3.  **Visualization & Insights (Power BI)**
4.  **Report & Presentation (Word/PowerPoint)**
5.  **GitHub Repository (This file!)**

---

## 📈 Power BI Dashboard Showcase

A 4-page, interactive "Neon Glow" dashboard was built to tell a clear, data-driven story.

### **Page 1: 📊 Sales Overview (The "WHAT")**
*Provides a high-level view of key business trends: what's selling, when, and to whom.*
![Sales Overview](Screenshot 2025-11-01 003636.png)

### **Page 2: 🎯 Key Drivers (The "WHY")**
*Analyzes the factors driving sales and loyalty. It reveals what's working (Subscriptions) and what's not (Discounts).*
![Key Drivers](Screenshot 2025-10-26 101055.png)

### **Page 3: 👑 Customer Value (The "WHO")**
*The most critical insight. This page segments customers by value and identifies the high-value 'Platinum' and 'Gold' tiers.*
![Customer Value](Screenshot 2025-10-26 101124.png)

### **Page 4: 🛒 Checkout (The "HOW")**
*Details the operational habits of customers, focusing on payment preferences and discount adoption rates.*
![Checkout](Screenshot 2025-10-26 101151.png)

---

## 💡 Key Insights & Recommendations

This analysis uncovered three critical insights that form the basis of our strategic recommendations:

| Insight | Finding | Recommendation |
| :--- | :--- | :--- |
| **1. The Loyalty Key** | Subscribed customers are **33% more loyal** (avg. 33 previous purchases) than non-subscribers (avg. 22). | **Boost Subscriptions:** Aggressively market subscriptions to 'Silver' & 'Gold' tiers to build long-term loyalty. |
| **2. The Failed Strategy** | Discounts are **ineffective**. The data shows that applying a discount does *not* increase the average purchase amount. | **Optimize Discounts:** Stop ineffective flat discounts and re-allocate the budget to value-added bundles or a VIP program. |
| **3. The $6M Insight** | Not all customers are equal. **75% of revenue comes from 50% of customers** (the 'Platinum' & 'Gold' tiers). | **Launch a VIP Program:** Retaining these high-value customers is paramount. They are 6-7x more valuable than 'Bronze' customers. |

---

## ⚙️ Project Pipeline & Tools Used

This project utilized a multi-tool approach to deliver a complete solution.

### 1. Data Preparation (Python)
* **Script:** `2_Python/data_preparation.py`
* **Actions:** Loaded the raw CSV into Pandas. Cleaned and standardized all column names (e.g., `snake_case`).
* **Feature Engineering:** Created two new columns:
    * `customer_value_score`: `purchase_amount * previous_purchases`
    * `customer_segment`: 'Bronze', 'Silver', 'Gold', 'Platinum' (based on score quartiles).
* **Cleaning:** Dropped the redundant `promo_code_used` column.

### 2. Data Analysis (SQL)
* **Script:** `3_SQL/analysis_queries.sql`
* **Actions:** Wrote 10+ SQL queries to answer specific business questions about high-value segments, product performance, discount effectiveness, and loyalty drivers.

### 3. Visualization (Power BI)
* **File:** `4_Power_BI/Customer_Shopping_Insights.pbix`
* **Actions:** Designed the 4-page dashboard, wrote DAX measures for KPIs (Total Customers, Avg. Spend, Total Subscribers), and implemented a custom "Neon Glow" JSON theme.

### 4. Report & Presentation
* **Files:** `5_Report/Project_Report.docx`, `5_Report/Presentation.pptx`
* **Actions:** Created a complete project report and a 5-slide management presentation deck with a full storytelling script.

### 5. GitHub Repository
* **Actions:** Structured the project into a clean repository with all 5 deliverables clearly organized.

---

## 🛠️ Tools
* **Python:** (Pandas) for data cleaning and feature engineering.
* **SQL:** (PostgreSQL syntax) for data analysis and insight generation.
* **Power BI:** (DAX, Power Query, JSON Themes) for interactive dashboard visualization.
* **MS Office:** (Word, PowerPoint) for final reporting and presentation.

# 🛍️ Retail Customer Shopping Behavior Analysis

![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/PostgreSQL-336791?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?logo=power-bi&logoColor=black)
![MS Office](https://img.shields.io/badge/MS%20Office-D83B01?logo=microsoft-office&logoColor=white)

---
## 📑 Table of Contents
* [Project Overview](#-project-overview)
* [Objectives](#-objectives)
* [Project Structure](#-project-structure)
* [Power BI Dashboard Overview](#-power-bi-dashboard-overview)
* [Key Insights & Recommendations](#-key-insights--recommendations)
* [SQL Analysis Highlights](#️-sql-analysis-highlights-12-business-questions-answered)
* [Python Data Preparation Highlights](#️-python-data-preparation-highlights)
* [Author](#-author)


---
<h2><a class="anchor" id="project-structure"></a>Project Structure</h2>

```
customer-shopping-behavior-analysis/
│
├── README.md
│
├── Data/
│   ├── customer_shopping_behavior.csv
│   ├── cleaned_customer_shopping_behavior.csv
│
├── Dashboard Image/
│   ├── check out.png
│   ├── customer value.png
│   ├── key drivers.png
│   ├── sales overview.png
│
├── Business Problem Document.pdf
├── Data_Preparation.ipynb
├── Project_Report.docx
├── analysis_queries.sql
├── customer_behavior_dashboard.pbix


```

## 🧠 Project Overview
This project is an end-to-end **Retail Customer Shopping Behavior Analysis** built on a dataset of **3,900 customer records**.  
It uncovers **what drives sales, customer loyalty, and revenue concentration** through data cleaning, SQL analytics, and Power BI visualization.

The analysis follows a complete **Data → Insight → Action** pipeline:
1. **Data Preparation & Modeling (Python)**
2. **Exploratory Analysis (SQL)**
3. **Visualization & Insight Generation (Power BI)**
4. **Report & Presentation (Word / PowerPoint)**
5. **Documentation (GitHub Repository)**

---
## 🎯 Objectives
- Understand **customer purchasing behavior** and segment them by value.
- Identify **key business drivers** such as loyalty, subscriptions, and discounts.
- Deliver **data-driven recommendations** to improve sales and retention.
- Build an **interactive Power BI dashboard** with a "Neon Glow" theme.

---

## 📊 Power BI Dashboard Overview
A **4-page interactive “Neon Glow” dashboard** was created to tell a complete, data-driven story.

### **Page 1 – Sales Overview (The “What”)**
*Shows high-level business performance — what’s selling, when, and to whom.*

![Sales Overview](Dashboard%20Image/sales%20overview.png)


---

### **Page 2 – Key Drivers (The “Why”)**
*Analyzes the factors driving sales and loyalty, comparing subscriptions vs discounts.*

![Key Drivers](Dashboard%20Image/key%20drivers.png)

---

### **Page 3 – Customer Value (The “Who”)**
*Segments customers into value tiers: Platinum, Gold, Silver, and Bronze.*

![Customer Value](Dashboard%20Image/customer%20value.png)

---

### **Page 4 – Checkout (The “How”)**
*Examines customer habits in checkout patterns, payment preferences, and discount adoption.*

![Check Out](Dashboard%20Image/check%20out.png)

---


## 💡 Key Insights & Recommendations

This analysis uncovered three critical insights that form the basis of our strategic recommendations:

| Insight | Finding | Recommendation |
| :--- | :--- | :--- |
| **1. The Loyalty Key** | Subscribed customers are **33% more loyal** (avg. 33 previous purchases) than non-subscribers (avg. 22). | **Boost Subscriptions:** Aggressively market subscriptions to 'Silver' & 'Gold' tiers to build long-term loyalty. |
| **2. The Failed Strategy** | Discounts are **ineffective**. The data shows that applying a discount does *not* increase the average purchase amount. | **Optimize Discounts:** Stop ineffective flat discounts and re-allocate the budget to value-added bundles or a VIP program. |
| **3. The $6M Insight** | Not all customers are equal. **75% of revenue comes from 50% of customers** (the 'Platinum' & 'Gold' tiers). | **Launch a VIP Program:** Retaining these high-value customers is paramount. They are 6-7x more valuable than 'Bronze' customers. |

---


## ⚙️ SQL Analysis Highlights (12 Business Questions Answered)

1.  What is the revenue contribution of each Customer Segment (Platinum, Gold, etc.)?
2.  What is the total value of customers who use discounts *and* spend above average?
3.  What are the Top 5 products by total revenue?
4.  How does average spend compare between 'Free Shipping' vs. 'Paid Shipping' users?
5.  What is the true impact of 'Subscription Status' on customer loyalty (avg. repeat purchases)?
6.  Which product category has the highest discount application rate?
7.  How does the customer base segment into 'New', 'Returning', and 'Loyal' customers?
8.  What are the Top 3 most purchased items *within* each product category?
9.  What is the financial impact of 'Review Ratings' on the average purchase amount?
10. Which season generates the most revenue?
11. What is the total revenue generated by male vs. female customers?
12. What is the distribution of payment method preferences?

---
## ⚙️ Python Data Preparation Highlights

1.  **Loaded Dataset:** Imported `customer_shopping_behavior.csv` into a Pandas DataFrame.
2.  **Cleaned Column Names:** Standardized all column names to `snake_case` for easier querying (e.g., `Purchase Amount (USD)` -> `purchase_amount`).
3.  **Handled Missing Data:** Checked for `null` values; no imputation was needed as the dataset was complete.
4.  **Engineered Feature (Value):** Created `customer_value_score` by multiplying `purchase_amount` * `previous_purchases` to quantify customer value.
5.  **Engineered Feature (Segment):** Created `customer_segment` ('Bronze', 'Silver', 'Gold', 'Platinum') by splitting the `customer_value_score` into 4 equal quartiles (25% each).
6.  **Handled Redundancy:** Performed a check to confirm `discount_applied` and `promo_code_used` columns were identical.
7.  **Dropped Column:** Dropped the redundant `promo_code_used` column to clean the final dataset.
8.  **Saved Cleaned File:** Exported the fully prepped DataFrame to `cleaned_customer_shopping_behavior.csv` for use in Power BI and SQL analysis.

---

## 👤 Author

**Deewakar Kumar**
* 📧 Email: `deewakar2412@gmail.com`
* 📍 Bokaro, Jharkhand, India
* [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/deewakarkumar2412/) 
* [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Deewakar2412)



---

## 🚀 How to Use

1. Clone the repository:  

   ```bash
   git clone https://github.com/your-username/Apollo-Hospital-Dashboard.git

--

👤 Author

**Deewakar Kumar**
* 📧 Email: `deewakar2412@gmail.com`
* 📍 Bokaro, Jharkhand, India
* [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/deewakarkumar2412/) 
* [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Deewakar2412)


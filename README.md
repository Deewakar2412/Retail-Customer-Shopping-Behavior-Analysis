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
* [Dashboard & Insights](#-dashboard--insights)
* [Findings](#-findings)
* [Files in Repository](#-files-in-repository)
* [How to Use](#-how-to-use)
* [Author](#-author)
* [License](#-license)

---

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

## ⚙️ Project Pipeline & Tools Used

This project utilized a multi-tool approach to deliver a complete solution.

### 1. Data Preparation (Python)
* **Script:** data_preparation.py`
* **Actions:** Loaded the raw CSV into Pandas. Cleaned and standardized all column names (e.g., `snake_case`).
* **Feature Engineering:** Created two new columns:
    * `customer_value_score`: `purchase_amount * previous_purchases`
    * `customer_segment`: 'Bronze', 'Silver', 'Gold', 'Platinum' (based on score quartiles).
* **Cleaning:** Dropped the redundant `promo_code_used` column.

### 2. Data Analysis (SQL)
* **Script:** analysis_queries.sql`
* **Actions:** Wrote 10+ SQL queries to answer specific business questions about high-value segments, product performance, discount effectiveness, and loyalty drivers.

### 3. Visualization (Power BI)
* **File:** Customer_Shopping_Insights.pbix`
* **Actions:** Designed the 4-page dashboard, wrote DAX measures for KPIs (Total Customers, Avg. Spend, Total Subscribers), and implemented a custom "Neon Glow" JSON theme.

### 4. Report & Presentation
* **Files:** Project_Report.docx`, `5_Report/Presentation.pptx`
* **Actions:** Created a complete project report and a 5-slide management presentation deck with a full storytelling script.

### 5. GitHub Repository
* **Actions:** Structured the project into a clean repository with all 5 deliverables clearly organized.

---
## 👤 Author

**Deewakar Kumar**
* 📧 Email: `deewakar2412@gmail.com`
* 📍 Bokaro, Jharkhand, India
* [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/deewakar-kumar-b209b521b/)
* [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Deewakar2412)

# 🛍️ Retail Customer Shopping Behavior Analysis

### **Project Overview**

This project is an end-to-end analysis of a retail company's customer shopping behavior dataset (3,900 records).  
The primary objective was to leverage this data to identify trends, understand key purchase drivers, and provide actionable recommendations to improve sales, customer satisfaction, and long-term loyalty.

The analysis follows a complete data-to-decision pipeline, covering all 5 key deliverables of the business problem:
1. **Data Preparation & Modeling (Python)**
2. **Data Analysis (SQL)**
3. **Visualization & Insights (Power BI)**
4. **Report & Presentation (Word/PowerPoint)**
5. **GitHub Repository (This file!)**

---

## 📈 Power BI Dashboard Showcase

A **4-page interactive "Neon Glow" dashboard** was built to tell a clear, data-driven story.

---

### **Page 1 – 📊 Sales Overview (The “What”)**
*Provides a high-level view of key business trends: what's selling, when, and to whom.*

![Sales Overview](sales%20overview.png)

---

### **Page 2 – 🎯 Key Drivers (The “Why”)**
*Analyzes the factors driving sales and loyalty. It reveals what's working (Subscriptions) and what's not (Discounts).*

![Key Drivers](key%20drivers.png)

---

### **Page 3 – 👑 Customer Value (The “Who”)**
*Segments customers by value and identifies high-value 'Platinum' and 'Gold' tiers.*

![Customer Value](customer%20value.png)

---

### **Page 4 – 🛒 Checkout (The “How”)**
*Details the operational habits of customers, focusing on payment preferences and discount adoption rates.*

![Checkout](check%20out.png)

---

### **Dashboard Preview (Full Overview)**
*A combined snapshot of the Power BI dashboard.*

![Dashboard Overview](Screenshot%202025-11-01%20004239.png)

---

## 💡 Key Insights & Recommendations

| Insight | Finding | Recommendation |
| :--- | :--- | :--- |
| **1. The Loyalty Key** | Subscribed customers are **33% more loyal** (avg. 33 previous purchases) than non-subscribers (avg. 22). | **Boost Subscriptions:** Market subscriptions to 'Silver' & 'Gold' tiers to build long-term loyalty. |
| **2. The Failed Strategy** | Discounts are **ineffective**. Applying a discount does *not* increase the average purchase amount. | **Optimize Discounts:** Replace flat discounts with bundles or a VIP program. |
| **3. The $6M Insight** | **75% of revenue comes from 50% of customers** ('Platinum' & 'Gold' tiers). | **Launch a VIP Program:** Retaining these high-value customers is paramount—they are 6–7× more valuable than 'Bronze' customers. |

---

## ⚙️ Project Pipeline & Tools Used

### 1. Data Preparation (Python)
* **Script:** `2_Python/data_preparation.py`  
* **Actions:** Loaded the raw CSV into Pandas, cleaned and standardized column names.  
* **Feature Engineering:**  
  * `customer_value_score = purchase_amount * previous_purchases`  
  * `customer_segment = ['Bronze','Silver','Gold','Platinum']` (based on quartiles)  
* **Cleaning:** Dropped redundant columns.

---

### 2. Data Analysis (SQL)
* **Script:** `3_SQL/analysis_queries.sql`  
* **Actions:** 10+ queries covering segment performance, discount effectiveness, and loyalty drivers.

---

### 3. Visualization (Power BI)
* **File:** `4_Power_BI/Customer_Shopping_Insights.pbix`  
* **Actions:** Designed a 4-page dashboard, built DAX KPIs (Total Customers, Avg Spend, Total Subscribers), and applied a custom "Neon Glow" theme.

---

### 4. Report & Presentation
* **Files:** `5_Report/Project_Report.docx`, `5_Report/Presentation.pptx`  
* **Actions:** Created a full report and a 5-slide management deck with storytelling.

---

### 5. GitHub Repository
* **Actions:** Organized all deliverables into a clean, easy-to-navigate structure.

---

## 🧰 Tools Used
* **Python (Pandas)** – data cleaning & feature engineering  
* **SQL (PostgreSQL)** – data analysis & insight generation  
* **Power BI (DAX, Power Query, JSON Themes)** – interactive visualization  
* **MS Office (Word, PowerPoint)** – reporting & presentation  

---

## 🏁 Final Notes
This project demonstrates the full **Data → Insight → Action** pipeline.  
It highlights how modern data analytics tools (Python, SQL, Power BI) can be integrated to deliver **real business impact** through data-driven storytelling.



check out.png
customer value.png
key drivers.png
sales overview.png
Screenshot 2025-11-01 004239.png

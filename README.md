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
## 🗂️ Project Structure
Retail-Customer-Behavior-Analysis/
│
├── 1_Data/
│ └── raw_data.csv
│
├── 2_Python/
│ └── data_preparation.py
│
├── 3_SQL/
│ └── analysis_queries.sql
│
├── 4_Power_BI/
│ └── Customer_Shopping_Insights.pbix
│
├── 5_Report/
│ ├── Project_Report.docx
│ └── Presentation.pptx
│
└── README.md



## 📊 Power BI Dashboard Overview
A **4-page interactive “Neon Glow” dashboard** was created to tell a complete, data-driven story.

### **Page 1 – Sales Overview (The “What”)**
*Shows high-level business performance — what’s selling, when, and to whom.*

![Sales Overview](sales%20overview.png)

---

### **Page 2 – Key Drivers (The “Why”)**
*Analyzes the factors driving sales and loyalty, comparing subscriptions vs discounts.*

![Key Drivers](Dashboard_Image/key_drivers.png)

---

### **Page 3 – Customer Value (The “Who”)**
*Segments customers into value tiers: Platinum, Gold, Silver, and Bronze.*

![Customer Value](Dashboard_Image/customer_value.png)

---

### **Page 4 – Checkout (The “How”)**
*Examines customer habits in checkout patterns, payment preferences, and discount adoption.*

![Checkout](Dashboard_Image/check_out.png)

---

### **Dashboard Preview (Full Overview)**
*A combined snapshot of all Power BI dashboard pages.*

[![Dashboard Preview](Dashboard_Image/sales_overview.png)](customer_behavior_dashboard.pbix)

---

## 💡 Key Insights & Recommendations

| # | Insight | Finding | Recommendation |
| :- | :--- | :--- | :--- |
| 1 | **Loyalty Key** | Subscribed customers are **33% more loyal** (33 avg. purchases vs 22). | **Boost Subscriptions** – Promote Silver/Gold tiers to enhance retention. |
| 2 | **Failed Strategy** | Discounts are **not effective** in increasing purchase value. | **Rework Discount Policy** – Introduce bundles or VIP offers. |
| 3 | **The $6M Insight** | **75% of revenue** comes from the top 50% of customers. | **Launch VIP Program** – Focus on retaining Platinum & Gold customers. |

---

## ⚙️ Project Pipeline

### 1️⃣ Data Preparation (Python)
- Loaded raw CSV → cleaned & standardized column names.  
- Engineered new features:
  ```python
  customer_value_score = purchase_amount * previous_purchases
  customer_segment = ['Bronze', 'Silver', 'Gold', 'Platinum']

  Removed redundant and duplicate records.

📄 Script: Data_Preparation.ipynb

2️⃣ Data Analysis (SQL)

10+ analytical queries for:

Segment-wise performance

Discount effectiveness

Subscription loyalty trends

📄 Script: analysis_queries.sql

3️⃣ Visualization (Power BI)

Created 4 interactive dashboard pages.

Built DAX KPIs: Total Customers, Avg Spend, Total Subscribers.

Used custom Neon Glow theme for storytelling.

📄 File: customer_behavior_dashboard.pbix

4️⃣ Reporting & Documentation

📘 Word Report: Detailed methodology and insights

🖥️ PowerPoint Deck: 5-slide summary for stakeholders

📂 Folder: Business Problem Document.pdf, Project_Report.docx

5️⃣ GitHub Repository

Organized all deliverables into a clean, easy-to-navigate structure:

Retail-Customer-Shopping-Behavior-Analysis/
│
├── Dashboard_Image/
│   ├── sales_overview.png
│   ├── key_drivers.png
│   ├── customer_value.png
│   └── check_out.png
│
├── Data/
│   ├── customer_shopping_behavior.csv
│   └── cleaned_customer_shopping_behavior.csv
│
├── Business Problem Document.pdf
├── Data_Preparation.ipynb
├── analysis_queries.sql
├── customer_behavior_dashboard.pbix
├── Project_Report.docx
└── README.md

🧰 Tools & Technologies
Tool	Purpose
Python (Pandas)	Data cleaning & feature engineering
SQL (PostgreSQL)	Data querying & analysis
Power BI (DAX, Power Query)	Visualization & storytelling
MS Office (Word, PowerPoint)	Reporting & presentation
🚀 Results Summary

✅ Improved subscription strategy → +33% loyalty potential
✅ Identified $6M revenue concentration (top 50% customers)
✅ Optimized discount model → focus on value bundles

🏁 Final Notes

This project demonstrates a complete Data → Insight → Action pipeline.
It highlights how Python, SQL, and Power BI together can drive real business impact through data storytelling.

🔗 Connect with Me

📧 deewakar2412@gmail.com

💼 LinkedIn

📊 Portfolio Projects


---

✅ **Instructions:**
- Place this in your main repo as `README.md`
- Rename your image files (remove spaces)
- Keep them inside `Dashboard_Image/`
- The dashboard preview will appear automatically on your GitHub page  

Would you like me to also create a **short description (2–3 lines)** for your repo’s GitHub header 

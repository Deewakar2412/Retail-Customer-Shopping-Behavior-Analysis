# 🛍️ Retail Customer Shopping Behavior Analysis

![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/PostgreSQL-336791?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?logo=power-bi&logoColor=black)
![MS Office](https://img.shields.io/badge/MS%20Office-D83B01?logo=microsoft-office&logoColor=white)

---

## 📘 Project Overview
This project is an **end-to-end analysis** of a retail company's customer shopping behavior dataset (3,900 records).  
The goal was to identify key purchase drivers, customer loyalty patterns, and actionable insights to improve **sales and retention**.

### 🔁 Data-to-Decision Pipeline
1. **Data Preparation & Modeling** – Python (Pandas)
2. **Data Analysis** – SQL (PostgreSQL)
3. **Visualization** – Power BI (DAX + Custom Theme)
4. **Reporting** – Word & PowerPoint
5. **Deployment** – GitHub Repository

---

## 📊 Power BI Dashboard Overview
A **4-page interactive “Neon Glow” dashboard** was created to tell a complete, data-driven story.

### **Page 1 – Sales Overview (The “What”)**
*Shows high-level business performance — what’s selling, when, and to whom.*

![Sales Overview](Dashboard_Image/sales_overview.png)

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

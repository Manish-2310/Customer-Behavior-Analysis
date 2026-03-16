# Customer-Behavior-Analysis

## Project Overview
This project analyzes the shopping habits of **3,900 customers** to uncover actionable business insights. It combines **Python**, **SQL Server**, and **Power BI** to perform end-to-end data analysis, including data cleaning, feature engineering, exploratory analysis, and visualization.

**Key Highlights:**
- Average purchase amount: **$59.76**
- Average review rating: **3.75**
- Subscription penetration: **27% subscribed, 73% unsubscribed**
- Top-performing category: **Clothing**

---

## Table of Contents
- [Dataset](#dataset)
- [Tools & Technologies](#tools--technologies)
- [Workflow](#workflow)
- [Key Insights](#key-insights)
- [Recommendations](#recommendations)
- [Project Files](#project-files)
- [How to Run](#how-to-run)

---

## Dataset
The dataset `customer_shopping_behavior.csv` contains transactional and demographic information for **3.9K customers**, including:
- Customer ID, Age, Gender
- Product Category, Purchase Amount
- Review Rating, Purchase Frequency
- Subscription Status, Discount Usage

---

## Tools & Technologies
- **Python (Pandas, NumPy)** – Data cleaning, feature engineering
- **SQL Server** – Exploratory Data Analysis
- **Power BI** – Dashboard creation and visualization
- **Git & GitHub** – Version control

---

## Workflow

### 1. Data Preparation
- Cleaned and standardized column names
- Handled missing review ratings using median by category
- Created age groups for segmentation
- Mapped purchase frequency to numeric days
- Dropped redundant columns

### 2. Database Integration
- Uploaded the cleaned dataset to SQL Server in a table named `customer_behavior_table`.

### 3. Exploratory Data Analysis
- Revenue by demographics (gender, age group)
- Discount and spending analysis
- Top product performance
- Customer segmentation (new, returning, loyal)
- Subscription behavior

### 4. Visualization
- Interactive Power BI dashboard with filters for subscription, gender, category, and shipping type
- KPI cards: total customers, average purchase, average review rating
- Category and demographic performance charts

---

## Key Insights
1. **Clothing is the top revenue driver**  
2. **Young adult and middle-aged customers** are the most valuable demographic groups  
3. **Subscription potential is high** – 73% of customers are unsubscribed  

---

## Recommendations
- Launch targeted subscription campaigns for loyal customers (>10 purchases)  
- Focus marketing and inventory on Clothing category for high-converting age groups  
- Implement strategic discount bundles to encourage higher spending  

---

## Project Files
- `customer_shopping_behavior.csv` – Raw dataset  
- `project_report.pdf` – Final project report  
- Jupyter Notebooks – Python scripts for cleaning and feature engineering  
- Power BI Dashboard files

---

## How to Run
1. Clone the repository:  
`git clone https://github.com/Manish-2310/Customer-Behavior-Analysis.git`  
2. Open the Jupyter Notebook to perform data cleaning and feature engineering.  
3. Run SQL scripts on SQL Server for exploratory analysis.  
4. Open the Power BI dashboard to visualize insights.  

---

## Author
**Manish Sharma** – Data Analyst / Data Science Enthusiast

---

## License
This project is for educational purposes.  

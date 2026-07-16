# Cafe Sales End-to-End Data Analytics Project

# Project Overview
This repository contains an end-to-end Data Analytics project focused on optimizing operations, payment processing, and inventory insights for a Cafe/Bakery business. The project demonstrates a complete real-world data engineering and business intelligence pipeline—moving from a cluttered raw dataset to structured database architecture and dynamic reporting.

# Tech Stack & Tools Used
- # Excel: Initial data inspection and metadata evaluation.
- # Python (Pandas & SQLAlchemy): Engineered an automated data extraction and database injection pipeline to seamlessly load Excel (".xlsx" / ".csv") data into an SQL server, bypassing standard character-encoding barriers.
- # MySQL: Relational database architecture, relational mapping, schema optimization, transactional data cleaning, and advanced analytical querying.
- # Power BI: (In-Progress) Executive dashboarding and advanced metric visualizations using DAX.

---

# Data Engineering & Troubleshooting Challenges (The Analyst Mindset)
During the initialization phase, I encountered and successfully resolved several real-world data quality issues:

# 1. Handling Missing Categorical Records ("na" values)
- # The Issue: A routine audit revealed multiple missing values labelled as `na` in the `Item` column. Simply dropping these rows would skew the total revenue and transaction statistics.
- # The Analytical Fix: I cross-referenced the dataset and discovered a strictly mapped pricing pattern where each menu item had a fixed `Price_Per_Unit`.
- # The Solution: Written conditional SQL DML statements ("UPDATE" commands with "SET SQL_SAFE_UPDATES = 0") to dynamically map and fill the missing item names permanently based on their unique unit rates:
  - Price `1.00` ➡️ **Cookie**
  - Price `1.50` ➡️ **Tea**
  - Price `2.00` ➡️ **Coffee**
  - Price `3.00` ➡️ **Cake** (and so on...)

# 2. Character Encoding & Data Size Exceptions
- # The Issue: Standard import wizards crashed repeatedly due to hidden delimiters, text hyphens (e.g., in `Sub-Category`), and encoding issues (`charmap` exceptions).
- # The Solution: Built a robust Python script utilizing `pandas` and `sqlalchemy` strings methods (`.str.replace(' ', '_').str.replace('-', '_')`) to cleanly map inputs, sanitize field headers, and inject the clean structural rows directly into MySQL.

---

# Initial High-Level Business Insights
- # Operational Balance: Total cafe transactions are split almost identically between **Takeaway** (3,022 orders) and **In-store** (3,017 orders), indicating a balanced demand for seating space versus packaging logistics.
- # Payment Trends: **Digital Wallets** are the most preferred transaction mechanism (2,291 successful orders), closely outperforming Credit Cards and traditional Cash payments.
- # Top Moving Ingedients: Initial aggregations show steady transaction spikes for high-volume beverage products (Coffee, Juice, Tea).

---

## 📂 Repository File Guide
- 📝 "dirty_cafe_sales.csv": The initial unmodified dataset containing structural noise and missing labels.
- 🐍 "SQL Engine.ipynb": Jupyter Notebook writing Python code to clean string schemas and seamlessly bulk-load records into MySQL.
- 🗃️ "cafe data.sql": Production-ready SQL scripts containing detailed data validations, structural overrides, and business analytic queries (Window functions, segmentation).

---
*Next Step: Proceeding to connect this live database schema to Power BI Desktop for dimensional modeling and visual dashboarding! 📊*

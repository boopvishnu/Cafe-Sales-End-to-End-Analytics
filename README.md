# ☕ Cafe Sales End-to-End Data Analytics Project

## 📌 Project Overview
This repository contains an end-to-end Data Analytics project focused on optimizing operations, payment processing, and inventory insights for a Cafe/Bakery business. The project demonstrates a complete real-world data engineering and business intelligence pipeline—moving from a cluttered raw dataset to structured database architecture and dynamic reporting.

## 🛠️ Tech Stack & Tools Used
- **Excel**: Initial data inspection and metadata evaluation.
- **Python (Pandas & SQLAlchemy)**: Engineered an automated data extraction and database injection pipeline to seamlessly load Excel (`.xlsx` / `.csv`) data into an SQL server, bypassing standard character-encoding barriers.
- **MySQL**: Relational database architecture, relational mapping, schema optimization, transactional data cleaning, and production table management.
- **Power BI**: Designed a high-fidelity, interactive Executive Dashboard utilizing DAX measures, native vector UI cards, and dynamic cross-filtering analysis.

---

## 🔍 Data Engineering & Troubleshooting Challenges (The Analyst Mindset)
During the initialization phase, I encountered and successfully resolved several real-world data quality issues:

### 1. Handling Missing Categorical Records (`na` values)
- **The Issue**: A routine audit revealed multiple missing values labelled as `na` in the `Item` column. Simply dropping these rows would skew the total revenue and transaction statistics.
- **The Analytical Fix**: I cross-referenced the dataset and discovered a strictly mapped pricing pattern where each menu item had a fixed `Price_Per_Unit`.
- **The Solution**: Written conditional SQL DML statements (`UPDATE` commands with `SET SQL_SAFE_UPDATES = 0`) to dynamically map and fill the missing item names permanently based on their unique unit rates:
  - Price `1.00` ➡️ **Cookie**
  - Price `1.50` ➡️ **Tea**
  - Price `2.00` ➡️ **Coffee**
  - Price `3.00` ➡️ **Cake** (and so on...)

### 2. Character Encoding & Data Size Exceptions
- **The Issue**: Standard import wizards crashed repeatedly due to hidden delimiters, text hyphens (e.g., in `Sub-Category`), and encoding issues (`charmap` exceptions).
- **The Solution**: Built a robust Python script utilizing `pandas` and `sqlalchemy` strings methods (`.str.replace(' ', '_').str.replace('-', '_')`) to cleanly map inputs, sanitize field headers, and inject the clean structural rows directly into MySQL.

---

## 📈 High-Level Business Insights (Updated Phase)
After establishing structural consistency and dynamic parsing, the complete business dashboard revealed several critical operational trends:

- **The Rise of Digital Channels**: With missing logs accurately cleaned in the database, the newly mapped **Online Orders** segment emerged as the massive driver of cafe logistics, processing **64,025 orders** and completely dominating physical In-store (49,196) and traditional Takeaway (47,736) metrics.
- **The Symmetrical Payment Ecosystem**: Financial transaction share is divided with remarkable equity (~33% each) across Digital Wallets, Credit Cards, and Cash. This displays a highly diversified and flexible point-of-sale layout for consumers.
- **Volume & Revenue Champions**: Volumetric analysis indicates that **Cake** (14k+ units) and **Smoothie** (13.4k+ units) are the heaviest moving products, capturing significant profit margins.
- **High-Yield Ticket Analysis**: While total operational revenue scaled to a strong **$161.0K**, the overall Average Order Value stabilized at a lean **$8.00 per ticket**, indicating a business model sustained by extreme consumer frequency.

---

## 🖥️ Final Interactive Dashboard Preview
Here is a high-fidelity look at the completed executive business intelligence layout. All metrics dynamically update using cross-filtered channel buttons (`In-store`, `Takeaway`, `Online`):

![Dashboard Preview](dashboard_screenshot.png)

---

## 📂 Repository File Guide
- 📝 `dirty_cafe_sales.csv`: The initial unmodified dataset containing structural noise and missing labels.
- 🐍 `SQL Engine.ipynb`: Jupyter Notebook writing Python code to clean string schemas and seamlessly bulk-load records into MySQL.
- 🗃️ `cafe data.sql`: Production-ready updated SQL scripts containing database setup, missing record overrides, and final database tables management.

---
### 🏆 Project Status: Complete & Production-Ready! 🎉
*The automated pipeline is built, database tables are structured, data cleaning constraints are permanently handled, and the business metrics are officially live in the Power BI dashboard workflow.*

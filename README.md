# 🛒 Walmart Sales Analysis

This project analyzes Walmart’s sales data using SQL and Power BI. It covers sales trends, seasonality, store performance, and external factors like fuel prices and holidays.

---

## 📂 Project Files
- `walmart_sales_analysis.pbix` → Power BI Dashboard
- `queries.sql` → SQL queries for analysis
- `dashboard.png` → Dashboard preview

---

## 📈 Power BI Dashboard Includes:
- Monthly and Quarterly Sales Trends
- Store-Level Performance
- Seasonal Sales Analysis
- Sales Impact from Holidays & Fuel Prices
- Most Profitable Quarters

---

## 🔧 Tools Used
- SQL (MySQL)
- Power BI
- GitHub

---

## 🖼️ Dashboard Preview

![Dashboard](<img width="592" alt="WALMART_ANALYSIS" src="https://github.com/user-attachments/assets/d3cfabf5-63db-4222-8f45-dbadcb9ec7b2" />
)

---

## 📊 Sample SQL Query

```sql
SELECT QUARTER(Date) AS quarter, YEAR(Date) AS year,
       SUM(Weekly_Sales) AS total_sales
FROM walmart_sales
GROUP BY year, quarter
ORDER BY year, quarter;

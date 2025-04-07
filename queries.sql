select *
from walmart_sales;

# MONTHLY SALES TRENDS
SELECT DATE_FORMAT(Date,'%Y-%m') AS month, SUM(weekly_sales) as total_sales
FROM walmart_sales
group by month
order by month;


# TOTAL SALES REVENUE
SELECT sum(weekly_sales) as total_revenue
from walmart_sales;

# AVERAGE WEEKLY SALES PER STORE 
SELECT store, AVG(weekly_sales) as avg_sales
FROM walmart_sales
GROUP BY store 
ORDER BY avg_sales DESC;

# BEST_PERFORMING STORES.
SELECT store, SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY store
order by total_sales desc
LIMIT 5;

# lEAST PERFORMING STORES.
select store,sum(weekly_sales) as total_sales
FROM walmart_sales
GROUP BY store 
order by total_sales asc
limit 5;

#RELATIONSHIP BETWEEN FUEL PRICE AND SALES
SELECT 
  CASE 
    WHEN fuel_price < 2.5 THEN '3'
    WHEN fuel_price BETWEEN 2.5 AND 3.5 THEN '4'
    WHEN fuel_price > 3.5 THEN '5'
  END AS fuel_price_range,
  AVG(weekly_sales) AS avg_sales
FROM walmart_sales
GROUP BY fuel_price_range;

# IMPACT OF HOLIDAYS ON SALES 
SELECT holiday_flag , SUM(weekly_sales) as total_sales
from walmart_sales
GROUP BY holiday_flag;

#SALES PERFORMANCE BASED ON SEASONALITY. 
SELECT 
  CASE 
    WHEN MONTH(Date) IN (12, 1, 2) THEN 'Winter'
    WHEN MONTH(Date) IN (3, 4, 5) THEN 'Spring'
    WHEN MONTH(Date) IN (6, 7, 8) THEN 'Summer'
    WHEN MONTH(Date) IN (9, 10, 11) THEN 'Fall'
  END AS Season,
  SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY Season
ORDER BY 
  FIELD(Season, 'Winter', 'Spring', 'Summer', 'Fall');

# FINDING THE MOST ROFITABLE QUARTER.
SELECT QUARTER(Date) AS quarter, 
       YEAR(Date) AS year, 
       SUM(Weekly_Sales) AS total_sales
FROM walmart_sales
GROUP BY year, quarter
ORDER BY year, quarter desc;

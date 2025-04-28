# 📈 Walmart Sales Time Series Forecasting
Objective:
Forecast Walmart's future sales by analyzing historical sales data using Time Series Analysis and Predictive Modeling techniques.

## 📂 Project Overview
In this project, we perform Time Series Forecasting on Walmart's historical sales data to predict future sales trends.
The goal is to help optimize inventory planning, marketing strategies, and business decisions based on sales seasonality and trends.

## 🛠️ Tools & Technologies Used
- Python
- Pandas
- NumPy
- Matplotlib, Seaborn (Data Visualization)
- Statsmodels (ARIMA)
- Scikit-learn (Model Evaluation)

## 🔎 Project Steps
### Data Collection:
- Loaded Walmart sales data for analysis.

### Data Preprocessing:
- Converted date columns to datetime format.
- Set the date as the index.
- Checked for missing values and cleaned the dataset.

### Exploratory Data Analysis (EDA):
- Visualized overall sales trends.
- Decomposed the time series into trend, seasonality, and residuals.
- Conducted stationarity testing using the Augmented Dickey-Fuller (ADF) Test.

### Model Building:
- Achieved stationarity by differencing the series.
- Identified ARIMA parameters (p,d,q) using ACF and PACF plots.
- Built and trained the ARIMA(5,1,0) model.

### Model Evaluation:
- Forecasted next 12 months sales.
- Calculated performance using Root Mean Squared Error (RMSE).
- RMSE achieved: 27715.35

### Forecasting:
- Generated monthly sales forecasts for the next year.
- Visualized predicted vs actual sales trends.

## 📊 Key Results
- Achieved a forecasting RMSE of 27715.35.
- Detected clear seasonal patterns and trends in Walmart's sales.
- Produced actionable forecasts to assist in business decision-making.

## 🧠 Future Improvements
- Explore advanced time series models like SARIMA, Prophet, or LSTM.
- Incorporate additional features like holiday effects and promotions.
- Deploy the forecasting model into a production environment.

## 🚀 Final Note
This project demonstrates the power of Time Series Forecasting in driving informed, data-backed business strategies.
Using historical data, we successfully modeled and predicted Walmart’s sales patterns, providing critical insights for future planning.

## 📌 Sample Visuals
### Forecast Vs Actual Sales
![forecast_vs_actual](https://github.com/user-attachments/assets/684c6b53-0117-4274-b96c-82a382c9e0d5)

### Overall Sales Trend
![sales_trend](https://github.com/user-attachments/assets/b27c0e4a-d156-483f-9eb7-03a0aa7746bd)


## 📬 Connect with Me
If you found this project interesting, feel free to ⭐ the repository or reach out via LinkedIn!


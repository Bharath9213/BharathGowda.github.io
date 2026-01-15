-- BUSINESS QUESTION 10:
-- Compare forecast demand, production plan, and actual sales by month

SELECT
    Month,
    SUM(Forecast_Demand) AS forecast_demand,
    SUM(Production_Plan) AS production_plan,
    SUM(Actual_Sales) AS actual_sales
FROM siop_plan_cleaned
GROUP BY Month
ORDER BY month;

-- BUSINESS QUESTION 11:
-- How accurate is the forecast on average?

SELECT
    AVG(forecast_accuracy) AS avg_forecast_accuracy
FROM siop_plan_cleaned;

-- BUSINESS QUESTION 12:
-- Identify months with low forecast accuracy

SELECT
    month,
    forecast_accuracy
FROM siop_plan_cleaned
WHERE forecast_accuracy < 80
ORDER BY forecast_accuracy;

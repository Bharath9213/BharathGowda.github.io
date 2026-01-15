-- BUSINESS QUESTION 13:
-- How is supplier performance measured overall?

SELECT
    supplier_name,
    AVG(On_Time_Delivery_Percent) AS avg_on_time_delivery,
    AVG(quality_score) AS avg_quality_score,
    AVG(Rejection_Rate_Percent) AS avg_rejection_rate,
    AVG(supplier_quality_score) AS avg_supplier_score
FROM supplier_performance_cleaned
GROUP BY supplier_name;

-- BUSINESS QUESTION 14:
-- Which suppliers have the lowest quality score?

SELECT
    supplier_name,
    AVG(supplier_quality_score) AS avg_supplier_score
FROM supplier_performance_cleaned
GROUP BY supplier_name
ORDER BY avg_supplier_score ASC;

-- BUSINESS QUESTION 15:
-- Which suppliers have high rejection rates?

SELECT
    supplier_name,
    AVG(Rejection_Rate_Percent) AS avg_rejection_rate
FROM supplier_performance_cleaned
GROUP BY supplier_name
ORDER BY avg_rejection_rate DESC;

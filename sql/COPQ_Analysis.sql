-- BUSINESS QUESTION 1:
-- Which products have the highest Cost of Poor Quality (COPQ)?

SELECT
    Product_ID,
    SUM(Total_COPQ) AS total_copq
FROM cost_of_poor_quality_cleaned
GROUP BY Product_ID
ORDER BY Total_COPQ DESC;

-- BUSINESS QUESTION 2:
-- What is the breakdown of COPQ by cost type?

SELECT
    Product_ID,
    SUM(Rework_Cost) AS rework_cost,
    SUM(Scrap_Cost) AS scrap_cost,
    SUM(Warranty_Cost) AS warranty_cost
FROM cost_of_poor_quality_cleaned
GROUP BY Product_ID;

-- BUSINESS QUESTION 3:
-- Which cost type contributes the most to COPQ overall?

SELECT
    SUM(Rework_Cost) AS Total_rework,
    SUM(Scrap_Cost) AS Total_scrap,
    SUM(Warranty_Cost) AS Total_warranty
FROM cost_of_poor_quality_cleaned;




-- BUSINESS QUESTION 4:
-- What is the average inventory health ratio by product?

SELECT
    Product_ID,
    AVG(Inventory_HR) AS Avg_Inventory_Health
FROM inventory_data_cleaned
GROUP BY Product_ID;

-- BUSINESS QUESTION 5:
-- Which products have high blocked stock percentage?

SELECT
    Product_ID,
    AVG(Blocked_Stock_Percentage) AS Avg_Blocked_Stock_Pct
FROM inventory_data_cleaned
GROUP BY Product_ID
ORDER BY Avg_Blocked_Stock_Pct DESC;

-- BUSINESS QUESTION 6:
-- Which products are at inventory risk?

SELECT
    Product_ID,
    AVG(Inventory_Risk) AS Avg_Inventory_Risk
FROM inventory_data_cleaned
GROUP BY Product_ID
ORDER BY Avg_Inventory_Risk DESC;

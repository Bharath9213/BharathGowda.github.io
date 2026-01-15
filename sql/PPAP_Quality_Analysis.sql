-- BUSINESS QUESTION 7:
-- What is the PPAP approval status distribution?

SELECT
    PPAP_Status,
    COUNT(*) AS Count_Records
FROM quality_ppap_cleaned
GROUP BY PPAP_Status;

-- BUSINESS QUESTION 8:
-- How many defects are reported per supplier?

SELECT
    Supplier_ID,
    SUM(Defect_Count) AS Total_Defects
FROM quality_ppap_cleaned
GROUP BY Supplier_ID
ORDER BY Total_Defects DESC;

-- BUSINESS QUESTION 9:
-- How do defects trend over time?

SELECT
    Inspection_Date,
    SUM(Defect_Count) AS Total_Defects
FROM quality_ppap_cleaned
GROUP BY Inspection_Date
ORDER BY Inspection_Date;

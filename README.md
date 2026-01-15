SUPPLY CHAIN ANALYTICS PROJECT NOTES

Author
Bharath K
Role: Data Analyst
Tools Used: Excel, SQL (MySQL), Power BI

PROJECT OVERVIEW
This project is an end-to-end supply chain analytics project.
The goal is to analyze inventory levels, supplier performance, and quality costs.
The project starts from raw data cleaning and ends with dashboards and business insights.

BUSINESS PROBLEM
The organization faced the following issues:
Frequent stock-outs of high-demand products
Excess inventory leading to higher holding costs
Poor supplier quality performance
High cost of poor quality impacting profitability

BUSINESS QUESTIONS
Which products are below safety stock
Which products are overstocked
Which suppliers contribute most to defects
What is the cost of poor quality
How inventory is distributed across warehouses

DATASET DESCRIPTION
The dataset contains supply chain transactional data.
Columns include order date, product name, supplier name, demand quantity, inventory on hand, safety stock, defect quantity, unit cost, and warehouse location.

Data organization followed best practices.
Raw data was stored separately and never modified.
Cleaned data was used for analysis.

DATA CLEANING PROCESS (EXCEL)
Removed duplicate records
Standardized product and supplier names
Corrected date and numeric formats
Handled missing values
Validated inventory, demand, and defect values
Created new calculated columns

Key calculated fields
Inventory gap equals inventory on hand minus safety stock
Stock status shows stock-out, safe, or excess
Cost of poor quality equals defect quantity multiplied by unit cost

SQL ANALYSIS (MYSQL)
Cleaned data was imported into MySQL.
SQL was used to answer business questions.

SQL analysis included
Inventory gap analysis
Stock-out product identification
Excess inventory detection
Supplier defect analysis
Cost of poor quality calculation
Warehouse-wise inventory analysis

SQL queries were saved as reusable files.

POWER BI DASHBOARD
Power BI was used to build interactive dashboards.

Dashboard pages included
Overview
Inventory analysis
Supplier performance
Quality and cost of poor quality

DAX measures were created to calculate key KPIs dynamically.

DAX MEASURES USED
Inventory gap calculated using inventory and safety stock
Stock-out count calculated using inventory and safety stock comparison
Excess inventory count calculated using threshold logic
Total inventory calculated using inventory on hand
Total demand calculated using demand quantity
Cost of poor quality calculated using defect quantity and unit cost

KEY INSIGHTS
Several products were below safety stock
Some products were overstocked
A few suppliers caused most of the defects
One supplier contributed a major portion of cost of poor quality
Inventory imbalance was observed across warehouses

BUSINESS RECOMMENDATIONS
Increase safety stock for high-demand products
Reduce excess inventory using better demand planning
Improve quality monitoring for poor-performing suppliers
Renegotiate or replace suppliers with high quality cost
Optimize inventory distribution across warehouses

PROJECT OUTCOME
This project demonstrates practical data analyst skills.
It shows data cleaning, SQL analysis, Power BI dashboarding, and business thinking.

CONCLUSION
The supply chain analytics project successfully identified inventory and quality issues.
Data-driven recommendations were provided to improve operations and reduce costs.

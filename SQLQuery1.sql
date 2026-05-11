SELECT * 
FROM INFORMATION_SCHEMA.TABLES;

SELECT TOP 10 *
FROM Telco_customer_churn;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Telco_customer_churn';

SELECT
 Churn_label,
 COUNT(*)AS Total_Customers,
 ROUND(
 COUNT(*) *100.0 / (SELECT COUNT(*) FROM Telco_customer_churn),
 2
 )
 AS Percentage
 FROM Telco_customer_churn
 Group by Churn_label;

SELECT 
    Contract,
    Churn_Label,
    COUNT(*) AS Total_Customers
FROM Telco_customer_churn
GROUP BY Contract, Churn_Label
ORDER BY Contract;

SELECT 
    Churn_Label,
    AVG(Monthly_Charges) AS Avg_Monthly_Charges
FROM Telco_customer_churn
GROUP BY Churn_Label;

SELECT 
    Churn_Label,
    AVG(Tenure_Months) AS Avg_Tenure
FROM Telco_customer_churn
GROUP BY Churn_Label;

SELECT 
    Internet_Service,
    Churn_Label,
    COUNT(*) AS Total_Customers
FROM Telco_customer_churn
GROUP BY Internet_Service, Churn_Label
ORDER BY Internet_Service;

SELECT 
    Churn_Reason,
    COUNT(*) AS Total_Reasons
FROM Telco_customer_churn
WHERE Churn_Label = 'Yes'
GROUP BY Churn_Reason
ORDER BY Total_Reasons DESC;
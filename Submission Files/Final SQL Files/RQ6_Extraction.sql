-- SQL Query to Extract Data for Neural Network Poverty Prediction
-- This query joins data from multiple tables to create a comprehensive dataset
-- for analyzing and predicting poverty rates based on infrastructure and social indicators

SELECT 
    -- Identification columns
    c.country_code,
    c.country_name,
    c.Region,
    si.year,
    
    -- Target variable: Poverty metrics
    si.Poverty_HeadcountRatio_NationalPovertyLines_Percent,
    si.Multidim_PovertyHeadcountRatio_WorldBank,
    
    -- Social indicator predictors
    si.LifeExpectancy_Total,
    si.LifeExpectancy_Female,
    si.LifeExpectancy_Male,
    si.LiteracyRate_AdultTotal,
    si.LiteracyRate_YouthTotal,
    si.Unemployment_Total_Percent,
    si.Unemployment_YouthTotal_Percent,
    si.Water_BasicDrinkingServices_PercentofPop,
    si.Water_SafelyManagedDrinkingServices_PercentofPop,
    
    -- Environmental/infrastructure predictors
    ei.ElectricityAccess_PercentofPopulation,
    ei.RenewableEnergy_Consumption_Percent,
    ei.ForestArea_PercentofLand,
    
    -- Economic predictors
    ec.GDP_CurrentUD,
    ec.GDP_Growth_Percent,
    ec.Inflation_ConsumerPrices_AnnualPercent,
    ec.Trade_PercentGDP,
    ec.Gini_Index
    
FROM 
    countries_region c
JOIN 
    social_indicators si ON c.country_code = si.country_code
LEFT JOIN 
    environmental_indicators ei ON c.country_code = ei.country_code AND si.year = ei.year
LEFT JOIN 
    economic_indicators ec ON c.country_code = ec.country_code AND si.year = ec.year
    
-- Filter for years with most complete data
WHERE 
    si.year BETWEEN 2019 AND 2022
    
-- Ensure key variables are present
AND (
    si.Poverty_HeadcountRatio_NationalPovertyLines_Percent IS NOT NULL 
    OR si.Multidim_PovertyHeadcountRatio_WorldBank IS NOT NULL
)


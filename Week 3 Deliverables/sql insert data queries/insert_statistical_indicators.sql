INSERT INTO statistical_indicators (
    country_code, 
    year, 
    BroadMoney_Ratio, 
    Classification_HouseholdConsumption, 
    Classification_NationalIndustry, 
    Classification_StatusofEmployment, 
    GovernmentFinance_Stats, 
    MonetaryandFinancial_Stats, 
    OfficialExchangeRate
)
SELECT 
    country_code, 
    year,
    MAX(CASE WHEN series_name = 'Broad money to total reserves ratio' THEN value END) AS BroadMoney_Ratio,
    MAX(CASE WHEN series_name = 'Classification of household consumption' THEN value END) AS Classification_HouseholdConsumption,
    MAX(CASE WHEN series_name = 'Classification of national industry' THEN value END) AS Classification_NationalIndustry,
    MAX(CASE WHEN series_name = 'Classification of status of employment' THEN value END) AS Classification_StatusofEmployment,
    MAX(CASE WHEN series_name = 'Compilation of government finance statistics' THEN value END) AS GovernmentFinance_Stats,
    MAX(CASE WHEN series_name = 'Compilation of monetary and financial statistics' THEN value END) AS MonetaryandFinancial_Stats,
    MAX(CASE WHEN series_name = 'Official exchange rate (LCU per US$, period average)' THEN value END) AS OfficialExchangeRate
FROM temp_statistical_indicators
GROUP BY country_code, year;

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
    BroadMoney_Ratio,
    Classification_HouseholdConsumption,
    Classification_NationalIndustry,
    Classification_StatusofEmployment,
    GovernmentFinance_Stats,
    MonetaryandFinancial_Stats,
    OfficialExchangeRate
FROM cleaned_statistical_indicators;
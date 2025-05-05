INSERT INTO public_debt_indicators (
    country_code, 
    year, 
    ExternalDebtStocks_LongTerm_CurrentUSD, 
    GrossPSD_Total_AllMaturities_USD, 
    GrossPSD_Total_LongTerm_USD, 
    GrossPSD_Total_ShortTerm_USD, 
    InterestPayments_PercentofExpense, 
    PresentValue_ExternalDebt_USD, 
    TotalDebtService_Percent
)
SELECT 
    country_code, 
    year,
    ExternalDebtStocks_LongTerm_CurrentUSD,
    GrossPSD_Total_AllMaturities_USD,
    GrossPSD_Total_LongTerm_USD,
    GrossPSD_Total_ShortTerm_USD,
    InterestPayments_PercentofExpense,
    PresentValue_ExternalDebt_USD,
    TotalDebtService_Percent
FROM cleaned_publicdebt_indicators;
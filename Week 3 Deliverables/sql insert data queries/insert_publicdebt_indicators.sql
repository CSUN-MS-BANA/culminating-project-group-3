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
    MAX(CASE WHEN series_name = 'External debt stocks, long-term (DOD, current US$)' THEN value END) AS ExternalDebtStocks_LongTerm_CurrentUSD,
    MAX(CASE WHEN series_name = 'Gross PSD, Total, All maturities, All instruments, Nominal Value, US$' THEN value END) AS GrossPSD_Total_AllMaturities_USD,
    MAX(CASE WHEN series_name = 'Gross PSD, Total, Long-term, All instruments, Nominal Value, US$' THEN value END) AS GrossPSD_Total_LongTerm_USD,
    MAX(CASE WHEN series_name = 'Gross PSD, Total, Short-term, All instruments, Nominal Value, US$' THEN value END) AS GrossPSD_Total_ShortTerm_USD,
    MAX(CASE WHEN series_name = 'Interest payments (% of expense)' THEN value END) AS InterestPayments_PercentofExpense,
    MAX(CASE WHEN series_name = 'Present value of external debt (current US$)' THEN value END) AS PresentValue_ExternalDebt_USD,
    MAX(CASE WHEN series_name = 'Total debt service (% of GNI)' THEN value END) AS TotalDebtService_Percent
FROM temp_public_debt_indicators
GROUP BY country_code, year;

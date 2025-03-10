SELECT r.[Country Code] AS country_code, 
       r.Region, 
       p.year, p.ExternalDebtStocks_LongTerm_CurrentUSD, p.GrossPSD_Total_AllMaturities_USD, p.GrossPSD_Total_LongTerm_USD, p.GrossPSD_Total_ShortTerm_USD, p.InterestPayments_PercentofExpense, p.PresentValue_ExternalDebt_USD, p.TotalDebtService_Percent, p.id
FROM countries_region r  
JOIN public_debt_indicators p  
ON r.[Country Code] = p.country_code;

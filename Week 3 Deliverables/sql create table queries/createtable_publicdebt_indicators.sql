CREATE TABLE public_debt_indicators (
    country_code TEXT,
    year INTEGER,
    ExternalDebtStocks_LongTerm_CurrentUSD REAL,
    GrossPSD_Total_AllMaturities_USD REAL,
    GrossPSD_Total_LongTerm_USD REAL,
    GrossPSD_Total_ShortTerm_USD REAL,
    InterestPayments_PercentofExpense REAL,
    PresentValue_ExternalDebt_USD REAL,
    TotalDebtService_Percent REAL
);

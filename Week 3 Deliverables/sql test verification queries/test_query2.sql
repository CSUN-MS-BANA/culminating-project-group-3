WITH all_years AS (
    SELECT country_code, year FROM economic_indicators
    UNION
    SELECT country_code, year FROM social_indicators
    UNION
    SELECT country_code, year FROM public_debt_indicators
    UNION
    SELECT country_code, year FROM environmental_indicators
    UNION
    SELECT country_code, year FROM statistical_indicators
)
SELECT y.country_code, c.country_name, y.year,
       e.GDP_CurrentUD,
       s.LifeExpectancy_Total,
       p.TotalDebtService_Percent,
       en.RenewableEnergy_Consumption_Percent,
       st.OfficialExchangeRate
FROM all_years y
LEFT JOIN countries c ON y.country_code = c.country_code
LEFT JOIN economic_indicators e ON y.country_code = e.country_code AND y.year = e.year
LEFT JOIN social_indicators s ON y.country_code = s.country_code AND y.year = s.year
LEFT JOIN public_debt_indicators p ON y.country_code = p.country_code AND y.year = p.year
LEFT JOIN environmental_indicators en ON y.country_code = en.country_code AND y.year = en.year
LEFT JOIN statistical_indicators st ON y.country_code = st.country_code AND y.year = st.year
ORDER BY y.country_code, y.year
LIMIT 20;

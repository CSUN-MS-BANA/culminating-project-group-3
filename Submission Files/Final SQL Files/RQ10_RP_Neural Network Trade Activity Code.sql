SELECT
    e.country_code,
    e.year,
    e.Trade_PercentGDP,
    e.TradeServices_PercentGDP,
    e.Inflation_ConsumerPrices_AnnualPercent,
    e.Inflation_GDPDeflator_AnnualPercent,
    e.Inflation_GDPDeflator_AnnualPercent_LinkedSeries,
    e.Gini_Index,
    s.LiteracyRate_AdultTotal,
    s.LiteracyRate_YouthTotal,
    s.Unemployment_AdvancedEducation_Percent,
    s.Unemployment_BasicEducation_Percent,
    s.Unemployment_IntermediateEducation_Percent
FROM
    economic_indicators e
LEFT JOIN
    social_indicators s
ON
    e.country_code = s.country_code
    AND e.year = s.year
WHERE
    e.country_code IN (
        'CHN', 'USA', 'GBR', 'IND', 'DEU', 'ITA', 'JPN', 'CAN', 'RUS', 'FRA',
        'AUS', 'ESP', 'KOR', 'BRA', 'IRN', 'NLD', 'TUR', 'POL', 'IDN', 'CHE',
        'SWE', 'MYS', 'SAU', 'BEL', 'EGY', 'DNK', 'PRT', 'MEX', 'PAK', 'ZAF',
        'AUT', 'NOR', 'CZE', 'HKG', 'SGP', 'ISR', 'FIN', 'THA', 'GRC', 'IRQ'
    )
ORDER BY
    e.country_code,
    e.year;

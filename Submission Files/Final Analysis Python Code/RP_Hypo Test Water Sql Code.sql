SELECT
    country_code,
    year,
    Water_BasicDrinkingServices_PercentofPop,
    Water_SafelyManagedDrinkingServices_PercentofPop,
    Water_BasicHandwashing_PercentofPop,
    Poverty_HeadcountRatio_NationalPovertyLines_Percent,
    Poverty_HeadcountRatio_SocietalPovertyLines_Percent
FROM 
    social_indicators
WHERE
    country_code IN (
        'CHN', 'USA', 'GBR', 'IND', 'DEU', 'ITA', 'JPN', 'CAN', 'RUS', 'FRA',
        'AUS', 'ESP', 'KOR', 'BRA', 'IRN', 'NLD', 'TUR', 'POL', 'IDN', 'CHE',
        'SWE', 'MYS', 'SAU', 'BEL', 'EGY', 'DNK', 'PRT', 'MEX', 'PAK', 'ZAF',
        'AUT', 'NOR', 'CZE', 'HKG', 'SGP', 'ISR', 'FIN', 'THA', 'GRC', 'IRQ'
    );

SELECT * FROM life_expectancy_analysis_view2
WHERE country_code IN ('CHN', 'USA', 'GBR', 'IND', 'DEU', 'ITA', 'JPN', 'CAN', 'RUS', 'FRA', 
                       'AUS', 'ESP', 'KOR', 'BRA', 'IRN', 'NLD', 'TUR', 'POL', 'IDN', 'CHE', 
                       'SWE', 'MYS', 'SAU', 'BEL', 'EGY', 'DNK', 'PRT', 'MEX', 'PAK', 'ZAF', 
                       'AUT', 'NOR', 'CZE', 'HKG', 'SGP', 'ISR', 'FIN', 'THA', 'GRC')
ORDER BY country_code, year;
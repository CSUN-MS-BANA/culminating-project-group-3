SELECT 
    cr.country_name,
    cr.Region,
    ei.year, 
    ei.CO2Emissions_Agriculture,
    ei.CO2Emissions_TransportEnergy,
    ei.CO2Emissions_Waste,
    ei.GreenhouseGasEmissions_TotalperCapita,
    si.LifeExpectancy_Total,
    si.LifeExpectancy_Female,
    si.LifeExpectancy_Male,
    si.MortalityRate_Air,
    si.MortalityRate_Poisoning,
    si.MortalityRate_WaterHygiene
FROM 
    environmental_indicators ei
JOIN 
    social_indicators si ON ei.country_code = si.country_code AND ei.year = si.year
JOIN 
    countries_region cr ON ei.country_code = cr.country_code
WHERE 
    ei.country_code IN ('CHN', 'USA', 'GBR', 'IND', 'DEU', 'ITA', 'JPN', 'CAN', 'RUS', 'FRA', 
                        'AUS', 'ESP', 'KOR', 'BRA', 'IRN', 'NLD', 'TUR', 'POL', 'IDN', 'CHE', 
                        'SWE', 'MYS', 'SAU', 'BEL', 'EGY', 'DNK', 'PRT', 'MEX', 'PAK', 'ZAF', 
                        'AUT', 'NOR', 'CZE', 'HKG', 'SGP', 'ISR', 'FIN', 'THA', 'GRC', 'IRQ')
ORDER BY 
    cr.country_name, ei.year;
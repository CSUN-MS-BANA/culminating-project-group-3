INSERT INTO environmental_indicators (
    country_code, 
    year, 
    ElectricityAccess_PercentofPopulation, 
    CO2Emissions_Agriculture, 
    CO2Emissions_TransportEnergy, 
    CO2Emissions_Waste, 
    ForestArea_PercentofLand, 
    RenewableEnergy_Consumption_Percent, 
    GreenhouseGasEmissions_TotalperCapita
)
SELECT 
    country_code, 
    year,
    MAX(CASE WHEN series_name = 'Access to electricity (% of population)' THEN value END) AS ElectricityAccess_PercentofPopulation,
    MAX(CASE WHEN series_name = 'Carbon dioxide (CO2) emissions from Agriculture (Mt CO2e)' THEN value END) AS CO2Emissions_Agriculture,
    MAX(CASE WHEN series_name = 'Carbon dioxide (CO2) emissions from Transport (Energy) (Mt CO2e)' THEN value END) AS CO2Emissions_TransportEnergy,
    MAX(CASE WHEN series_name = 'Carbon dioxide (CO2) emissions from Waste (Mt CO2e)' THEN value END) AS CO2Emissions_Waste,
    MAX(CASE WHEN series_name = 'Forest area (% of land area)' THEN value END) AS ForestArea_PercentofLand,
    MAX(CASE WHEN series_name = 'Renewable energy consumption (% of total final energy consumption)' THEN value END) AS RenewableEnergy_Consumption_Percent,
    MAX(CASE WHEN series_name = 'Total greenhouse gas emissions excluding LULUCF per capita (t CO2e/capita)' THEN value END) AS GreenhouseGasEmissions_TotalperCapita
FROM temp_environmental_indicators
GROUP BY country_code, year;

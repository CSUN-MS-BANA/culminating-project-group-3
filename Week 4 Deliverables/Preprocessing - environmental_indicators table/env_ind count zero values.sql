SELECT 
    SUM(CASE WHEN country_code = '0' OR country_code = '' THEN 1 ELSE 0 END) AS zero_country_code,
    SUM(CASE WHEN year = 0 THEN 1 ELSE 0 END) AS zero_year,
    SUM(CASE WHEN ElectricityAccess_PercentofPopulation = 0 THEN 1 ELSE 0 END) AS zero_electricity_access,
    SUM(CASE WHEN CO2Emissions_Agriculture = 0 THEN 1 ELSE 0 END) AS zero_co2_agriculture,
    SUM(CASE WHEN CO2Emissions_TransportEnergy = 0 THEN 1 ELSE 0 END) AS zero_co2_transport,
    SUM(CASE WHEN CO2Emissions_Waste = 0 THEN 1 ELSE 0 END) AS zero_co2_waste,
    SUM(CASE WHEN ForestArea_PercentofLand = 0 THEN 1 ELSE 0 END) AS zero_forest_area,
    SUM(CASE WHEN RenewableEnergy_Consumption_Percent = 0 THEN 1 ELSE 0 END) AS zero_renewable_energy,
    SUM(CASE WHEN GreenhouseGasEmissions_TotalperCapita = 0 THEN 1 ELSE 0 END) AS zero_ghg_emissions
FROM environmental_indicators;

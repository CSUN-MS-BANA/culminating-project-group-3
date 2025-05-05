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
    ElectricityAccess_PercentofPopulation, 
    CO2Emissions_Agriculture, 
    CO2Emissions_TransportEnergy, 
    CO2Emissions_Waste, 
    ForestArea_PercentofLand, 
    RenewableEnergy_Consumption_Percent, 
    GreenhouseGasEmissions_TotalperCapita
FROM cleaned_environmental_indicators;
**countries table**
- (country_code,country_name)

**economic_indicators table**
- (country_code, year, fdi_net_currentud, fdi_netinflows_percentgdp,
  fdi_netinflows_currentud, fdi_netoutflows_percentgdp, fdi_netoutflows_currentud,
  gdp_currentud, gdp_growth_percent, general_government_final_consumption_expenditure,
  gini_index, gross_national_expenditure_currentud, inflation_gdpdeflator_annualpercent,
  inflation_gdpdeflator_annualpercent_linkedseries, militaryexpenditure_currentud,
  net_trade_goods,currentud,trade_percentgdp, tradeservices_percentgdp)

**environmental_indicators table**
- (country_code, year, electricityaccess_percentofpopulation, co2emissions_agriculture,
  co2emissions_transportenergy, co2emissions_waste, forestarea_percentofland,
  renewableenergy_consumption_percent, greenhousegasemissions_totalpercapita)

**social_indicators table**
- (country_code, year, lifeexpectancy_female, lifeexpectancy_male, lifeexpectancy_total,
  literacyrate_adulttotal, literacyrate_youthtotal, multidim_povertyheadcountratio_UDP,
  multidim_povertyheadcountratio_worldbank, water_basicdrinkinservices_percentofpop,
  water_safelymanageddrinkingservices_percentofpop, water_basichandwashing_percentofpop,
  poverty_headcountratio_nationalpovertylines_percent, poverty_headcountratio_societalpovertylines_percent,
  unemployment_advancededucation_percent, unemployment_basiceducation_percent, unemployment_intermediateeducation_percent,
  unemployment_total_percent, unemployment_youthtotal_percent)

**statistical_indicators table**
- (country_code, year, broadmoney_ratio, classification_householdconsumption, classification_nationalindustry,
    classification_statusofemployment, governmentfinance_stats, monetaryandfinancial_stats, officialexchangerate)

**public_debt_indicators table**
- (country_code, year, externaldebtstocks_longterm_currentusd, grosspsd_total_allmaturities_usd,
    grosspsd_total_longterm_usd, grosspsd_total_shortterm_usd, interestpayments_percentofexpense,
    presentvalue_externaldebt_usd, totaldebtservice_percent)

SELECT 
    e.*,  
    c.country_name,  -- Add country name
    c.region  -- Add region
FROM environmental_indicators e
LEFT JOIN countries_region c
ON e.country_code = c.country_code;
SELECT 
    s.*, 
    c.country_name, 
    c.region
FROM statistical_indicators s
LEFT JOIN countries_region c
ON s.country_code = c.country_code;
SELECT 
    s.*, 
    c."Country Name" AS country_name, 
    c.Region
FROM economic_indicators s
LEFT JOIN countries_region c
ON s.country_code = c."Country Code";

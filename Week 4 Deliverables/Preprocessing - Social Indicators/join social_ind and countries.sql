SELECT
    s.*,
    c."Country Name" AS country_name,
    c."Region" AS region
FROM social_indicators s
LEFT JOIN countries_region c
ON s.country_code = c."Country Code";
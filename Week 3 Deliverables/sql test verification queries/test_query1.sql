SELECT 'countries' AS table_name, COUNT(*) FROM countries
UNION ALL
SELECT 'economic_indicators', COUNT(*) FROM economic_indicators
UNION ALL
SELECT 'social_indicators', COUNT(*) FROM social_indicators
UNION ALL
SELECT 'public_debt_indicators', COUNT(*) FROM public_debt_indicators
UNION ALL
SELECT 'environmental_indicators', COUNT(*) FROM environmental_indicators
UNION ALL
SELECT 'statistical_indicators', COUNT(*) FROM statistical_indicators;

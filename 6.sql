SELECT a."AIRPORT" AS airport_name, COUNT(*) AS weekend_flight_count
FROM flights f
JOIN airports a ON f.origin = a."IATA_CODE"
WHERE f.day IN (0, 6)
GROUP BY airport_name
ORDER BY weekend_flight_count DESC
LIMIT 1;

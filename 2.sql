SELECT a."AIRLINE" AS carrier_name, SUM(CAST(f.air_time AS numeric)) AS total_flying_hours
FROM flights f
JOIN airlines a ON f.carrier = a."IATA_CODE"
GROUP BY a."AIRLINE"
ORDER BY total_flying_hours DESC
LIMIT 1;
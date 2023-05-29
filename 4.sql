
SELECT a."AIRPORT" as airport_name, f.dest, SUM(CAST(f.arr_delay AS numeric)) AS total_delay
FROM flights f
JOIN airports a ON f.dest = a."IATA_CODE"
WHERE f.arr_delay IS NOT NULL AND f.arr_delay ~ '^[0-9.]+$'
GROUP BY airport_name, f.dest
ORDER BY total_delay DESC
LIMIT 1;
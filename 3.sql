select tailnum, SUM(CAST(air_time AS numeric)) AS total_flying_hours 
from flights
WHERE air_time ~ '^[0-9.]+$'
group by tailnum
order by total_flying_hours desc 
limit 1
select  p.tailnum,p.manufacturer as manufacturer, SUM(distance) as distance 
from flights f
join planes p on p.tailnum = f.tailnum
group by p.tailnum,p.manufacturer
order by distance desc
limit 1 

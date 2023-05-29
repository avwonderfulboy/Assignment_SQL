select p.tailnum,p.manufacturer as manufacturer ,count(*) 
from flights f
join planes p on p.tailnum = f.tailnum
group by p.tailnum,p.manufacturer
order by count(*) desc limit 1
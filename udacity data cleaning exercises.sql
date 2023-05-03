select concat(s.id, '_', r.name) as EMP_ID_REGION, s.name
from 
sales_reps s
join
region r
on s.region_id = r.id
order by s.name, EMP_ID_REGION

select name account_name, concat(lat,long) coordinate, concat(left(primary_poc,1),right(primary_poc,1),'@',SUBSTRING(website,5,30)) email_id
from                                                                                           
accounts

WITH T1 AS (
 SELECT ACCOUNT_ID, CHANNEL, COUNT(*) 
 FROM WEB_EVENTS
 GROUP BY ACCOUNT_ID, CHANNEL
-- ORDER BY ACCOUNT_ID
)
SELECT CONCAT(T1.ACCOUNT_ID, '_', T1.CHANNEL, '_', COUNT)
FROM T1;
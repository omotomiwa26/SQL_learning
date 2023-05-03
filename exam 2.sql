select 
genre_id,
min(release_date) as release_date
from
albums
group by genre_id
order by genre_id

select
year(record_label_contract_start_date) as start_year,
count(*),
'record label artist'
from 
artists a
where record_label_contract_start_date is not null
group by year(record_label_contract_start_date)
order by start_year;
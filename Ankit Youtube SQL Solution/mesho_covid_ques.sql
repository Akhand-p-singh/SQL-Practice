select MONTH(record_date) record_month, SUM(cases_count) total_count
from mesho_covid_ques
group by month(record_date)
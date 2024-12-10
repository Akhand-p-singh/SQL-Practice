-- Difficulty Mode:  Medium          Platform: MySQL   

-- Link: https://platform.stratascratch.com/coding/9728-inspections-that-resulted-in-violations?code_type=3

select year(inspection_date) as All_year, count(inspection_id) no_of_violations
from sf_restaurant_health_violations
where business_name = 'Roxanne Cafe'
group by All_year
order by All_year
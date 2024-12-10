-- Difficulty Mode: Medium       Platform: MySQL           

-- Link: https://platform.stratascratch.com/coding/10028-find-the-number-of-wines-of-each-variety-that-has-been-tasted-by-each-taster?tabname=question

select business_name, count(violation_id) no_of_violation
from sf_restaurant_health_violations
where business_name like '%school%'  and violation_id is not null
group by business_name
order by no_of_violation desc
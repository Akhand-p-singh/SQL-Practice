/* ID 2144 - Flight Satisfaction 2022

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/2144-flight-satisfaction-2022?code_type=1 */

select class, round(avg(satisfaction))
from survey_results sr
join loyalty_customers lc
on sr.cust_id = lc.cust_id
where age between 30 and 40
group by class
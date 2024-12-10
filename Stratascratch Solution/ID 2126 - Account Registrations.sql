/* Difficulty Mode: Easy       Platform: MySQL   

Link: https://platform.stratascratch.com/coding/2126-account-registrations?tabname=question */

select Date_format(started_at, '%Y-%m') Month, count(plan_id) total_signup
from noom_signups
group by Date_format(started_at, '%Y-%m')
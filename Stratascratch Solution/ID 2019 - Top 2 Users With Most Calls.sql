/* Difficulty Mode:  Medium       **Platform: PostgreeSQL  

Link: https://platform.stratascratch.com/coding/2019-top-2-users-with-most-calls?code_type=1 */

with cte as ( select company_id, ru.user_id  , count(call_id) total_count , Dense_rank() over(partition by company_id order by count(call_id) desc) rnk 
from  rc_users ru  
join rc_calls rc
on  rc.user_id = ru.user_id
group by company_id,  ru.user_id )

select company_id, user_id, rnk
from cte 
where rnk <=2
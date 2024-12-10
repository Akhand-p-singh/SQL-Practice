/* Difficulty Mode:  Medium       **Platform: PostgreeSQL  

Link: https://platform.stratascratch.com/coding/9922-highest-checkouts?code_type=1 */

select count(*), total_checkouts
from library_usage
where total_checkouts < 10
group by total_checkouts
order by total_checkouts desc
/* Difficulty Mode:  Medium       **Platform: PostgreeSQL  

Link: https://platform.stratascratch.com/coding/9759-nfl-powerhouse-colleges?code_type=1 */

select college, count(*) total
from nfl_combine
where college <> ''
group by college
order by total desc


/* Difficulty Mode:  Medium       **Platform: PostgreeSQL  

Link: https://platform.stratascratch.com/coding/9657-find-the-year-which-had-the-highest-number-of-players?code_type=1 */

select year, count(*) total_player
from nfl_combine
group by year
order by total_player desc
limit 1
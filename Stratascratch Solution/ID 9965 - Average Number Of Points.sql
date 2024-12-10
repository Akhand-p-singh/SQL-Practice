/* ID 9965 - Average Number Of Points

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9965-average-number-of-points?code_type=1 */ 

select year, qb, avg(game_points)
from qbstats_2015_2016
group by year, qb
order by year desc
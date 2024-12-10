/* ID 9970 - QBs With Most Attempts

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9970-qbs-with-most-attempts?code_type=1 */


select qb, sum(att) as total_attempts
from qbstats_2015_2016
where year = 2016
group by qb
order by total_attempts desc
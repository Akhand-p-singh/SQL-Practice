/* ID 9967 - QB With Highest TDs

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9967-qb-with-highest-tds?code_type=1 */


select qb, sum(td) as td
from qbstats_2015_2016
where year = 2016
group by qb
order by sum(td) desc
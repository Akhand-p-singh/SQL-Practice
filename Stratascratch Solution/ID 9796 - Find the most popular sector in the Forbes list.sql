/* ID 9796 - Find the most popular sector in the Forbes list

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9796-find-the-most-popular-sector-in-the-forbes-list?code_type=1 */ 

select sector, count(company) total_company
from forbes_global_2010_2014
group by sector
order by total_company  desc
limit 1
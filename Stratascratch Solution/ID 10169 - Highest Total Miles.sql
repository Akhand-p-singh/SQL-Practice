-- Difficulty Mode: Medium       Platform: MySQL          

-- Link: https://platform.stratascratch.com/coding/10169-highest-total-miles?tabname=question

select purpose, sum(miles)
from my_uber_drives
where category = 'Business'
group by purpose
order by sum(miles) desc
limit 3
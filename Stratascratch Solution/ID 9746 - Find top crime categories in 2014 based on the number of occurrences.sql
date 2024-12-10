/* ID 9746 - Find top crime categories in 2014 based on the number of occurrences

Difficulty Mode: Medium      Platform: PostgreSQL          

Link: https://platform.stratascratch.com/coding/9746-find-top-crime-categories-in-2014-based-on-the-number-of-occurrences?code_type=1 */


select category, Count(distinct incidnt_num) total_count
from sf_crime_incidents_2014_01
where extract(year from date) = 2014
group by category
order by total_count desc
/* Difficulty Mode: Medium       Platform: MySQL   

Link:  https://platform.stratascratch.com/coding/2100-salary-by-education?code_type=3 */

SELECT education, avg(salary) avg_salary
from google_salaries
group by education
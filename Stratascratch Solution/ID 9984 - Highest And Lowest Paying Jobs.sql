/* ID 9984 - Highest And Lowest Paying Jobs

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9984-highest-and-lowest-paying-jobs?code_type=1 */


SELECT jobtitle, max(totalpay) - min(totalpay) AS diff, 
max(totalpay) / min(totalpay) as ratio,
max(totalpay) ,  min(totalpay)

from sf_public_salaries
where totalpay != 0
group by jobtitle
order by ratio desc
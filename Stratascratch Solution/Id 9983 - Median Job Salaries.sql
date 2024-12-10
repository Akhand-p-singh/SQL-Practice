/* Difficulty Mode:  Hard       **Platform: PostgreeSQL  

Link: https://platform.stratascratch.com/coding/9983-median-job-salaries?code_type=1 */

Select jobtitle, percentile_cont(0.5) within group(order by totalpay) median_pay
from sf_public_salaries
group by jobtitle
order by median_pay desc
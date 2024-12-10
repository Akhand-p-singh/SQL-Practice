/* ID 2130 - Duplicate Training Lessons

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/2130-duplicate-training-lessons?code_type=1 */ 


select u_name, training_id, training_date, count()
from users_training ut
join training_details td
on ut.u_id = td.u_id
group by u_name, training_id, training_date
having count() >1


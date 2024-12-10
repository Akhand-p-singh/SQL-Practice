/* ID 9668 - English, German, French, Spanish Speakers

Difficulty Mode:  Medium      Platform: PostgreSQL          

Link: https://platform.stratascratch.com/coding/9668-english-german-french-spanish-speakers?code_type=1 */

select company_id
from playbook_users
where language in('english', 'german', 'french', 'spanish')
group by company_id
having (count(distinct user_id)) > 2
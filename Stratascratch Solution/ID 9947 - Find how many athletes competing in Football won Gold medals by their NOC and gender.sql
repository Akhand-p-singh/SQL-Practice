/* ID 9947 - Find how many athletes competing in Football won Gold medals by their NOC and gender

Difficulty Mode: Medium      Platform: PostgreSQL          

Link: https://platform.stratascratch.com/coding/9947-find-how-many-athletes-competing-in-football-won-gold-medals-by-their-noc-and-gender?code_type=1 */

select noc, sex, count(*) n_athletes
from olympics_athletes_events
where sport = 'Football' and medal = 'Gold'
group by  noc, sex
order by  n_athletes
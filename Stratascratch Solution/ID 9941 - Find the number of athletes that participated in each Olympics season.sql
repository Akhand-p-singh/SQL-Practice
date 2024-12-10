/* ID 9941 - Find the number of athletes that participated in each Olympics season

Difficulty Mode: Medium      Platform: PostgreSQL          

Link: https://platform.stratascratch.com/coding/9941-find-the-number-of-athletes-that-participated-in-each-olympics-season?code_type=1 */

select  season, count(distinct id) total_athletes
from olympics_athletes_events
group by season
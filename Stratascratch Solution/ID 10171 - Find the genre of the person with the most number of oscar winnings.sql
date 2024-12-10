/* 1. ID 10171 - **Find the genre of the person with the most number of oscar winnings**

**Difficulty Mode:** Hard       **Platform:** PostgreSQL        

Link: https://platform.stratascratch.com/coding/10171-find-the-genre-of-the-person-with-the-most-number-of-oscar-winnings?code_type=1 */


Select top_genre, name, count(winner) as total_win
from oscar_nominees o
join nominee_information ni
on o.nominee = ni.name
where winner = 'True' 
group by top_genre, name
order by count(winner) desc
limit 1
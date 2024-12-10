
/* https://datalemur.com/questions/sql-third-transaction 

Dificulty: Medium
 
*/


With cte as (
select *, Rank() over(partition by user_id order by transaction_date) rnk
from transactions
)

SELECT user_id, spend,transaction_date
from cte 
where rnk = 3
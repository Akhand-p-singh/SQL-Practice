select * from icc_world_cup;

-- Output- Team Name, Matches_played, no_of_wins, no_of_losses        == > no.of rows - 6

with cte as (
Select Team_1 as team_name, case when Team_1 = Winner then 1 else 0 end as flag
from icc_world_cup 
union all
Select Team_2 as team_name, case when Team_2 = Winner then 1 else 0 end as flag
from icc_world_cup 
)

select team_name, COUNT(team_name) matched_played, SUM(flag) as no_of_matches_won, COUNT(team_name) - SUM(flag) as no_of_losses
from cte
group by team_name
order by no_of_matches_won desc
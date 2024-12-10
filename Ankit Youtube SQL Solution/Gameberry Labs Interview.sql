/* Ques: Get a distribution of games of total games) based on the social interaction that is happening during 
the games. Please consider the following as the categories for getting the distribution:

• No Social Interaction ( No messages, emojis or gifts sent during the game)
• One sided interaction (Messages, emojis or gifts sent during the game by only one player)
• Both sided Interaction without custom_typed messages
• Both sided interaction with customed_types_messages from at least one player

Context: During a game, the users have the ability to socially interact with each other by sending
custom typed messages. preloaded quick messages emojis or game gifts. The sample entries for one
of the games is provided below */
Select * from user_interactions

Select game_id, case when count(interaction_type) = 0 then 'No Social Interaction' 
 when count(distinct case when interaction_type is not null then user_id end ) = 1 then  'one sided Interaction'
 when count(distinct case when interaction_type is not null then user_id end ) = 2
 and  count(distinct case when interaction_type = 'custom_typed' then user_id end ) = 0 then  'Both sided Interaction without custom_typed messages'
 when count(distinct case when interaction_type is not null then user_id end ) = 2
 and  count(distinct case when interaction_type = 'custom_typed' then user_id end ) >=1 then  'Both sided interaction with customed_types_messages from at least one player'
 end as type
from user_interactions
group by game_id


select game_id, COUNT(interaction_type)
from user_interactions
group by game_id
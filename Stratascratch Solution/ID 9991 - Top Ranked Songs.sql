/* ID 9991 - Top Ranked Songs

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9991-top-ranked-songs?code_type=1 */


select trackname, count(position) total_ranking
from spotify_worldwide_daily_song_ranking
where position = 1
group by trackname
order by total_ranking desc
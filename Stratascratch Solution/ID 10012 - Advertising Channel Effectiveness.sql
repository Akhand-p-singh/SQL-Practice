/* ID 10012 - Advertising Channel Effectiveness

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/10012-advertising-channel-effectiveness?code_type=1 */


Select advertising_channel, sum(money_spent)/ sum(customers_acquired) as advert_effectiveness
from uber_advertising
where year between '2017' and '2018'
group by advertising_channel
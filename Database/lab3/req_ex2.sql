/*Вывести 10 танцоров, которые 
чаще всего участвовали в соревнованиях*/

select first 10 
count(*) as num_of_comp, d.firstname, d.secondname
from competition_result r
join dancer d on r.partner_id = d.ASH_id or r.leader_id = d.ASH_id
group by d.ASH_id, d.firstname, d.secondname
order by num_of_comp desc;
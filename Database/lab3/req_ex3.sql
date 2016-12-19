/*Вывести 10 мероприятий с наименьшим отношением 
суммарных спонсорских взносов к количеству участников.*/

select first 10 
sum(sub.subsidy)/h.num_of_participant as sub_TO_num, 
c.name, c.city, h.date_start
from competition_history h
join sponsor_competition sc on h.comp_h_id = sc.comp_h_id
join subsidy_for_competition sub on sc.subsidy_id = sub.subsidy_id
join competition c on h.comp_id = c.comp_id
group by c.name, c.city, h.date_start, h.num_of_participant
order by subTOnum;


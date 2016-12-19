/*Создайте запрос, вычисляющий несколько совокупных характеристик таблиц*/
select
	count(*),
	avg(num_of_participant) as avg_num_of_participants,
	avg(cost_of_participation) as avg_cost_of_participation,
	avg(num_of_guest) as avg_num_of_guest,
	avg(cost_of_entrance) as avg_cost_of_entrance
from
	competition_history
group by comp_id;


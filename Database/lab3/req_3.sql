/*Создайте в запросе вычисляемое поле*/
select 
	c.name,
	b.name as organisator,
	h.num_of_guest as visitors,
	h.cost_of_participation*h.num_of_participant+h.cost_of_entrance*h.num_of_guest as income
from competition c
	join competition_history h on h.comp_id = c.comp_id
	join club b on b.club_id = c.organizer
where 
	h.date_start between '1.1.2016' and '31.12.2016';
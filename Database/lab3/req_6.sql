/*сделать выборку из связанных таблиц*/
select 
	c.name,
	h.date_start,
	h.date_end,
	c.organizer
from competition c
	join competition_history h on h.comp_id = c.comp_id
where c.city = 'Санкт-Петербург';

select
	d.firstname,
	d.secondname,
	j.rank
from dancer d
	join dancer_ASH a on a.ASH_id = d.ASH_id
	join judge j on a.ASH_id = j.ASH_id;
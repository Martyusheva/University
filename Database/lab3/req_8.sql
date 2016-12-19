/*Придумайте и реализуйте пример использования вложенного запроса*/
/*select 
	d.firstname,
	d.secondname,
	(select name from club b
		where b.club_id in (selec c.club_id from dancer_club c 
					where c.dancer_id = d.dancer_id)) as clubs,
	
	a.class,
	a.class_DND,
	count(select point from competition_history h
		where a.ASH_id = h.partner_id)
from dancer d
	join dancer_ASH a on d.ASH_id = a.ASH_id
where 
	a.ASH_id = 8595;*/

select  
	dancer_id,
	(select firstname from dancer d where c.dancer_id = d.dancer_id) as firstname,
	(select secondname from dancer d where c.dancer_id = d.dancer_id) as secondname
from 	dancer_club c
where 
	club_id in (select club_id from club where city = 'Санкт-Петербург');
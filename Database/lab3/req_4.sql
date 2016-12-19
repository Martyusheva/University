/*Выборка с сортировкой*/
select first 20 
	firstname, 
	secondname, 
	ASH_id
from dancer
order by ASH_id desc;

select first 40 
	name, 
	city
from club
where club_id < 200
order by city, name, club_id;
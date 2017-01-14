/*Вывести 5 клубов, участники которых 
чаще всего становились судьями 
после этого не участвовали в соревнованиях, как танцоры.*/

set term ^;
create or alter procedure club_judge_dancer
returns (
	club_name varchar(20), 
	club_city varchar(20), 
	num_not_dancer_judge integer, 
	num_dancer integer, 
	frequency float )
as
declare variable club_id int not null;
declare variable valid_judge_date date not null;
declare variable last_comp_date date not null;
declare variable cur_f cursor for(
select 
	dc.club_id,
	count(*) as num_judge	
from judge j
	join dancer d on j.ASH_id = d.ASH_id
	join dancer_club dc on d.dancer_id = dc.dancer_id
group by dc.club_id);
declare variable cur_s cursor for(
select 
	j.date_valid as valid_judge,
	max(h.date_start) as last_comp	
from judge j
join	competition_result r 
	on j.ASH_id=r.leader_id or j.ASH_id=r.partner_id
join	competition_history h	on r.comp_h_id = h.comp_h_id
join dancer d on j.ASH_id = d.ASH_id
join dancer_club dc on d.dancer_id = dc.dancer_id
where dc.club_id = :club_id
group by j.ASH_id, valid_judge);

begin
open cur_f;
while (1 = 1) do
begin
	fetch cur_f 
	into :club_id, :num_not_dancer_judge;
	if (row_count = 0) then leave;
	
	open cur_s;
	while (1 = 1) do
	begin
		fetch cur_s 
		into :valid_judge_date, :last_comp_date;
		if (row_count = 0) then leave;
		
		if (valid_judge_date<last_comp_date)
		then num_not_dancer_judge = num_not_dancer_judge - 1;
	end
	close cur_s;

	select	c.name, c.city, count(*) 
	from dancer_club dc
	join club c on dc.club_id = c.club_id
	where dc.club_id = :club_id
	group by c.name, c.city
	into :club_name, :club_city, :num_dancer;
	
	if (num_dancer = 0) then
		frequency = NULL;
	else frequency = cast(:num_not_dancer_judge as float)/:num_dancer;	
	suspend;
end
close cur_f;
end^

set term ;^

select first 5 * from club_judge_dancer order by frequency desc, num_not_dancer_judge desc;
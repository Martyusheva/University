set term ^;
create or alter procedure results_dinam (
	num_year int,
	date_from date
)
returns (
	ASH_id int,
	dancer_firstname varchar(20), 
	dancer_secondname varchar(20),
	club_name varchar(20),
	club_city varchar(20),  
	dinam float )
as
declare variable cur_dinam float;
declare variable last_dinam float not null;
declare variable date_st date;
declare variable date_end date;
declare variable cnt_year int;
declare variable cnt int;
declare variable cur_f cursor for(
select 
	d.ASH_id,
	d.firstname,
	d.secondname,
	c.name,
	c.city
from dancer d
join dancer_club dc on d.dancer_id = dc.dancer_id
join club c on dc.club_id = c.club_id
);

begin
open cur_f;
while (1 = 1) do
begin
	fetch cur_f 
	into :ASH_id, :dancer_firstname, :dancer_secondname, :club_name, :club_city;
	if (row_count = 0) then leave;
	
	dinam = 0.;
	last_dinam = 0.;
	cnt_year = :num_year;
	cnt = 0;
	while (cnt_year>0) do
	begin
		date_st = cast(:date_from as date) - :cnt_year*365;
		date_end = cast(:date_from as date) - :cnt_year*365 +365;
	
		select 
			avg(cast(r.plase as float)/r.num_of_part) as dinam
		from competition_result r
		join competition_history h on r.comp_h_id = h.comp_h_id
		where (r.leader_id = :ASH_id or r.partner_id = :ASH_id) and 
			(h.date_start between :date_st and :date_end)
		into :cur_dinam;
	
		if (:cur_dinam is null)
		then cur_dinam = last_dinam;

		if( :num_year = 1 or cnt = 1 and :last_dinam < 0.000001 )
		then dinam = :dinam +:cur_dinam;
		else
		begin	
			if ( cnt > 0)
			then dinam = :dinam + :last_dinam - :cur_dinam;
		end
		
		last_dinam = :cur_dinam;
	
		cnt_year = :cnt_year - 1;
		cnt = cnt + 1;	
	end	
	
	suspend;
end
close cur_f;
end^

set term ;^

select first 10 * from results_dinam(4, '25.12.2016') order by dinam desc;
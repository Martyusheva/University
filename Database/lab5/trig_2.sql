/*При попытке внесения спонсорской помощи для соревнования 
проверять, не вносились ли в течение последнего месяца 
средства клубам участников соревнования. Если вносились, 
то выбрасывать исключение.*/

CREATE EXCEPTION exist_subsidy_for_club 'Sponsor aid for competitors clubs was entered during the last month prior to the competition';

set term ^;
CREATE OR ALTER TRIGGER trg_subsidy_for_competition
before insert position 0 on sponsor_competition
as
declare variable club_id int not null;
declare variable comp_date date not null;
declare variable cnt_sub int;
begin
  select date_start
  from competition_history
  where comp_h_id = new.comp_h_id
  into :comp_date;

  for 
	select club_id
	from competition_result r
	join dancer d on d.ash_id = r.leader_id or d.ash_id = r.partner_id
	join dancer_club dc on dc.dancer_id = d.dancer_id
	where r.comp_h_id = new.comp_h_id
	group by club_id
	into :club_id
  do
  begin
	select count(*)
	from sponsor_club sc
	join subsidy_for_club subc on subc.subsidy_id = sc.subsidy_id
	where sc.sponsor_id = new.sponsor_id and sc.club_id = :club_id and subc.sub_date between :comp_date-30 and :comp_date
	into :cnt_sub;
	
	if (cnt_sub>0) then exception exist_subsidy_for_club;
  end
end^

set term ;^
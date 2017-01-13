/*ѕри добавлении/изменении данных в таблицу результатов 
провер€ть на дубль места и соответстви€ количества очков 
заносимому месту. ѕри дубл€х или несоответствии - 
выбрасывать исключение.*/

CREATE EXCEPTION duplicated 'Plase of dancers is duplicated';
CREATE EXCEPTION not_corresponded_points 'The number of points does not correspond to the place occupied by';
CREATE EXCEPTION not_raiting_nomination 'Nomination is not rating';

set term ^;
CREATE OR ALTER TRIGGER trg_plase_and_point
before insert or update position 0 on competition_result
as
declare variable cnt_plase int;
declare variable right_point int not null;
declare variable isRating dom_rating not null;
begin
  select count(*)
  from competition_result
  where comp_h_id = new.comp_h_id and nomination_id = new.nomination_id and plase = new.plase
  into :cnt_plase;
  
  if (cnt_plase>0) then
	exception duplicated;
   
  select is_rating
  from nomination
  where nomination_id = new.nomination_id
  into :isRating;

  if (new.point>0 and isRating='no') then
	exception not_raiting_nomination;

  select point
  from lib_points
  where num_of_part = new.num_of_part and plase = new.plase
  into :right_point;
	
  if (new.point != right_point) then 
	exception not_corresponded_points;
  
end^

set term ;^

create table lib_points (
	num_of_part 	int 		not null,
	plase		int	 	not null,
	point		int		not null,
	primary key (num_of_part, plase));

insert into lib_points values (70, 1, 6);
insert into lib_points values (70, 2, 5);
insert into lib_points values (70, 3, 5);
insert into lib_points values (70, 4, 4);
insert into lib_points values (70, 5, 4);
insert into lib_points values (70, 6, 3);
insert into lib_points values (70, 7, 3);
insert into lib_points values (70, 8, 3);
insert into lib_points values (70, 9, 3);
insert into lib_points values (70, 10, 3);
insert into lib_points values (70, 11, 2);
insert into lib_points values (70, 12, 2);
insert into lib_points values (70, 13, 2);
insert into lib_points values (70, 14, 2);
insert into lib_points values (70, 15, 2);
insert into lib_points values (70, 16, 2);
insert into lib_points values (70, 17, 2);
insert into lib_points values (70, 18, 2);
insert into lib_points values (70, 19, 2);
insert into lib_points values (70, 20, 1);
insert into lib_points values (70, 21, 1);
insert into lib_points values (70, 22, 1);
insert into lib_points values (70, 23, 1);
insert into lib_points values (70, 24, 1);
insert into lib_points values (70, 25, 1);
insert into lib_points values (70, 26, 1);
insert into lib_points values (70, 27, 1);
insert into lib_points values (70, 28, 1);
insert into lib_points values (70, 29, 1);
insert into lib_points values (70, 30, 1);
insert into lib_points values (70, 31, 1);
insert into lib_points values (70, 32, 1);
insert into lib_points values (70, 33, 1);
insert into lib_points values (70, 34, 1);
insert into lib_points values (70, 35, 1);
insert into lib_points values (70, 36, 0);
insert into lib_points values (70, 37, 0);
insert into lib_points values (70, 38, 0);
insert into lib_points values (70, 39, 0);
insert into lib_points values (70, 40, 0);
insert into lib_points values (70, 41, 0);
insert into lib_points values (70, 42, 0);
insert into lib_points values (70, 43, 0);
insert into lib_points values (70, 44, 0);
insert into lib_points values (70, 45, 0);
insert into lib_points values (70, 46, 0);
insert into lib_points values (70, 47, 0);
insert into lib_points values (70, 48, 0);
insert into lib_points values (70, 49, 0);
insert into lib_points values (70, 50, 0);
insert into lib_points values (70, 51, 0);
insert into lib_points values (70, 52, 0);
insert into lib_points values (70, 53, 0);
insert into lib_points values (70, 54, 0);
insert into lib_points values (70, 55, 0);
insert into lib_points values (70, 56, 0);
insert into lib_points values (70, 57, 0);
insert into lib_points values (70, 58, 0);
insert into lib_points values (70, 59, 0);
insert into lib_points values (70, 60, 0);
insert into lib_points values (70, 61, 0);
insert into lib_points values (70, 62, 0);
insert into lib_points values (70, 63, 0);
insert into lib_points values (70, 64, 0);
insert into lib_points values (70, 65, 0);
insert into lib_points values (70, 66, 0);
insert into lib_points values (70, 67, 0);
insert into lib_points values (70, 68, 0);
insert into lib_points values (70, 69, 0);
insert into lib_points values (70, 70, 0);
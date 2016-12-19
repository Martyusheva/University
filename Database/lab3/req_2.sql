/*Выберем из таблицы поля по некоторому условию*/
select name 
from club 
where club_id < 200 and city = 'Санкт-Петербург';

select name 
from club 
where name like '%Dance%';

select comp_id, date_start, date_end 
from competition_history 
where date_start between '1.6.2016' and '31.8.2016';

select comp_h_id, nomination_id, plase,	leader_id, partner_id
from competition_result
where plase in (1, 6);

		
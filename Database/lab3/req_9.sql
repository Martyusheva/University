/*С помощью оператора INSERT добавьте в каждую таблицу 
по одной записи*/

insert into club values 
	(100, 'Smile', 'Москва');
insert into dancer values
	(13, 'Мавлатов', 'Юрий', 1450);
insert into dancer_ASH values
	(1450, 'A', 'S');
insert into dancer_club values
	(13, 100);
nsert into club_leader values
	(100, 13);
insert into judge values
	(8, 1450, 1, '12.6.2011');
insert into nomination values
	(8, 'ABC', 'yes');

insert into competition values
	(4, 'Halloween-Cup', 'Санкт-Петербург', 144);

insert into competition values
	(5, 'Кубок морской славы', 'Санкт-Петербург', 0);

insert into competition_history values
	(5, 4, '29.10.2016', '29.10.2016', 200, 300, 230, 300);

insert into competition_history values
	(6, 5, '20.11.2016', '20.11.2016', 300, 300, 346, 300);

insert into competition_judge value
	(5, 6);

insert into competition_result (comp_h_id, nomination_id, plase, point,	partner_id) values
	(5, 4, 8, 2, 8595);

insert into competition_result (comp_h_id, nomination_id, plase, point,	partner_id) values
	(6, 4, 7, 2, 8595);

insert into competition_result value
	(6, 2, 1, 3, 9077, 8595);

insert into competition_nomination values
	(5, 2);

insert into sponsor values 
	(2, 'YouDance', 'Москва', 'club');
insert into sponsor_club values
	(1, 2, 144);
insert into sponsor_competition values
	(3, 1, 3);
insert into subsidy_for_club values
	('15.8.2015', 240000, 1, 2);
insert into subsidy_for_competition values
	('24.9.2016', 5000, 2, 2);
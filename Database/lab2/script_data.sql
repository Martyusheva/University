/*Клубы*/
/*insert into club values 
	(142, 'Мегаполис', 'Москва');

insert into club values 
	(143, 'Мегаполис', 'Санкт-Петербург');

insert into club values 
	(144, 'Dance Drive', 'Санкт-Петербург');

insert into club values 
	(146, 'MMDance', 'Санкт-Петербург');

insert into club values 
	(137, 'Project', 'Екатеренбург');

insert into club values 
	(174, 'AlphaDance', 'Москва');

insert into club values 
	(183, 'YouDance', 'Санкт-Петербург');

insert into club values 
	(40, 'Движение', 'Москва');

insert into club values 
	(60, 'Strikly', 'Санкт-Петербург');*/

/*Танцоры*/
insert into dancer values
	(1, 'Белякова', 'Анастасия', 627);

insert into dancer values
	(2, 'Васинева', 'Полина', 6004);

insert into dancer values
	(3, 'Цветкова', 'Елена', 2742);

insert into dancer values
	(4, 'Корочкин', 'Федор', 5993);

insert into dancer values
	(5, 'Маликова', 'Мария', 3163);

insert into dancer values
	(6, 'Милованов', 'Александр', 502);

insert into dancer values
	(7, 'Пузанова', 'Ирина', 1185);

insert into dancer values
	(8, 'Сова', 'Алексей', 1161);

insert into dancer values
	(9, 'Свителев', 'Александр', 2207);

insert into dancer values
	(10, 'Апрелев', 'Николай', 2767);

insert into dancer values
	(11, 'Мартюшева', 'Надежда', 8595);

/*Клуб - Руководитель*/
insert into club_leader values
	(143, 7);

insert into club_leader values
	(144, 9);

insert into club_leader values
	(146, 5);

insert into club_leader values
	(137, 3);

insert into club_leader values
	(40, 6);

insert into club_leader values
	(60, 8);

/*Танцор - Клуб*/
insert into dancer_club values
	(7, 143);

insert into dancer_club values
	(10, 143);

insert into dancer_club values
	(9, 144);

insert into dancer_club values
	(5, 146);

insert into dancer_club values
	(3, 137);

insert into dancer_club values
	(6, 40);

insert into dancer_club values
	(1, 40);

insert into dancer_club values
	(8, 60);

insert into dancer_club values
	(2, 144);

insert into dancer_club values
	(4, 144);

insert into dancer_club values
	(11, 144);

/*Танцор АСХ*/
insert into dancer_ASH values
	(627, 'A', 'S');

insert into dancer_ASH values
	(6004, 'B', 'RS');

insert into dancer_ASH values
	(2742, 'D', 'M');

insert into dancer_ASH values
	(5993, 'B', 'RS');

insert into dancer_ASH values
	(3163, 'A', 'Ch');

insert into dancer_ASH values
	(502, 'A', 'S');

insert into dancer_ASH values
	(1185, 'A', 'S');

insert into dancer_ASH values
	(1161, 'A', 'S');

insert into dancer_ASH values
	(2207, 'A', 'S');

insert into dancer_ASH values
	(2767, 'A', 'Ch');

insert into dancer_ASH values
	(8595, 'E', 'Bg');

/*Судьи АСХ*/
insert into judge values
	(1, 627, 1);

insert into judge values
	(2, 5993, 3);

insert into judge values
	(3, 502, 1);

insert into judge values
	(4, 1185, 1);

insert into judge values
	(5, 1161, 3);

insert into judge values
	(6, 2207, 1);

insert into judge values
	(7, 2767, 3);

/*Конкурсы*/
insert into competition values
	(1, 'Starship', 'Санкт-Петербург', 143);

insert into competition values
	(2, 'Leningrad-Cup', 'Санкт-Петербург', 144);

insert into competition values
	(3, 'Кубок Белых Ночей', 'Санкт-Петербург', 144);

/*Номинации*/
insert into nomination values
	(1, 'Дебют', 'no');

insert into nomination values
	(2, 'E', 'yes');

insert into nomination values
	(3, 'D', 'yes');

insert into nomination values
	(7, 'C', 'yes');

insert into nomination values
	(4, 'Bg', 'yes');

insert into nomination values
	(5, 'RS', 'yes');

insert into nomination values
	(6, 'Stricly-Космос', 'no');

/*История конкурсов*/
insert into competition_history values
	(1, 1, '30.7.2016', '31.7.2016', 200, 200);

insert into competition_history values
	(2, 2, '24.9.2016', '24.9.2016', 340, 300);

insert into competition_history values
	(3, 3, '13.6.2015', '14.6.2015', 400, 300);

insert into competition_history values
	(3, 4, '25.6.2016', '25.6.2016', 380, 250);

/*Результаты конкурсов*/
insert into competition_result values
	(4, 7, 1, 1, 5993, 6004);

insert into competition_result (comp_h_id, nomination_id, plase, point,	partner_id) values
	(2, 4, 12, 1, 8595);

/*insert into competition_result value
	(, , , , ,);*/

/*Конкурс - Судьи*/
insert into competition_judge value
	(1, 7);

insert into competition_judge value
	(1, 4);

insert into competition_judge value
	(2, 1);

insert into competition_judge value
	(2, 6);

/*Конкурс - Номинации*/
insert into competition_nomination values
	(1, 2);

insert into competition_nomination values
	(1, 3);

insert into competition_nomination values
	(1, 4);

insert into competition_nomination values
	(2, 1);

insert into competition_nomination values
	(2, 4);
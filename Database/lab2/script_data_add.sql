insert into sponsor values 
	(1, 'Dance Line', 'Санкт-Петербург', 'shop');

insert into sponsor values 
	(2, 'YouDance', 'Москва', 'club');

insert into sponsor_club values
	(1, 2, 144);

insert into subsidy_for_club values
	('5.12.2014', 150000, 1, 1);

insert into subsidy_for_club values
	('15.8.2015', 240000, 1, 2);

insert into sponsor_competition values
	(1, 1, 1);

insert into sponsor_competition values
	(2, 1, 2);

insert into sponsor_competition values
	(3, 1, 3);

insert into subsidy_for_competition values
	('30.7.2016', 25000, 1, 1);

insert into subsidy_for_competition values
	('24.9.2016', 5000, 2, 2);

insert into subsidy_for_competition values
	('13.6.2015', 13000, 3, 3);
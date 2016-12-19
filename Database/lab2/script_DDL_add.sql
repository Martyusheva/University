create domain sponsor_type as 
	varchar(4) default 'shop'
	check (value in ('shop', 'club', 'mgzn', 'oth'));

alter table 	competition_history
alter column 	cost 	to 	cost_of_participation,
add		num_of_guest int,
add		cost_of_entrance int;

create table sponsor (
	sponsor_id	int				primary key,
	name		varchar(30)	not null,
	city		varchar(25)	not null,
	type_sp		sponsor_type	);

create table sponsor_club(
	subsidy_id	int			primary key,
	sponsor_id	int	not null	references sponsor(sponsor_id),
	club_id		int	not null	references club(club_id));

create table subsidy_for_club(
	subsidy_id	int			references sponsor_club(subsidy_id),
	subsidy_h_id	int			primary key,
	sub_date	date	not null,
	subsidy		decimal(6, 2)) not null;

create table sponsor_competition(
	subsidy_id	int			primary key,
	sponsor_id	int	not null	references sponsor(sponsor_id),
	comp_h_id	int	not null	references competition_history(comp_h_id));

create table subsidy_for_competition(
	subsidy_id	int			references sponsor_competition(subsidy_id),
	subsidy_h_id	int			primary key,
	sub_date	date	not null,
	subsidy		decimal(6, 2)) not null;




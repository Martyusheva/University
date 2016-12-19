create domain dom_class as char(1) 
	default 'E'
	not null 
	check (value in ('A', 'B', 'C', 'D', 'E'));

create domain dom_class_DnD as char(2)
	default 'Bg'
	not null
	check (value in ('Bg', 'RS', 'M', 'S', 'Ch'));

create domain dom_rank as int
	default 3
	not null
	check (value > 0 and value < 4);

create domain dom_rating as char(3) 
	default 'yes'
	not null 
	check (value in ('yes', 'no'));

create table dancer (
	dancer_id 	int 			 	primary key,
	firstname 	varchar(25) 	not null,
	secondname 	varchar(25) 	not null,
	ASH_id 		int 				unique,
	constraint name_unique unique (firstname, secondname));

create table dancer_ASH (
	ASH_id 		int 				primary key references dancer(ASH_id),
	class 		dom_class,
	class_DnD 	dom_class_DnD );

create table club (
	club_id 	int 			 	primary key,
	name 		varchar(10) 	not null,
	city 		varchar(10) 	not null);

create table club_leader (
	club_id 	int 		not null 	references club(club_id),
	dancer_id 	int 		not null 	references dancer(dancer_id));

create table dancer_club (
	dancer_id 	int 		not null 	references dancer(dancer_id),
	club_id 	int 			 	references club(club_id)
	constraint dc_unique unique (dancer_id, club_id));

create table judge (
	judge_id 	int 			 	primary key,
	ASH_id 		int 		not null 	references dancer_ASH(ASH_id),
	rank 		dom_rank
	data_valid	date		not null);

create table competition (
	comp_id 	int 			 	primary key,
	name		varchar(20) 	not null 	unique,
	city		varchar(10) 	not null,
	organizer	int 		not null 	references club(club_id));

create table competition_history (
	comp_h_id	int 				primary key;
	comp_id		int 		not null 	references competition(comp_id),
	date_start	date 		not null,
	date_end	date 		not null,
	num_of_participant	int 	not null 	check (num_of_participant > 0),
	cost		decimal (6, 2));

create table nomination (
	nomination_id	int 				primary key,
	name		varchar(10) 	not null,
	is_rating	dom_rating);
	

create table competition_result (
	comp_h_id	int 		not null 	references competition_history(comp_h_id),
	nomination_id	int 		not null 	references nomination(nomination_id),
	plase		int 		not null,
	point		int,
	leader_id	int 				references dancer_ASH(ASH_id),
	partner_id	int 				references dancer_ASH(ASH_id));

create table competition_judge(
	comp_h_id	int 		not null 	references comprtition_history(comp_h_id),	
	judge_id	int 		not null 	references judge(judge_id));

create table competition_nomination(
	comp_h_id	int 		not null 	references comprtition_history(comp_h_id),	
	nomination_id	int 		not null 	references nomination(nomination_id));

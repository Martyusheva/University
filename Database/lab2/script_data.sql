/*�����*/
/*insert into club values 
	(142, '���������', '������');

insert into club values 
	(143, '���������', '�����-���������');

insert into club values 
	(144, 'Dance Drive', '�����-���������');

insert into club values 
	(146, 'MMDance', '�����-���������');

insert into club values 
	(137, 'Project', '������������');

insert into club values 
	(174, 'AlphaDance', '������');

insert into club values 
	(183, 'YouDance', '�����-���������');

insert into club values 
	(40, '��������', '������');

insert into club values 
	(60, 'Strikly', '�����-���������');*/

/*�������*/
insert into dancer values
	(1, '��������', '���������', 627);

insert into dancer values
	(2, '��������', '������', 6004);

insert into dancer values
	(3, '��������', '�����', 2742);

insert into dancer values
	(4, '��������', '�����', 5993);

insert into dancer values
	(5, '��������', '�����', 3163);

insert into dancer values
	(6, '���������', '���������', 502);

insert into dancer values
	(7, '��������', '�����', 1185);

insert into dancer values
	(8, '����', '�������', 1161);

insert into dancer values
	(9, '��������', '���������', 2207);

insert into dancer values
	(10, '�������', '�������', 2767);

insert into dancer values
	(11, '���������', '�������', 8595);

/*���� - ������������*/
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

/*������ - ����*/
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

/*������ ���*/
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

/*����� ���*/
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

/*��������*/
insert into competition values
	(1, 'Starship', '�����-���������', 143);

insert into competition values
	(2, 'Leningrad-Cup', '�����-���������', 144);

insert into competition values
	(3, '����� ����� �����', '�����-���������', 144);

/*���������*/
insert into nomination values
	(1, '�����', 'no');

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
	(6, 'Stricly-������', 'no');

/*������� ���������*/
insert into competition_history values
	(1, 1, '30.7.2016', '31.7.2016', 200, 200);

insert into competition_history values
	(2, 2, '24.9.2016', '24.9.2016', 340, 300);

insert into competition_history values
	(3, 3, '13.6.2015', '14.6.2015', 400, 300);

insert into competition_history values
	(3, 4, '25.6.2016', '25.6.2016', 380, 250);

/*���������� ���������*/
insert into competition_result values
	(4, 7, 1, 1, 5993, 6004);

insert into competition_result (comp_h_id, nomination_id, plase, point,	partner_id) values
	(2, 4, 12, 1, 8595);

/*insert into competition_result value
	(, , , , ,);*/

/*������� - �����*/
insert into competition_judge value
	(1, 7);

insert into competition_judge value
	(1, 4);

insert into competition_judge value
	(2, 1);

insert into competition_judge value
	(2, 6);

/*������� - ���������*/
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
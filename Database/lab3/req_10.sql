/*� ������� ��������� UPDATE �������� �������� ���������� ����� 
� ���� �������, ���������� ��������� �������*/

update competition_history 
set
	num_of_guest = 50,
	cost_of_entrance = 300
where 	num_of_guest is null and cost_of_entrance is null;
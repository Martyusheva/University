/*� ������� ��������� DELETE ������� ������, 
������� ������������ (�����������) �������� 
��������� ���������� ��������������*/

delete from subsidy_for_competition 
where subsidy = (select min(subsidy) from subsidy_for_competition);
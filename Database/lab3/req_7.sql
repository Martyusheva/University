/*������, �������������� ���������� �������������� � �������������� �����������, 
�������� ����������� �� ��������� �����������*/

select class, count(*)
from dancer_ASH
where ASH_id<10000
group by class;

select class, count(*)
from dancer_ASH
where ASH_id<10000
group by class
having count(*) > 5;

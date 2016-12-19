/*¬ывести 10 клубов, члены которых чаще всего 
занимали призовые места за всю историю наблюдений*/

select first 10 
count(*) as medalists, c.name as club, c.city
from competition_result r
join dancer d on r.partner_id = d.ASH_id or r.leader_id = d.ASH_id
join dancer_club dc on d.dancer_id = dc.dancer_id
join club c on dc.club_id = c.club_id
where r.plase between 1 and 3
group by c.club_id, c.name, c.city
order by medalists desc;


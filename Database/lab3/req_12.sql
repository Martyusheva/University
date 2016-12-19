/*С помощью оператора DELETE удалите записи 
в главной таблице, на которые не ссылается 
подчиненная таблица (используя вложенный запрос)*/

delete from club c
where not exists (select * from dancer_club d where c.club_id = d.club_id) and club_id between 200 and 219;
/*Создать триггреры для автоматического заполнения ключевого поля*/

CREATE SEQUENCE seq_judge_id;
ALTER SEQUENCE seq_judge_id RESTART WITH 20;

set term ^;
CREATE OR ALTER TRIGGER trg_judge_id
before insert position 0 on judge
as
begin
  if ((new.judge_id is null) or (new.judge_id = 0)) then
  begin
    new.judge_id = next value for seq_judge_id;
  end
end^

set term ;^

*/Создать триггрер для контроля целостности в подчиненной таблице при удалении или модификации ключа в главной таблице/*

set term ^;
CREATE OR ALTER TRIGGER trg_judge_del
before delete position 1 on judge
as
begin
  delete from competition_judge
  where judge_id = old.judge_id;
end^

set term ;^

set term ^;
CREATE OR ALTER TRIGGER trg_judge_upd
after update position 1 on judge
as
begin
  update competition_judge
  set judge_id = new.judge_id
  where judge_id = old.judge_id;
end^

set term ;^
/*С помощью оператора DELETE удалите запись, 
имеющую максимальное (минимальное) значение 
некоторой совокупной характеристики*/

delete from subsidy_for_competition 
where subsidy = (select min(subsidy) from subsidy_for_competition);
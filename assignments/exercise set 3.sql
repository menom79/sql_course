-- assuming both M and P included
Select round(avg(rate),2) as Average from emps where DEPT >="M" and DEPT <="P";
Select count(*) as EmpRateCount from emps where rate between 6 and 8;
Select sum(rate) from emps where DEPT >= "A" and DEPT <= "G";
Select max(rate) as greatest, min(rate) as smallest from emps where city="Davis";
Select DEPT, count(*) as count from emps where rate > 10 group by DEPT order by count desc;
SELECT CONCAT(left(gname, 2), right(surname, 3), left(phone, 3)) as username from emps;
Select distinct lower(city) as Locations from emps  order by Locations asc;
Select gname, surname, length(surname) as surname_length from emps where length(surname)>6;
Select DEPT, duty, budget, 
case 
	when budget < 100000 then "low" 
	when budget > 100000 then "high" 
    else
		"None"
end as budget_categorization 
from dept;
Select City, avg(rate) as city_averages from emps group by city order by city_averages desc;

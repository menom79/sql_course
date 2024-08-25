Select concat(SURNAME, " ", SUBSTRING(GNAME,1,1)) as NAME, Duty from emps
join dept on emps.DEPT = dept.DEPT where emps.DEPT = "A" order by SURNAME; 

Select GNAME as firstname, SURNAME as surname, emps.DEPT as dept, DUTY as duty from emps
left join dept on emps.DEPT = dept.DEPT;

Select e.empnum, e.gname, e.surname from emps 
e join dept d on e.dept = d.dept 
where e.prov = "MB" and d.manager = "BLACK D";

select dept, gname, surname, city from emps 
where dept >= "A" and dept <= "D"  
union select dept, gname, surname, city from emps where gname like "B%";

select e.dept, e.gname, e.surname, d.budget from emps 
e join dept d on e.dept = d.dept where budget >= 50000 and budget <= 100000 
union select e.dept, e.gname, e.surname, d.budget from emps e join dept d on e.dept = d.dept 
where pc like "T%" order by dept;

select empnum, gname, surname, rate, dept from emps 
where dept = "A" and rate not in (select rate from emps where dept = "B");

select e.gname, e.surname, e.dept, d.duty from emps 
e join dept d on e.dept = d.dept where duty = (select d.duty from dept 
d join emps e on d.dept = e.dept where gname = "Peter" and surname = "Curry");

select gname, surname, rate from emps where rate = (select max(rate) from emps);

select MANAGER, count(distinct concat(GNAME, " ",SURNAME)) as employee_count from dept
inner join emps on dept.DEPT = emps.DEPT group by MANAGER having employee_count > 10  order by employee_count desc;

select concat(GNAME, " ", SURNAME) as Name,
case 
when exists (select distinct MANAGER from dept where MANAGER = concat(SURNAME, " ",left(GNAME,1))) then "MANAGER"
else "Employee" 
end as Type
from emps order by Type, Name;


Select * from emps where city="winnipeg";
Select GNAME, SURNAME from emps where GNAME like "MI%";
-- Select GNAME, SURNAME from emps where EMPNUM > 50 and EMPNUM <= 70;
Select GNAME, SURNAME from emps where EMPNUM between 50 and 70;
Select * from emps where RATE >9 and EMPNUM <150;
Select * from emps where PHONE like "__7%" and (city="Edmonton" or city="Newton");
Select distinct city from emps order by city desc;
Select * from emps where DEPT <>"A" and DEPT <>"B" and DEPT <>"C";
Select * from emps where DEPT>="D";
Select * from emps where not DEPT between "A" and "C";


Select * from dept limit 5 offset 9;
Select DEPT as Limited from dept where BUDGET=57000 or BUDGET=9300;
Select manager from dept where manager="Abey M";
Select * from dept where MANAGER like "S%" and BUDGET > 100000;
Select DEPT, MANAGER from dept where DEPT <= "H" or DEPT >= "T";
Select DEPT, MANAGER from dept where not dept between "H" and "T";
Select * from emps where GNAME like "_A%" and SURNAME like "%N" and PC like "T0%";
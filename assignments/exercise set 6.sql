Select * from salaries;
INSERT INTO salaries (salaryid, salary)
VALUES ('10', '3500'),
('20', '3300');

UPDATE salaries
SET salary = 3600
WHERE salaryid = 20;

CREATE TABLE SALARYHISTORY AS
    SELECT * FROM salaries
    limit 0;
    
INSERT INTO SALARYHISTORY (Salaryid, salary)
SELECT Salaryid, salary
FROM Salaries;

    Select * from salaryhistory;
    select * from salaries;
DELETE FROM Salaries, SALARYHISTORY
where Salaries.salaryid = SALARYHISTORY.salaryid
and salaryid = 20;
DELETE Salaries, SALARYHISTORY FROM Salaries  INNER JOIN SALARYHISTORY  
	WHERE Salaries.salaryid = SALARYHISTORY.salaryid 
	and Salaries.salaryid = 20;
    
    
Start transaction;;

DELETE FROM Salaries
WHERE salaryid = 20

DELETE FROM SALARYHISTORY
WHERE salaryid = 20;

COMMIT;
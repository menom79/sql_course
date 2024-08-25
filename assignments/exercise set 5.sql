use exercise;
Create table SALARIES(
SalaryID INT not null,
Salary decimal(10,2),
Primary key (salaryID)
);

Alter table salaries
Add column EMPNUM decimal(3,0);

ALTER TABLE salaries
ADD FOREIGN KEY (empnum) REFERENCES emps(empnum) on update cascade on delete no action;

Alter table salaries
Add column fromdate date default current_timestamp;

Alter table salaries 
modify SalaryID INT not null auto_increment;

DELIMITER $$
CREATE TRIGGER check_salary BEFORE INSERT ON salaries
FOR EACH ROW
    BEGIN
        IF NEW.salary > 10000
            THEN SET NEW.salary = null;
        END if;
    END $$
    
DELIMITER $$
CREATE TRIGGER check_salary2 BEFORE INSERT ON salaries
FOR EACH ROW
    BEGIN
        IF NEW.salary % 2 != 0
            THEN SET NEW.salary = null;
        END if;
    END $$

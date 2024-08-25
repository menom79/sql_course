use exam;

insert into owner values (1, 'Aarong');

insert into store value(1, 'Gulshan', '1234567', '0','1');
insert into store value(2, 'Dhanmondi', '14446989', '0','1');
insert into store value(3, 'Uttara', '1444690', '0','1');


insert into category values (1, 'Beverages','1');
insert into category values (2, 'Bread and Bakery','1');
insert into category values (3, 'Canned Food','1');
insert into category values (4, 'Meat','1');

insert into products values(1,'CocaCola','Soft Drink',100, 45.0, null, '0',1);
insert into products values(2,'7UP','Soft Drink',200, 25.0, null, '0',1);
insert into products values(3,'PranUP','Soft Drink',50, 15.0, null, '0',1);
insert into products values(4,'GiraPani','Soft Drink',100, null, null, '0',1);

insert into products values(5,'Beef','Soft Tender',500, 650, null, '0',4);
insert into products values(6,'Canned Tomato','Best for tomato Sauce',400, 250, null, '0',3);
insert into products values(7,'AllTime Bread','Milk Bread',1500, 50, null, '0',2);

insert into customer values(1, 'Alice', 'Alice', 'Wonder', '000566978','alice@xmail.com','Road-7','Gulsha-1','Dhaka',null,1100,'Bangladesh');
insert into customer values(2, 'Bob', 'Bob', 'Cook', '0899566978','bob@ymail.com','Road-5','Dhanmondi-1','Dhaka',null,1100,'Bangladesh');
insert into customer values(3, 'Hasib', 'Hasib', 'Bashar', '110566978','hasib@gmail.com','Road-7, Sector -3','Uttara','Dhaka',null,1200,'Bangladesh');

SET @@time_zone = 'SYSTEM';
insert into orders value(1,'2021-01-01 10:10:10','2021-01-01 10:10:10',null,'Hold',1);
insert into orders value(2,'2021-02-01 10:10:10','2021-02-01 10:10:10',null,'On Process',2);
insert into orders value(3,'2021-02-02 10:10:10','2021-02-02 10:10:10',null,'Delivered',3);

insert into orderdetails values(1,2,10,15.0,1);
insert into orderdetails values(2,3,5,15.0,1);
insert into orderdetails values(3,5,2,650.0,1);

select * from owner;
select * from store;
select * from category;
select * from products;
select * from customer;
select * from orders;
select * from orderdetails;
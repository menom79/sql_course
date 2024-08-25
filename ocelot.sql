 /* OCELOT-database, see www.ocelot.ca
  Copy and paste the following two commands (without the comment marks (--) in order to create the OCELOT database and to connect to it: */
 
  -- CREATE DATABASE OCELOT;
  -- USE OCELOT;
 
 
  -- Demonstration Table SDEPT Definitions
 
  -- Table SDEPT was defined with this SQL statement:
 
  create table SDEPT (
  DEPT varchar(4),
  MANAGER varchar(12),
  CODE decimal(2,0));
 
  -- SDEPT has three rows, which were inserted with these SQL statements:
 
  insert into SDEPT values ('A','SMITH A',1);
  insert into SDEPT values ('B','JONES B',2);
  insert into SDEPT values ('C','BROWN C',3);
 
 
  -- Demonstration Table DEPT Definitions
 
  -- Table DEPT was defined with these SQL statements:
 
  create table DEPT (
  DEPT varchar(4) NOT NULL,
  MANAGER varchar(12),
  DUTY varchar(12),
  BUDGET decimal(10,2));
 
  alter table DEPT
  add constraint DEPT_PKEY primary key (DEPT);
 
  -- DEPT has 52 rows, which were inserted with these SQL statements:
 
  insert into DEPT values
  ('A','SMITH A','ACCOUNTING',100000.00);
  insert into DEPT values
  ('B','JONES B','INF SYSTEMS',120000.00);
  insert into DEPT values
  ('C','BROWN C','CUST REL',50000.00);
  insert into DEPT values
  ('D','BLACK D','OPERATIONS',50000.00);
  insert into DEPT values
  ('E','GREEN E','SALES',100000.00);
  insert into DEPT values
  ('EE','ROCHEFORT N','DIV 3',16750.00);
  insert into DEPT values
  ('F','MONROE F','MARKETING',200000.00);
  insert into DEPT values
  ('FA','DEWALT R','PR-EAST',57000.00);
  insert into DEPT values
  ('FB','WILLIAMS G','PR-WEST',57000.00);
  insert into DEPT values
  ('FC','MARK G','DIV 1',16750.00);
  insert into DEPT values
  ('FD','HAMILTON J','DIV 2',16750.00);
  insert into DEPT values
  ('FF','MILES F','DIV 4',16750.00);
  insert into DEPT values
  ('G','DOE G','ADMIN',25000.00);
  insert into DEPT values
  ('GG','MUNI C','DIV 5',16750.00);
  insert into DEPT values
  ('H','RILEY H','CORP DEVEL',75000.00);
  insert into DEPT values
  ('HH','GILLARD A','EXECUTIVE',158000.00);
  insert into DEPT values
  ('I','JAKE A','COMP DEV',93000.00);
  insert into DEPT values
  ('II','SWEKLA M','TAX',93000.00);
  insert into DEPT values
  ('J','SOON K','OPS',93000.00);
  insert into DEPT values
  ('JJ','SMITH I','LEGAL',97000.00);
  insert into DEPT values
  ('K','MOSES R','B.D.',69000.00);
  insert into DEPT values
  ('KK','CASWELL C','BROKERAGE',112000.00);
  insert into DEPT values
  ('L','HARVEY S','MARKET-NORTH',58000.00);
  insert into DEPT values
  ('LL','NORBERT S','BANKING',49000.00);
  insert into DEPT values
  ('M','RUNGE D','MARKET-SOUTH',58000.00);
  insert into DEPT values
  ('MM','KILEY D','ORDERS',18000.00);
  insert into DEPT values
  ('N','GIBSON R','MARKET-EAST',58000.00);
  insert into DEPT values
  ('NN','WILSON S','DIV 6',17890.00);
  insert into DEPT values
  ('O','JAMES N','MARKET-WEST',58000.00);
  insert into DEPT values
  ('OO','NATTRASS S','DIV 7',17890.00);
  insert into DEPT values
  ('P','SAMS E','P.R.',19000.00);
  insert into DEPT values
  ('PP','GREGG R','DIV 8',17890.00);
  insert into DEPT values
  ('Q','OTIS R','SALES-NORTH',134000.00);
  insert into DEPT values
  ('QQ','TOD N','DIV 9',17890.00);
  insert into DEPT values
  ('R','BYRON L','SALES-SOUTH',134000.00);
  insert into DEPT values
  ('RR','SLIWA E','DIV 10',17890.00);
  insert into DEPT values
  ('S','LORD P','SALES-EAST',134000.00);
  insert into DEPT values
  ('SS','RUSK C','DIV 11',17890.00);
  insert into DEPT values
  ('T','SUNG S','SALES-WEST',134000.00);
  insert into DEPT values
  ('TT','PICKFORD E','DIV 12',17890.00);
  insert into DEPT values
  ('U','NEHRU L','FINANCE',218000.00);
  insert into DEPT values
  ('UU','MCMINIS K','DIV 13',17890.00);
  insert into DEPT values
  ('V','ORM W','$-IN',23500.00);
  insert into DEPT values
  ('VV','HENDRY R','DIV 14',17890.00);
  insert into DEPT values
  ('W','NESSEY O','$-OUT',82000.00);
  insert into DEPT values
  ('WW','DETTMER A','DIV 15',17890.00);
  insert into DEPT values
  ('X','WILDE O','PROMOS',163000.00);
  insert into DEPT values
  ('XX','CHIN S','ENGINEERING',257000.00);
  insert into DEPT values
  ('Y','AARON M','PR-NORTH',57000.00);
  insert into DEPT values
  ('YY','BOER C','FACTORY 1',213000.00);
  insert into DEPT values
  ('Z','ZINK W','PR-SOUTH',57000.00);
  insert into DEPT values
  ('ZZ','ABEY M','FACTORY 2',276000.00);
 
 
  -- Demonstration Table EMPS Definitions
 
  -- Table EMPS was defined with these SQL statements:
 
  create table EMPS (
  EMPNUM decimal(3,0) NOT NULL,
  DEPT varchar(4),
  SURNAME varchar(12),
  GNAME varchar(9),
  ADDRESS varchar(18),
  CITY varchar(10),
  PROV char(2),
  PC varchar(6),
  PHONE char(8),
  RATE decimal(6,2),
  TAXCODE decimal(2,0),
  DEDUCTION decimal(6,2));
 
  alter table EMPS
  add constraint EMPS_PKEY primary key (EMPNUM);
 
  -- EMPS has 500 rows, which were inserted with these SQL statements:
 
  insert into EMPS values
  (1,'A','KOO','SARA','234 WEST ST',
  'BANFF','AB','T0R0R0','421-6923',6.00,0,100.00);
  insert into EMPS values
  (10,'A','SMITH','ALICE','123 MAIN ST',
  'EDMONTON','AB','T6A1R6','474-4186',16.00,0,100.00);
  insert into EMPS values
  (24,'A','RINAS','ROB','521 ARMSTRONG DR',
  'EDMONTON','AB','T500L0','423-5521',6.00,0,100.00);
  insert into EMPS values
  (25,'A','ALLAN','RANDY','516 ARMSTRONG CRES',
  'EDMONTON','AB','T6K9I0','423-2955',6.00,0,100.00);
  insert into EMPS values
  (33,'A','WALSH','BILL','135 COTTON AVE',
  'YORK','ON','M0WO5B','436-9883',7.00,2,50.00);
  insert into EMPS values
  (48,'A','GROSSER','COLIN','520 PARIS ST',
  'EDMONTON','AB','T5N3P8','482-5185',7.00,1,75.00);
  insert into EMPS values
  (49,'A','NORMAN','VINCE','701 MORGAN CRES',
  'EDMONTON','AB','T9N6M4','482-7097',7.00,2,50.00);
  insert into EMPS values
  (61,'A','THOMPSON','BRAD','105 MAIN ST',
  'EDMONTON','AB','T5J9K7','459-7324',9.00,1,75.00);
  insert into EMPS values
  (72,'A','FLETCHER','RENE','623 WEST ST',
  'EDMONTON','AB','T8M6N4','463-6644',9.00,2,50.00);
  insert into EMPS values
  (73,'A','CURRY','PETER','104 PARIS ST',
  'EDMONTON','AB','T7B8E6','962-4193',10.00,1,75.00);
  insert into EMPS values
  (2,'B','MARSH','JOHN','456 EAST AVE',
  'BANFF','AB','T0R0R0','963-2176',5.00,1,75.00);
  insert into EMPS values
  (11,'B','JONES','BOB','325 RIVER RD',
  'EDMONTON','AB','T6D7T9','929-1296',16.00,2,50.00);
  insert into EMPS values
  (15,'B','PRICE','FRANCES','105 HAYTHORN CRES',
  'WINNIPEG','MB','B5F2D6','424-4758',6.00,0,100.00);
  insert into EMPS values
  (23,'B','GOLTZ','VERN','170 NORTH ST',
  'EDMONTON','AB','T9JE3W','987-3219',6.00,1,75.00);
  insert into EMPS values
  (26,'B','SAMSON','LOUISE','131 NORTH AVE',
  'EDMONTON','AB','T3E6T6','462-4910',6.00,0,100.00);
  insert into EMPS values
  (47,'B','VARGA','BETSY','108 BERLIN ST',
  'EDMONTON','AB','T2K9N5','456-1646',14.00,0,100.00);
  insert into EMPS values
  (50,'B','PEALE','CHERYL','138 LINDEN ST',
  'EDMONTON','AB','T9N3E5','447-6911',7.00,1,75.00);
  insert into EMPS values
  (57,'B','LOWE','DIANE','353 ALTON CRES',
  'WINNIPEG','MB','B4H8H3','481-4357',9.00,3,45.00);
  insert into EMPS values
  (71,'B','BOND','PAT','447 VIEW CRES',
  'YORK','ON','M9K6N3','459-5669',12.00,3,45.00);
  insert into EMPS values
  (74,'B','STICKLE','MARY','106 EAST ST',
  'EDMONTON','AB','T5N8E7','423-3771',6.00,1,75.00);
  insert into EMPS values
  (3,'C','JONES','MABEL','567 NORTH ST',
  'NIAGARA','ON','M5B9Q1','962-4289',5.00,1,75.00);
  insert into EMPS values
  (14,'C','PHILLIPS','BOB','462 RUSSELL ST',
  'WINNIPEG','MB','B9K6N0','456-0625',8.00,1,75.00);
  insert into EMPS values
  (22,'C','SHEPA RD','HAL','480 SOUTH AVE',
  'EDMONTON','AB','T4R5T8','986-3659',9.00,1,75.00);
  insert into EMPS values
  (27,'C','SMART','ARTHUR','105 NORTH AVE',
  'EDMONTON','AB','T409M1','922-9864',8.00,1,75.00);
  insert into EMPS values
  (34,'C','OLDER','DENISE','152 COTTON AVE',
  'YORK','ON','M6H5R0','426-7779',7.00,2,50.00);
  insert into EMPS values
  (46,'C','BROWN','CARLA','111 MAIN ST',
  'WINNIPEG','MB','B5D8H1','482-3358',16.00,0,100.00);
  insert into EMPS values
  (51,'C','ROBINSON','GREG','350 WILLOW ST',
  'EDMONTON','AB','T5B4R9','467-9674',7.00,3,45.00);
  insert into EMPS values
  (62,'C','THOME','WAYNE','804 SOUTH AVE',
  'EDMONTON','AB','T3FK9A','466-5902',9.00,1,75.00);
  insert into EMPS values
  (70,'C','RIGGS','CATHY','137 TRIPOLI ST',
  'EDMONTON','AB','T5H3M9','487-4658',10.00,2,50.00);
  insert into EMPS values
  (75,'C','BYRD','DAWN','203 LONDON RD',
  'EDMONTON','AB','T3O8Y2','431-7107',9.00,2,50.00);
  insert into EMPS values
  (4,'D','MORGAN','CHUCK','963 SOUTH AVE',
  'JASPER','AB','T0S0S0','481-7319',8.00,2,50.00);
  insert into EMPS values
  (13,'D','DEY','BILL','129 MARION DR',
  'WINNIPEG','MB','B5R7H6','461-6631',8.00,2,50.00);
  insert into EMPS values
  (21,'D','REGAN','MARG','640 CAROL ST',
  'EDMONTON','AB','T2W7G3','421-9723',7.00,0,100.00);
  insert into EMPS values
  (28,'D','TURNER','LINDA','114 ROBIN ST',
  'EDMONTON','AB','T2R8N5','466-2033',8.00,2,50.00);
  insert into EMPS values
  (39,'D','DUPUIS','BRENDA','721 RANGE RD',
  'YORK','ON','M5G8N3','481-4183',9.00,2,50.00);
  insert into EMPS values
  (45,'D','RENKO','LYNN','118 NEWBY DR',
  'YORK','ON','M5M0B3','464-9375',7.00,2,50.00);
  insert into EMPS values
  (52,'D','MCDONALD','LESLIE','105 WINTER RD',
  'WINNIPEG','MB','B9J3E6','421-0809',6.00,1,75.00);
  insert into EMPS values
  (58,'D','BLACK','DAVID','347 RIVER RD',
  'EDMONTON','AB','T9H3F7','459-8389',16.00,0,100.00);
  insert into EMPS values
  (69,'D','SUTTER','KAREN','149 COTTON DR',
  'WINNIPEG','MB','B8E7N3','479-8697',12.00,1,75.00);
  insert into EMPS values
  (76,'D','JUDSON','ARCHIE','108 PRIMROSE ST',
  'EDMONTON','AB','T4Y7S5','454-5580',9.00,2,50.00);
  insert into EMPS values
  (5,'E','EDWARDS','ISABELLE','408 ORIOLE ST',
  'CALMAR','AB','T0C0C0','467-0304',8.00,2,50.00);
  insert into EMPS values
  (12,'E','CHIMO','ALICE','166 RIVER RD',
  'EDMONTON','AB','T6B7T4','481-8310',8.00,0,100.00);
  insert into EMPS values
  (20,'E','FRANCIS','CHRIS','861 BERLIN BLVD',
  'EDMONTON','AB','T6H7E7','463-6244',9.00,0,100.00);
  insert into EMPS values
  (32,'E','WALTON','DEBBIE','202 WILLOW AVE',
  'YORK','ON','M0J0B0','454-3788',7.00,2,50.00);
  insert into EMPS values
  (35,'E','OLSEN','CAROL','555 RIVER RD',
  'EDMONTON','AB','T1O8N3','464-0105',9.00,3,45.00);
  insert into EMPS values
  (44,'E','HILL','JAMES','147 ALTON CRES',
  'WINNIPEG','MB','B9M2F6','464-3692',10.00,2,50.00);
  insert into EMPS values
  (53,'E','CUTHBERT','SHIRLEY','141 WINTER RD',
  'WINNIPEG','MB','B9JR5R','421-5420',8.00,3,45.00);
  insert into EMPS values
  (63,'E','SIMS','GEORGE','198 EAST ST',
  'EDMONTON','AB','T9S3L1','455-1352',12.00,3,45.00);
  insert into EMPS values
  (68,'E','GREEN','ED','140 WILLOW AVE',
  'EDMONTON','AB','T5H2D9','466-1492',16.00,2,50.00);
  insert into EMPS values
  (77,'E','MCCANN','HEATHER','415 MAIN ST',
  'EDMONTON','AB','T2EO5N','424-5355',6.00,1,75.00);
  insert into EMPS values
  (181,'E','HICKLING','CHARLIE','12917-126 ST',
  'BROOKS','AB','T0L0B0','436-6060',10.00,0,100.00);
  insert into EMPS values
  (204,'E','PEPPARD','GEORGE','11631-90 ST',
  'CALGARY','AB','T5N1Y6','342-6082',7.00,2,100.00);
  insert into EMPS values
  (207,'E','JAHRIG','BRIGITTE','6408-172 ST',
  'OLDS','AB','T0B0L0','452-9650',12.00,0,100.00);
  insert into EMPS values
  (103,'EE','ROCHEFORT','NORM','112 A ST',
  'EDMONTON','AB','T6TY5Y','433-1234',12.00,2,50.00);
  insert into EMPS values
  (129,'EE','CULBERTS','TONY','59 MILLS',
  'YORK','ON','M6H8T5','615-4185',9.00,0,100.00);
  insert into EMPS values
  (353,'EE','BOWMAN','WENDY','11617-68 ST',
  'VILLENEUVE','AB','T8L2T1','346-7434',10.00,0,100.00);
  insert into EMPS values
  (354,'EE','BOWNAM','SCOTT','170 DICKENSIELD CT',
  'DIDSBURY','AB','T0B0R0','723-4441',10.00,2,100.00);
  insert into EMPS values
  (355,'EE','DEMERS','JACQUES','2502-151 AVE',
  'ETON','AB','T1W0W0','532-8010',10.00,0,75.00);
  insert into EMPS values
  (357,'EE','OBDICK','ROBERT','9901-107 ST',
  'LETHBRIDGE','AB','T4N4A4','784-4494',16.00,1,45.00);
  insert into EMPS values
  (359,'EE','BRAUER','JORN','10260-116 ST',
  'REDWATER','AB','T0L0M0','458-8660',10.00,3,100.00);
  insert into EMPS values
  (360,'EE','SMITS','HANK','11506-39 AVE',
  'RED DEER','AB','T6A1S3','986-8471',10.00,0,50.00);
  insert into EMPS values
  (362,'EE','EGLINSKI','DOUG','2011-151 AVE',
  'CALMAR','AB','T0C0C0','986-2277',10.00,1,100.00);
  insert into EMPS values
  (478,'EE','NIELS','JOHN','350 GRANDIN VILLAG',
  'OLDS','AB','T0B0L0','962-4020',10.00,0,100.00);
  insert into EMPS values
  (6,'F','FRANK','ADA','358 PARIS RD',
  'SASKATOON','SK','S5D5T2','437-7209',8.00,0,100.00);
  insert into EMPS values
  (19,'F','REID','TRUDY','135 BERLIN BLVD',
  'EDMONTON','AB','T3E1W1','467-3465',10.00,3,45.00);
  insert into EMPS values
  (29,'F','UNGER','AUDREY','322 WOODCROFT DR',
  'EDMONTON','AB','T5R1K6','465-8485',12.00,2,50.00);
  insert into EMPS values
  (38,'F','ARMSTRONG','TERRI','402 GRAND BLVD',
  'EDMONTON','AB','T3O9J6','484-1146',9.00,1,75.00);
  insert into EMPS values
  (40,'F','FUHR','GAIL','690 MILL RD',
  'WINNIPEG','MB','B6K4R2','457-7429',6.00,3,45.00);
  insert into EMPS values
  (43,'F','JAMES','DONALD','700 WALKER ST',
  'EDMONTON','AB','T3K0N5','459-7249',12.00,3,45.00);
  insert into EMPS values
  (54,'F','CROWE','ANNE','112 VANMAR RD',
  'EDMONTON','AB','T8H8T4','447-7162',8.00,3,45.00);
  insert into EMPS values
  (59,'F','KLYNE','DARLENE','100 GREENOCH ST',
  'EDMONTON','AB','T9K4R6','484-2438',9.00,2,50.00);
  insert into EMPS values
  (67,'F','STEWART','JILL','165 RIVER RD',
  'EDMONTON','AB','T6L3P0','489-8905',6.00,2,50.00);
  insert into EMPS values
  (78,'F','MONROE','FRANCES','124 RAVINE DR',
  'EDMONTON','AB','T5R6Y7','451-2841',16.00,1,75.00);
  insert into EMPS values
  (99,'FA','DEWALT','ROY','14 SOUTH',
  'EDMONTON','AB','T5TE4E','433-9990',5.00,0,100.00);
  insert into EMPS values
  (125,'FA','SMYTHE','SALLY','BOX 625',
  'CARDSTON','AB','T0M0M0','873-0224',9.00,3,45.00);
  insert into EMPS values
  (148,'FA','MABBOTT','RANDY','1145-87 AVE',
  'EDMONTON','AB','T6G0V1','428-4601',10.00,0,45.00);
  insert into EMPS values
  (315,'FA','FENNEL','DAVE','9724-151 ST',
  'CALGARY','AB','T5V9I8','432-0647',10.00,1,75.00);
  insert into EMPS values
  (316,'FA','BOONE','DAVID','68 FOREST DR',
  'ST ALBERT','AB','T6H2K6','432-0613',10.00,0,50.00);
  insert into EMPS values
  (317,'FA','KEPLEY','DAN','163 WOODSTOCK',
  'CALGARY','AB','T8N0J2','478-8451',9.00,1,100.00);
  insert into EMPS values
  (319,'FA','WILKINS','TOM','11107-77 AVE',
  'CALGARY','AB','T8A2W1','478-3471',10.00,0,100.00);
  insert into EMPS values
  (321,'FA','JONES','ED','90 GRANDVIEW RIDGE',
  'ASHTON','AB','T0L0R0','476-8659',10.00,0,100.00);
  insert into EMPS values
  (322,'FA','LAVORATO','PETE','2310-119 ST',
  'CALGARY','AB','T8N1T8','474-1204',10.00,2,50.00);
  insert into EMPS values
  (323,'FA','O''LEARY','JIM','1019-49 ST',
  'CALGARY','AB','T6E5H5','474-1302',10.00,1,100.00);
  insert into EMPS values
  (327,'FA','CARRUTHERS','KITTY','9217 WEST RD',
  'CALMAR','AB','T0C0C0','999-4971',10.00,0,100.00);
  insert into EMPS values
  (337,'FA','ST JAMES','EDNA','260 WOODVALE RD',
  'CARDSTON','AB','T0M0M0','475-2142',6.00,1,75.00);
  insert into EMPS values
  (342,'FA','FASEK','HARRY','12759-50 ST',
  'BOYLE','AB','T0B0B0','987-2433',10.00,2,50.00);
  insert into EMPS values
  (346,'FA','BEDDOES','ROBERT','4 DION PL',
  'CALGARY','AB','T6E2A4','343-3744',10.00,0,45.00);
  insert into EMPS values
  (378,'FA','WINDSOR','HARVEY','10513-76 AVE',
  'LEDUC','AB','T6B2R1','639-0071',12.00,2,100.00);
  insert into EMPS values
  (457,'FA','SCHAAPMAN','HEINZ','8323-120 ST',
  'BROOKS','AB','T0L0B0','433-2531',10.00,0,50.00);
  insert into EMPS values
  (100,'FB','WILLIAMS','GRACE','89 SOUTH',
  'NEWTON','AB','T9I4E4','434-8888',5.00,3,45.00);
  insert into EMPS values
  (126,'FB','JONES','BORIS','11102-63 ST',
  'CARDSTON','AB','T0M0M0','812-5812',8.00,0,100.00);
  insert into EMPS values
  (318,'FB','STEVENS','BILL','11675-72 AVE',
  'ST PAUL','AB','T0M0N0','475-8142',10.00,0,75.00);
  insert into EMPS values
  (324,'FB','BELL','JAMES','15239-75 ST',
  'VILLENEUVE','AB','T0R1M1','423-5651',14.00,3,75.00);
  insert into EMPS values
  (325,'FB','CUTLER','DAVID','10542 BEAUMARIS RD',
  'DIDSBURY','AB','T0B0R0','476-8631',10.00,0,100.00);
  insert into EMPS values
  (326,'FB','BELL','ROY','3556-65 ST',
  'CARDSTON','AB','T0M0M0','429-3285',10.00,0,100.00);
  insert into EMPS values
  (328,'FB','DOWLING','JEAN','77 WEST 5TH',
  'FALLIS','AB','T1M0R0','564-8820',12.00,3,45.00);
  insert into EMPS values
  (329,'FB','MCKENZIE','NORMAN','115 42 AVE',
  'BANFF','AB','T0R0R0','795-1295',14.00,2,50.00);
  insert into EMPS values
  (331,'FB','FARYNOWSKI','CAROL','10619-85 AVE',
  'LETHBRIDGE','AB','T5L4J6','482-5771',10.00,1,75.00);
  insert into EMPS values
  (339,'FB','MUCKLER','JOHN','13148-65 ST',
  'LEDUC','AB','T6E5E8','783-3366',10.00,0,100.00);
  insert into EMPS values
  (348,'FB','WILLIS','ROBERT','6510-112 AVE',
  'CALGARY','AB','T5A4L7','343-8993',10.00,0,100.00);
  insert into EMPS values
  (486,'FB','JACOBS','STEVE','17 GARDEN CRES',
  'LEDUC','AB','T8A3Z9','447-8571',10.00,0,45.00);
  insert into EMPS values
  (101,'FC','MARK','GORD','25 SOUTH',
  'NEWTON','AB','T2W4X1','433-6666',14.00,2,50.00);
  insert into EMPS values
  (127,'FC','SAMUELS','ULF','6507-89 AVE',
  'CARDSTON','AB','T0M0M0','845-4388',9.00,0,45.00);
  insert into EMPS values
  (330,'FC','GIBBON','WALTER','2421-104 ST',
  'BROOKS','AB','T0L0B0','467-3231',10.00,0,50.00);
  insert into EMPS values
  (333,'FC','SMYTHE','CARSON','1052-55 ST',
  'REDWATER','AB','T0L0M0','482-4588',16.00,1,45.00);
  insert into EMPS values
  (334,'FC','CARSTON','ELLIE','1714-65 ST',
  'RED DEER','AB','T5H1N6','482-6111',10.00,2,100.00);
  insert into EMPS values
  (335,'FC','MARTINS','ED','6544-178 ST',
  'GIBBONS','AB','T0L0L0','435-7055',10.00,2,100.00);
  insert into EMPS values
  (336,'FC','BATONI','DAVID','10229-173A AVE',
  'CALMAR','AB','T0C0C0','451-0988',5.00,0,50.00);
  insert into EMPS values
  (338,'FC','POCKLE','PETER','360 CLAREVIEW RD',
  'CALGARY','AB','T6Y5T5','632-9550',7.00,0,100.00);
  insert into EMPS values
  (340,'FC','FARAGHELLI','JOE','12432 LANSDOWNE RD',
  'LETHBRIDGE','AB','T5O4B3','422-6474',10.00,0,75.00);
  insert into EMPS values
  (341,'FC','AMIN','ED','133 HABITAT CRES',
  'EDMONTON','AB','T5G4N8','352-2206',10.00,3,100.00);
  insert into EMPS values
  (344,'FC','GRANGER','PAUL','9229-177 ST',
  'CALGARY','AB','T4N1M0','532-7360',9.00,0,75.00);
  insert into EMPS values
  (428,'FC','SCULLEY','HILDA','12558-72 ST',
  'BROOKS','AB','T0L0B0','426-7343',10.00,0,75.00);
  insert into EMPS values
  (463,'FC','SANDILANDS','PETER','131 KINISKI DR',
  'RED DEER','AB','T5M1V1','437-3001',10.00,3,75.00);
  insert into EMPS values
  (102,'FD','HAMILTON','JANET','642 NORTH',
  'EDMONTON','AB','T0O0P0','421-4187',14.00,2,50.00);
  insert into EMPS values
  (128,'FD','CUGUN','OGUZ','11467-109 ST',
  'CARDSTON','AB','T0M0M0','866-5003',9.00,1,100.00);
  insert into EMPS values
  (320,'FD','HIGHBAUGH','LARRY','10146-121 ST',
  'OLDS','AB','T0B0L0','474-6166',12.00,1,45.00);
  insert into EMPS values
  (332,'FD','FASH','DAVE','3108-138 AVE',
  'BON ACCORD','AB','T0L0D0','451-4888',10.00,2,100.00);
  insert into EMPS values
  (343,'FD','FASSBEND','LEONA','75 TOWNSHIP RD',
  'FALLIS','AB','T1M0R0','418-9464',8.00,1,75.00);
  insert into EMPS values
  (345,'FD','WILTON','TOM','10421-142 ST',
  'ST ALBERT','AB','T5A0J8','343-6211',10.00,2,50.00);
  insert into EMPS values
  (347,'FD','NORNAM','JOHN','11103-62 AVE',
  'ST PAUL','AB','T0M0N0','343-3736',12.00,1,100.00);
  insert into EMPS values
  (349,'FD','GOWAN','GEORGE','18 SOUTH ST',
  'BANFF','AB','T0R0R0','455-0093',8.00,3,45.00);
  insert into EMPS values
  (351,'FD','DENFORD','KEITH','9750-82 AVE',
  'CALGARY','AB','T5L3C5','342-3300',10.00,0,50.00);
  insert into EMPS values
  (352,'FD','KENNEDY','JACQUIE','22 MCLEOD PL',
  'CALGARY','AB','T6H8T5','672-2411',14.00,1,75.00);
  insert into EMPS values
  (440,'FD','BAXTER','DIANE','11607-90 ST',
  'LEDUC','AB','T9E2Z1','565-6546',16.00,0,100.00);
  insert into EMPS values
  (474,'FD','RAVEN','EDGAR','10127-121 ST',
  'ST ALBERT','AB','T5L2M5','462-6376',10.00,0,45.00);
  insert into EMPS values
  (124,'FF','ABBEY','MARGE','277 WEST',
  'EDMONTON','AB','T4R3W3','456-0091',12.00,1,100.00);
  insert into EMPS values
  (130,'FF','CIZ','CINDY','67 ABERNATHY',
  'YORK','ON','M6T4H5','615-6356',5.00,0,100.00);
  insert into EMPS values
  (364,'FF','CASWELL','JOAN','707-2 MICHENER PK',
  'CALGARY','AB','T5T4R0','474-4595',7.00,2,50.00);
  insert into EMPS values
  (365,'FF','DEN BOER','MAGDA','12115-67 ST',
  'LEDUC','AB','T6E5K6','343-0220',10.00,1,75.00);
  insert into EMPS values
  (366,'FF','SMITH','SAMUEL','14810-51 AVE',
  'LETHBRIDGE','AB','T6J3M4','434-8411',10.00,0,100.00);
  insert into EMPS values
  (368,'FF','HARTWELL','RONALD','3913-134 AVE',
  'ETON','AB','T1W0W0','476-8651',10.00,0,100.00);
  insert into EMPS values
  (369,'FF','MOOG','ANDREW','15223-96 ST',
  'BROOKS','AB','T0L0B0','483-4118',10.00,1,50.00);
  insert into EMPS values
  (371,'FF','DEN HATIGH','ROBERT','4304-35 ST',
  'BON ACCORD','AB','T0L0D0','674-4543',10.00,1,100.00);
  insert into EMPS values
  (7,'G','FRASER','ALBERT','140 BERLIN BLVD',
  'EDMONTON','AB','T5H1Q3','454-7740',8.00,2,50.00);
  insert into EMPS values
  (16,'G','KLOTZ','BRIAN','128 TOWNSHIP RD',
  'YORK','ON','M0K2R6','461-4667',12.00,2,50.00);
  insert into EMPS values
  (18,'G','DREW','NANCY','166 ORIOLE ST',
  'EDMONTON','AB','T8H4R5','467-4153',8.00,3,45.00);
  insert into EMPS values
  (30,'G','ANDERSON','JOAN','305 SOUTH ST',
  'WINNIPEG','MB','B3E0P8','437-6756',12.00,2,50.00);
  insert into EMPS values
  (36,'G','ADAMS','MICHAEL','551 RIVER RD',
  'EDMONTON','AB','T9N3K1','428-7810',6.00,1,75.00);
  insert into EMPS values
  (42,'G','SUTTON','JOHN','304 ROBIN ST',
  'EDMONTON','AB','T3B6B0','922-8820',12.00,0,100.00);
  insert into EMPS values
  (55,'G','MORIN','KEN','190 ORIOLE ST',
  'EDMONTON','AB','T2H8B5','922-6689',9.00,2,50.00);
  insert into EMPS values
  (64,'G','HEPBURN','PAUL','181 BERLIN ST',
  'EDMONTON','AB','T9S9I4','425-2300',10.00,2,50.00);
  insert into EMPS values
  (66,'G','KELLY','JEAN','108 GREEN ST',
  'EDMONTON','AB','T5J3E0','422-7050',8.00,1,75.00);
  insert into EMPS values
  (79,'G','DOE','GRACE','812 ORIOLE ST',
  'EDMONTON','AB','T6H7J2','475-1638',16.00,2,50.00);
  insert into EMPS values
  (164,'G','GRAVES','CRAIG','42 WESTVIEW CRES',
  'CALGARY','AB','T5R5W9','939-245',10.00,0,100.00);
  insert into EMPS values
  (233,'G','KALAN','DRAGO','10010-152 AVE',
  'GIBBONS','AB','T0L0L0','569-6453',10.00,3,45.00);
  insert into EMPS values
  (278,'G','ROGERS','GINGER','10 NOLAN',
  'CORONADO','AB','T0J0J0','783-5959',10.00,0,100.00);
  insert into EMPS values
  (300,'G','ADDERLEY','ED','12720-111 AVE',
  'ETON','AB','T1W0W0','479-1059',10.00,1,100.00);
  insert into EMPS values
  (105,'GG','MUNI','CRAIG','560 NOBLE',
  'MORINVILLE','AB','T0K0K0','456-7754',12.00,3,45.00);
  insert into EMPS values
  (372,'GG','CRUMPTON','ELEX','10957-129 ST',
  'JASPER','AB','T0S0S0','639-0081',10.00,0,100.00);
  insert into EMPS values
  (374,'GG','LODGE','VERONICA','13345-60 ST',
  'GIBBONS','AB','T0L0L0','676-8631',10.00,0,75.00);
  insert into EMPS values
  (375,'GG','KRAMDEN','RALPH','10923-82 AVE',
  'CALMAR','AB','T0C0C0','633-8646',10.00,0,100.00);
  insert into EMPS values
  (377,'GG','WILLIAMS','DARYL','10211-135A AVE',
  'CALGARY','AB','T9J1K1','682-5771',10.00,0,100.00);
  insert into EMPS values
  (379,'GG','PLUMB','LESLIE','11720 EDINBORO RD',
  'LETHBRIDGE','AB','T5C3C8','426-2617',14.00,1,50.00);
  insert into EMPS values
  (380,'GG','EDGAR','DANA','10180-101 ST',
  'EDMONTON','AB','T4A6Y0','433-2505',10.00,0,75.00);
  insert into EMPS values
  (392,'GG','DE GAULLE','CHARLES','14006-135A AVE',
  'VILLENEUVE','AB','T0R1M1','474-0401',8.00,0,100.00);
  insert into EMPS values
  (481,'GG','LANOUETTE','PAUL','7209-183B ST',
  'CALGARY','AB','T5A1A6','425-9550',9.00,3,100.00);
  insert into EMPS values
  (8,'H','HOAR','DENISE','853 ROBIN ST',
  'EDMONTON','AB','T5C5R2','424-4597',5.00,2,50.00);
  insert into EMPS values
  (9,'H','HOFFMAN','BRENT','316 ROBIN ST',
  'EDMONTON','AB','T5C3S5','476-3268',8.00,0,100.00);
  insert into EMPS values
  (17,'H','QUEST', 'SALLY','611 ROBIN ST',
  'EDMONTON','AB','T5G4E1','433-7510',9.00,3,45.00);
  insert into EMPS values
  (31,'H','SMITH','RICK','423 SOUTH ST',
  'WINNIPEG','MB','B7J3L9','477-8010',7.00,1,75.00);
  insert into EMPS values
  (37,'H','ADLER','FRED','105 EAST ST',
  'EDMONTON','AB','T3K9F1','475-9129',6.00,1,75.00);
  insert into EMPS values
  (41,'H','JARVIS','KIM','365 WREN CRES',
  'WINNIPEG','MB','B0M3R0','481-0024',9.00,3,45.00);
  insert into EMPS values
  (56,'H','MORE','NOREEN','400 GLENMORE AVE',
  'YORK','ON','M5G3U7','459-3316',12.00,2,50.00);
  insert into EMPS values
  (60,'H','ROBSON','FRANK','521 COTTON DR',
  'EDMONTON','AB','T5H3P0','476-0645',8.00,3,45.00);
  insert into EMPS values
  (65,'H','CAGNEY','SANDY','800 TRIDENT DR',
  'EDMONTON','AB','T1G6Y3','461-7379',10.00,3,45.00);
  insert into EMPS values
  (80,'H','RILEY','HERB','148 PARIS RD',
  'EDMONTON','AB','T9K2F6','476-0384',16.00,0,100.00);
  insert into EMPS values
  (171,'H','KEELING','DAVE', '4124-109 ST',
  'BON ACCORD','AB','T0L0D0','453-1586',6.00,2,100.00);
  insert into EMPS values
  (172,'H','KEENAM','MIKE','11523-100 AVE',
  'REDWATER','AB','T0L0M0','437-6596',10.00,2,45.00);
  insert into EMPS values
  (173,'H','KLOPPENBURGH','RALPH','16900-107 AVE',
  'FALLIS','AB','T1M0R0','484-1184',12.00,3,45.00);
  insert into EMPS values
  (245,'H','JOHNS','ARNE','8906-34 AVE',
  'DAVIS','AB','T0K0L0','537-0166',10.00,3,100.00);
  insert into EMPS values
  (123,'HH','BOER','CARL','215 ORIOLE',
  'NEWTON','AB','T7U2N7','457-3357',8.00,1,75.00);
  insert into EMPS values
  (132,'HH','BLAIS','DEXTER','1055-78 AVE',
  'VILLENEUVE','AB','T0R1M1','453-6881',16.00,3,45.00);
  insert into EMPS values
  (381,'HH','SMITS','TERRI','4642-106 AVE',
  'BOYLE','AB','T0B0B0','463-7885',16.00,0,45.00);
  insert into EMPS values
  (383,'HH','DEIPESTO','CARLOS','2423-142 AVE',
  'CALGARY','AB','T6B4M1','488-4881',10.00,0,50.00);
  insert into EMPS values
  (384,'HH','ANI','GREG','9720-156 ST',
  'ST ALBERT','AB','T5M2W1','474-8595',5.00,1,50.00);
  insert into EMPS values
  (385,'HH','ARMBRUSER','PHILIP','10509-81 AVE',
  'CALGARY','AB','T6B2R7','342-0220',10.00,0,100.00);
  insert into EMPS values
  (387,'HH','ZEIDLER','GORDON','401-6414-134 AVE',
  'CALGARY','AB','T5E5S7','425-1235',6.00,0,45.00);
  insert into EMPS values
  (388,'HH','LOREN','SOPHIA','8107-29 AVE',
  'OLDS','AB','T0B0L0','435-9281',10.00,0,50.00);
  insert into EMPS values
  (484,'HH','JOHNS','DEBBIE','11726-28 AVE',
  'CALGARY','AB','T6B3P1','468-4103',10.00,1,50.00);
  insert into EMPS values
  (81,'I','JAKE','AARON','56 RIVER',
  'EDMONTON','AB','T6H8R6','431-7890',16.00,0,100.00);
  insert into EMPS values
  (208,'I','SCHEINBEIN','MONICA','1851-40 ST',
  'ASHTON','AB','T0L0R0','452-4744',10.00,0,75.00);
  insert into EMPS values
  (241,'I','KEILLER','ROBERT','24 WARWICK RD',
  'RED DEER','AB','T0G1P0','553-1179',6.00,0,75.00);
  insert into EMPS values
  (269,'I','PELLETIER','ED','1791 LAKEWOOD RD',
  'CALGARY','AB','T5B4E4','662-3134',8.00,0,100.00);
  insert into EMPS values
  (291,'I','GHANI','SAYEED','13410-179 AVE',
  'SUNNYBROOK','AB','T0M0X0','452-1630',10.00,0,45.00);
  insert into EMPS values
  (107,'II','SWEKLA','MARTIN','765 CENTRE',
  'EDMONTON','AB','T4RI9I','456-8844',6.00,0,100.00);
  insert into EMPS values
  (133,'II','CINAMON','GINNY','10666-105 ST',
  'CORONADO','AB','T0J0J0','458-2822',12.00,2,50.00);
  insert into EMPS values
  (356,'II','CARSLISLE','LYNN','11524 ST ALBERT TR',
  'BROOKS','AB','T0L0B0','343-3673',10.00,0,100.00);
  insert into EMPS values
  (382,'II','ROBERTS','VELVET','10025-114 AV',
  'EDMONTON','AB','T5K2G4','421-7752',6.00,0,100.00);
  insert into EMPS values
  (390,'II','MAY','SONDRA','4338-38 ST',
  'CALGARY','AB','T0E2N0','434-1495',7.00,2,50.00);
  insert into EMPS values
  (391,'II','MARTIN','RON','7208-100 AVE',
  'CALGARY','AB','T0E2G0','452-3519',10.00,0,100.00);
  insert into EMPS values
  (393,'II','ZAZULA','LAWRENCE','105 BRANTFORD ST',
  'DIDSBURY','AB','T0B0R0','489-2351',10.00,0,100.00);
  insert into EMPS values
  (395,'II','LITTLE','PAUL','6105-90 AVE',
  'BROOKS','AB','T0L0B0','532-8665',10.00,0,75.00);
  insert into EMPS values
  (396,'II','ZENCO','ROBERT','9030-149 ST',
  'LETHBRIDGE','AB','T6B4K1','346-1010',10.00,3,100.00);
  insert into EMPS values
  (398,'II','LAPALME','TRUDY','2203-142 ST',
  'REDWATER','AB','T0L0M0','347-4810',10.00,0,45.00);
  insert into EMPS values
  (436,'II','GOZAHLI','RASHID','10615-83 AVE',
  'CALGARY','AB','T5K0N5','455-9945',12.00,0,100.00);
  insert into EMPS values
  (472,'II','RASMUSTEN','TERRI','994 WEST ST',
  'SOUTHWELL','NF','P4R1Y3','677-8426',7.00,0,100.00);
  insert into EMPS values
  (487,'II','HOKANTON','JACK','23 AKINSDALE GARDE',
  'LETHBRIDGE','AB','T5J1X8','435-3672',10.00,0,100.00);
  insert into EMPS values
  (494,'II','FRANCIS','SARAH','BOX 912',
  'ST PAUL','AB','T0M0N0','479-6308',16.00,2,50.00);
  insert into EMPS values
  (82,'J','SOON','KAM','67 RIVER',
  'EDMONTON','AB','T6H4E6','435-7784',16.00,0,100.00);
  insert into EMPS values
  (151,'J','KLEIN','ALICIA','12473-52 AVE',
  'DAVIS','AB','T0K0L0','452-3461',10.00,3,50.00);
  insert into EMPS values
  (155,'J','EPP','BEV','10026-112 ST',
  'BOYLE','AB','T0B0B0','752-2617',14.00,2,100.00);
  insert into EMPS values
  (156,'J','OOLONG','JERRY','14015-63 ST',
  'EDMONTON','AB','T5A1R6','476-4187',7.00,1,75.00);
  insert into EMPS values
  (167,'J','TIKKANEN','ESA','146 CONIFER ST',
  'DIDSBURY','AB','T0B0R0','452-5370',14.00,1,50.00);
  insert into EMPS values
  (168,'J','KURRI','JARI','9 WEDGEWOOD AVE',
  'ETON','AB','T1W0W0','438-2681',14.00,3,100.00);
  insert into EMPS values
  (170,'J','REID','IAN','8639-27 AVE',
  'LETHBRIDGE','AB','T5P4C9','454-6047',12.00,1,45.00);
  insert into EMPS values
  (108,'JJ','SMITH','IRENE','45 NORTH',
  'EDMONTON','AB','T5T4V0','433-1255',14.00,1,100.00);
  insert into EMPS values
  (134,'JJ','CHUTSKOFF','DUANE','12406-112 AVE',
  'EDMONTON','AB','T5S1J9','489-7701',5.00,2,100.00);
  insert into EMPS values
  (358,'JJ','MYERS','TERRY','33 GEORGIAN WAY',
  'BON ACCORD','AB','T0L0D0','998-3400',5.00,0,75.00);
  insert into EMPS values
  (399,'JJ','DELANEY','SCOTT','13125-69 ST',
  'RED DEER','AB','T6C4J4','454-2363',10.00,1,100.00);
  insert into EMPS values
  (400,'JJ','ZUKIWSKY','JOE','7 WARWICK RD',
  'GIBBONS','AB','T0L0L0','471-0875',9.00,0,75.00);
  insert into EMPS values
  (402,'JJ','GREKUL','LESLIE','120 WOODBINE RD',
  'CARDSTON','AB','T0M0M0','455-4191',10.00,0,50.00);
  insert into EMPS values
  (403,'JJ','FAJRAJSL','DIANA','3514-42A AVE',
  'CALGARY','AB','T5Y6G1','451-0036',10.00,1,100.00);
  insert into EMPS values
  (405,'JJ','BYRD','SHIRLEY','10130-117 ST',
  'VILLENEUVE','AB','T0R1M1','436-8014',10.00,0,75.00);
  insert into EMPS values
  (406,'JJ','WOLANSKI','CAROL','12135-107 ST',
  'CALGARY','AB','T5X3G9','426-7395',10.00,3,100.00);
  insert into EMPS values
  (407,'JJ','MOWAT','GLENN','3819-21 AVE',
  'CALGARY','AB','T5S1E7','465-9921',10.00,1,50.00);
  insert into EMPS values
  (490,'JJ','HERMITAGE','A ROBERT','BOX 25R',
  'GIBBONS','AB','T0L0L0','483-0698',9.00,1,75.00);
  insert into EMPS values
  (83,'K','MOSES','RANDY','54 HILL',
  'NEWTON','AB','T5B0O0','445-8733',16.00,1,75.00);
  insert into EMPS values
  (157,'K','NORRIS','MARIE','39 GARDEN CT',
  'CALGARY','AB','T4N5T9','751-6606',9.00,1,45.00);
  insert into EMPS values
  (161,'K','KLIMA','PETER','4445 CALGARY TRAIL',
  'CALGARY','AB','T6C4E3','767-4576',6.00,3,100.00);
  insert into EMPS values
  (162,'K','RHODE','ALBERT','BOX 4222',
  'OLDS','AB','T0B0L0','764-5123',8.00,1,45.00);
  insert into EMPS values
  (163,'K','TIMCHUK','MARTIN','10250-113 ST',
  'ASHTON','AB','T0L0R0','767-1111',5.00,1,100.00);
  insert into EMPS values
  (165,'K','MCLELLAND','MARTY','14723-73 ST',
  'CALGARY','AB','T6K3L6','998-3947',10.00,1,75.00);
  insert into EMPS values
  (219,'K','BLACK','DI','10609-109 ST',
  'LETHBRIDGE','AB','T6H2K3','455-3096',5.00,0,100.00);
  insert into EMPS values
  (119,'KK','MCMINIS','KARLA','67 S ST',
  'MORINVILLE','AB','T0K0K0','478-9341',8.00,0,100.00);
  insert into EMPS values
  (135,'KK','CHUNG VAN','KIET','6 MORGAN CRES',
  'ST ALBERT','AB','T8N2E2','458-7710',10.00,0,45.00);
  insert into EMPS values
  (361,'KK','HARVEY','GARRY','13229-39 ST',
  'GIBBONS','AB','T0L0L0','986-2051',6.00,2,100.00);
  insert into EMPS values
  (408,'KK','HEWSTON','GLEN','13910-99 AVE',
  'ASHTON','AB','T0L0R0','464-5123',10.00,2,100.00);
  insert into EMPS values
  (410,'KK','GORMET','EDIE','339 SADDLEBACK RD',
  'CALGARY','AB','T8N5C7','468-3194',10.00,1,100.00);
  insert into EMPS values
  (411,'KK','YANISH','WALTER','485 KNOTTWOOD RD',
  'ST PAUL','AB','T0M0N0','469-6503',14.00,0,45.00);
  insert into EMPS values
  (413,'KK','KHULLAR','OMAR','13316-129 ST',
  'ST ALBERT','AB','T6E5H5','668-4676',16.00,1,50.00);
  insert into EMPS values
  (414,'KK','ROUNCEVILLE','BOB','13126-65 ST',
  'CALGARY','AB','T4S5S9','634-3430',10.00,0,100.00);
  insert into EMPS values
  (416,'KK','WILLIAMS','JEAN','6029-104 ST',
  'BOYLE','AB','T0B0B0','665-5967',10.00,0,75.00);
  insert into EMPS values
  (423,'KK','STORBAKKEN','NELLIE','10403-172 ST',
  'GIBBONS','AB','T0L0L0','468-4944',10.00,2,100.00);
  insert into EMPS values
  (468,'KK','OSTAPEK','KAREN','12924-96 ST',
  'LEDUC','AB','T5M1P6','346-3060',10.00,1,100.00);
  insert into EMPS values
  (495,'KK','FRAUENFELD','VINCENT','10017-173 AVE',
  'CALGARY','AB','T6E4Z2','453-6646',10.00,3,45.00);
  insert into EMPS values
  (84,'L','HARVEY','SALLY','55 HILL',
  'NEWTON','AB','T5N8U8','445-8874',16.00,3,45.00);
  insert into EMPS values
  (158,'L','DRYDEN','TIM','9328-169 ST',
  'ST ALBERT','AB','T5H0K2','755-5049',10.00,1,100.00);
  insert into EMPS values
  (199,'L','BIRMINGHAM','JEAN','10334-176 ST',
  'EDMONTON','AB','T6H3N6','436-6126',9.00,0,100.00);
  insert into EMPS values
  (213,'L','RICHARDS','GAIL','2114-118 ST',
  'ST PAUL','AB','T0M0N0','437-1001',14.00,1,75.00);
  insert into EMPS values
  (228,'L','UNGER','FELIX','6151-124 ST',
  'CALMAR','AB','T0C0C0','522-4121',10.00,0,100.00);
  insert into EMPS values
  (256,'L','MUELLER','DAGMAR','8605-33 AVE',
  'REDWATER','AB','T0L0M0','458-9339',10.00,2,45.00);
  insert into EMPS values
  (266,'L','STEEL','TERRI','17816-137 AVE',
  'DAVIS','AB','T0K0L0','458-4778',5.00,0,100.00);
  insert into EMPS values
  (140,'LL','HEWLETT','RAY','1424 STONY PLAIN',
  'EDMONTON','AB','T5N3R3','452-2911',8.00,2,45.00);
  insert into EMPS values
  (141,'LL','VAN HEYNIGEN','PAT','17704-103 AVE',
  'MONTRE','AB','T4RB7J','424-1104',5.00,0,75.00);
  insert into EMPS values
  (363,'LL','EDGAR','RANDY','7716-78 AVE',
  'CARDSTON','AB','T0M0M0','963-6121',10.00,0,100.00);
  insert into EMPS values
  (389,'LL','CROSBY','WILLIAM','22 LARKSPUR CRES',
  'ASHTON','AB','T0L0R0','452-3190',10.00,1,75.00);
  insert into EMPS values
  (417,'LL','MCLAUGHLIN','SANDRA','81 LAFONDE CRES',
  'EDMONTON','AB','T6H4R8','665-4181',5.00,0,45.00);
  insert into EMPS values
  (419,'LL','PANASIUK','OLGA','6610-90 AVE',
  'LEDUC','AB','T5B1N1','656-4225',10.00,0,50.00);
  insert into EMPS values
  (420,'LL','PARNELL','DEBRA','2016-104A AVE',
  'CALGARY','AB','T7H2W4','537-5097',6.00,2,50.00);
  insert into EMPS values
  (422,'LL','SONNTAG','OLWIN','10154-103 ST',
  'CALMAR','AB','T0C0C0','452-5595',10.00,0,75.00);
  insert into EMPS values
  (424,'LL','LONG','SAM','4608-101 ST',
  'JASPER','AB','T0S0S0','454-6591',7.00,0,100.00);
  insert into EMPS values
  (425,'LL','CARTER','JOHN','15102A STONY PLAIN',
  'REDWATER','AB','T0L0M0','478-7012',10.00,0,45.00);
  insert into EMPS values
  (443,'LL','BLYTHE','GILBERT','#62 WEST 7TH',
  'BANFF','AB','T0R0R0','455-7743',12.00,3,45.00);
  insert into EMPS values
  (498,'LL','DAGENAIS','DONALD','4605-106A ST',
  'OLDS','AB','T0B0L0','479-7677',16.00,1,75.00);
  insert into EMPS values
  (85,'M','RUNGE','DAN','430 SOUTH',
  'NEWTON','AB','T5R5G7','445-8876',16.00,0,100.00);
  insert into EMPS values
  (200,'M','WEIDNER','HEINZ','6911-36 ST',
  'BOYLE','AB','T0B0B0','434-0098',9.00,1,100.00);
  insert into EMPS values
  (305,'M','SMITH','MARY','10665-62 AVE',
  'RED DEER','AB','T6J2Y1','483-3320',5.00,0,100.00);
  insert into EMPS values
  (307,'M','PASCAL','BLAISE','9370-160 AVE',
  'CALMAR','AB','T0C0C0','478-8112',10.00,1,50.00);
  insert into EMPS values
  (308,'M','GIBBS','KEVIN','10731-85 AVE',
  'CARDSTON','AB','T0M0M0','476-2140',10.00,1,50.00);
  insert into EMPS values
  (309,'M','EWASIUK','STEVE','7827-24 AVE',
  'CALGARY','AB','T6H2E4','433-8893',7.00,0,100.00);
  insert into EMPS values
  (311,'M','REAUGH','DARRYL','330 LEE RIDGE RD',
  'LETHBRIDGE','AB','T6C4E5','433-2411',10.00,0,45.00);
  insert into EMPS values
  (312,'M','ALLEN','MARK','100 FIR ST',
  'EDMONTON','AB','T7H2M1','476-6221',10.00,2,100.00);
  insert into EMPS values
  (314,'M','BASS','BILL','4711 SOUTH AV',
  'NEWBY','BC','V6G2N7','988-4403',10.00,1,100.00);
  insert into EMPS values
  (111,'MM','KILEY','DOT','444 C ST',
  'EDMONTON','AB','T7H6Y6','444-4488',6.00,0,100.00);
  insert into EMPS values
  (137,'MM','CHU','WILLIAM','10116-105 AVE',
  'SUNNYVALE','AB','T5H0K2','422-4322',10.00,1,75.00);
  insert into EMPS values
  (310,'MM','BARKER','TRACEY','105110-38 AVE',
  'LEDUC','AB','T6E0E1','454-0422',10.00,1,75.00);
  insert into EMPS values
  (426,'MM','BURROUGHS','HILDA','3609-113 ST',
  'BON ACCORD','AB','T0L0D0','489-2360',10.00,0,100.00);
  insert into EMPS values
  (427,'MM','WEINBERG','MARVIN','22560 WYE RD',
  'LETHBRIDGE','AB','T5N1P5','484-1739',10.00,2,100.00);
  insert into EMPS values
  (429,'MM','COGGINS','JACK','9022-51 AVE',
  'ETON','AB','T1W0W0','565-3085',8.00,0,50.00);
  insert into EMPS values
  (430,'MM','WEISLER','CAROL','6603-104 ST',
  'DIDSBURY','AB','T0B0R0','465-4131',10.00,0,100.00);
  insert into EMPS values
  (431,'MM','DEWITT','KATARINA','4624-99 ST',
  'VILLENEUVE','AB','T0R1M1','466-9827',10.00,1,45.00);
  insert into EMPS values
  (433,'MM','HAMILTON','SCOTT','6122-34A AVE',
  'CALGARY','AB','T5H3V3','574-2157',10.00,0,100.00);
  insert into EMPS values
  (434,'MM','WELLINGTON','EUNICE','4739-105B ST',
  'ASHTON','AB','T0L0R0','535-3781',10.00,0,45.00);
  insert into EMPS values
  (488,'MM','HOLLINSHEAD','DIANE','12114-92 ST',
  'EDMONTON','AB','T5B8E3','452-6770',14.00,0,75.00);
  insert into EMPS values
  (86,'N','GIBTIN','RITA','450 SOUTH',
  'NEWTON','AB','T6H9I0','432-1190',16.00,0,100.00);
  insert into EMPS values
  (153,'N','WALKINSHAW','CECILIA','11303-103 AVE',
  'LETHBRIDGE','AB','T5J2Y7','776-8221',12.00,1,100.00);
  insert into EMPS values
  (179,'N','GIBBONS','BILL','BOX 965',
  'GIBBONS','AB','T0L0L0','963-9551',9.00,1,75.00);
  insert into EMPS values
  (215,'N','MERRICK','JOHN','6039-35A AVE',
  'CALMAR','AB','T0C0C0','454-6064',8.00,3,45.00);
  insert into EMPS values
  (223,'N','MORRIS','EWAN','15348-117 AVE',
  'CALGARY','AB','T6K2Y5','532-1913',5.00,0,100.00);
  insert into EMPS values
  (249,'N','SCANTZ','WILLEM','5223-38A AVE',
  'DIDSBURY','AB','T0B0R0','563-2424',8.00,0,100.00);
  insert into EMPS values
  (274,'N','MAIN','GORDON','10224-109 ST',
  'REGINA','SK','S6H8T5','778-8251',10.00,0,75.00);
  insert into EMPS values
  (293,'N','SCHMIDT','ANNA','9318-60 AVE',
  'SUNNYBROOK','AB','T0M0X0','471-3086',10.00,1,75.00);
  insert into EMPS values
  (295,'N','KALEMBA','TED','14515-118 AVE',
  'SUNNYBROOK','AB','T0M0X0','422-8960',12.00,2,75.00);
  insert into EMPS values
  (296,'N','GHEBREMUSSE','ZED','11614-119 ST',
  'CORONADO','AB','T0J0J0','986-4612',10.00,0,100.00);
  insert into EMPS values
  (298,'N','BLAISE','DOMINICK','4634-91 AVE',
  'CALGARY','AB','T4R6B7','489-0115',10.00,1,75.00);
  insert into EMPS values
  (299,'N','TERRELL','MARK','10115-150 ST',
  'CALGARY','AB','T2W5B0','470-3579',10.00,1,75.00);
  insert into EMPS values
  (301,'N','EDDERS','SAM','10185-115 ST',
  'BROOKS','AB','T0L0B0','436-1030',10.00,0,100.00);
  insert into EMPS values
  (303,'N','SCHNEIDER','JOHN','7210-96A AVE',
  'BON ACCORD','AB','T0L0D0','467-1111',10.00,1,45.00);
  insert into EMPS values
  (304,'N','MCGOWAN','MARY','18412-61 AVE',
  'REDWATER','AB','T0L0M0','464-7123',10.00,3,100.00);
  insert into EMPS values
  (112,'NN','WILTON','SAM','333 D ST',
  'EDMONTON','AB','T4N2O9','433-8788',6.00,0,45.00);
  insert into EMPS values
  (138,'NN','HARRINGTON','WILSON','1444-118 AVE',
  'SUNNYVALE','AB','T5L2M5','454-2459',8.00,3,45.00);
  insert into EMPS values
  (294,'NN','ELLIOTT','DANIEL','#330, 10180-102 ST',
  'CALGARY','AB','T3L6G4','452-3690',14.00,0,75.00);
  insert into EMPS values
  (297,'NN','BARKER','TOSSA','7315-101 AVE',
  'SUNNYBROOK','AB','T0M0X0','434-5197',14.00,0,50.00);
  insert into EMPS values
  (397,'NN','SATHER','GLEN','11233-142 AVE',
  'RED DEER','AB','T6B2G2','346-4220',10.00,0,50.00);
  insert into EMPS values
  (404,'NN','FUSHTEY','SONIA','52519 RANGE RD',
  'DIDSBURY','AB','T0B0R0','465-6521',12.00,0,100.00);
  insert into EMPS values
  (415,'NN','STEPANYK','DYANNE','543 ORIOLE',
  'COLLINS','MB','B0R0T0','477-5328',8.00,2,50.00);
  insert into EMPS values
  (435,'NN','WELSH','ALLAN','13524-110 ST',
  'OLDS','AB','T0B0L0','467-5151',9.00,0,75.00);
  insert into EMPS values
  (437,'NN','RAMSEY','ALEC','10968-101 ST',
  'ST PAUL','AB','T0M0N0','452-9976',14.00,0,50.00);
  insert into EMPS values
  (438,'NN','WALTERS','HAROLD','12016-133A AVE',
  'CALGARY','AB','T6E5B6','589-3907',10.00,0,100.00);
  insert into EMPS values
  (439,'NN','MEEK','WILLIAM','9006-149 ST',
  'ST ALBERT','AB','T5A1C4','484-1736',10.00,1,100.00);
  insert into EMPS values
  (441,'NN','LOWE','MARK','8917-79 AVE',
  'CARDSTON','AB','T0M0M0','464-3344',6.00,0,45.00);
  insert into EMPS values
  (442,'NN','HANNAN','DAVID','8908-144 AVE',
  'CALGARY','AB','T1S1I1','423-1989',5.00,3,75.00);
  insert into EMPS values
  (460,'NN','SALVATORE','JEANNE','14203-98 AVE',
  'CARDSTON','AB','T0M0M0','426-7610',10.00,0,100.00);
  insert into EMPS values
  (87,'O','JAMES','NANCY','90 NORTH',
  'EDMONTON','AB','T6J9I9','432-9943',14.00,2,50.00);
  insert into EMPS values
  (209,'O','RAUSTER','HUGO','131 KNOTTWOOD RD',
  'CALGARY','AB','T5J3S4','483-3040',10.00,1,100.00);
  insert into EMPS values
  (231,'O','SKUBA','LLOYD','10755-81 AVE',
  'CALGARY','AB','T6E5J4','563-7475',14.00,1,100.00);
  insert into EMPS values
  (263,'O','ANDERS','WALLY','7711-173 ST',
  'ST PAUL','AB','T0M0N0','963-2862',14.00,0,100.00);
  insert into EMPS values
  (284,'O','WILKES','JOHN','#706, 5022-49 ST',
  'CORONADO','AB','T0J0J0','765-9087',10.00,0,100.00);
  insert into EMPS values
  (285,'O','KAISER','MONICA','#160, 12406-112 AV',
  'CALGARY','AB','T3H8U5','732-5651',10.00,0,50.00);
  insert into EMPS values
  (287,'O','MOZART','WILLIAM','8104-82 AVE',
  'CORONADO','AB','T0J0J0','788-4384',10.00,2,75.00);
  insert into EMPS values
  (288,'O','TCHAIKOWSKY','PETE','16110-116 AVE',
  'CALGARY','AB','T3W3Z1','463-5466',8.00,1,100.00);
  insert into EMPS values
  (290,'O','DENNZINGER','KLAUS','5910-97 ST',
  'CALGARY','AB','T9K5T5','466-8424',7.00,0,75.00);
  insert into EMPS values
  (292,'O','GHAOUTI','KETITA','10336-59 AVE',
  'CALGARY','AB','T4R7Y0','463-5155',9.00,1,100.00);
  insert into EMPS values
  (113,'OO','NATTRASS','SUSAN','222 E ST',
  'EDMONTON','AB','T4R9L2','456-2222',12.00,1,100.00);
  insert into EMPS values
  (139,'OO','MCFADDEN','BRIAN','15310-108 AVE',
  'PATERSON','AB','T6H5T4','489-3694',8.00,0,100.00);
  insert into EMPS values
  (283,'OO','MARSTON','EVA','703-18 AVE',
  'JASPER','AB','T0S0S0','782-5771',7.00,0,100.00);
  insert into EMPS values
  (286,'OO','KAJDER','HENRYK','6216 DAVIES RD',
  'SUNNYBROOK','AB','T0M0X0','783-7676',8.00,1,100.00);
  insert into EMPS values
  (367,'OO','JONES','RUSSELL','59 LANCASTER TERRA',
  'EDMONTON','AB','T7S2S9','479-1911',8.00,0,45.00);
  insert into EMPS values
  (432,'OO','ORSER','BRIAN','11918-127 AVE',
  'CALGARY','AB','T6H1T9','563-6547',10.00,3,100.00);
  insert into EMPS values
  (444,'OO','CUTHBERT','MARILLA','114 87 ST',
  'BANFF','AB','T0R0R0','415-8361',14.00,3,45.00);
  insert into EMPS values
  (445,'OO','SHIRLEY','ANNE','9808-103 ST',
  'EDMONTON','AB','T5K2G6','455-8732',14.00,2,50.00);
  insert into EMPS values
  (446,'OO','FUHR','WAYNE','19 SOUTH RD',
  'NIAGARA','ON','M8T5U7','683-1410',10.00,0,45.00);
  insert into EMPS values
  (448,'OO','GRETZKY','KEVIN','13287-99 AVE',
  'EDMONTON','AB','T5F3E0','412-6500',9.00,1,75.00);
  insert into EMPS values
  (449,'OO','SPITZ','MARK','7789-45 ST',
  'CALGARY','AB','T6G4E4','235-8401',14.00,2,50.00);
  insert into EMPS values
  (451,'OO','EDERS','THOMAS','BOX 5234',
  'GIBBONS','AB','T0L0L0','963-8301',9.00,1,75.00);
  insert into EMPS values
  (452,'OO','WRIGHT','OLIVER','BOX 76',
  'KAMLOOPS','BC','V6Y4N8','233-7710',6.00,0,100.00);
  insert into EMPS values
  (453,'OO','WRIGHT','ORVILLE','88 ROBIN',
  'CALMAR','AB','T0C0C0','433-1417',7.00,2,50.00);
  insert into EMPS values
  (88,'P','SAND','EMMA','67 NOBLE',
  'MORINVILLE','AB','T0K0K0','456-8833',14.00,0,100.00);
  insert into EMPS values
  (152,'P','MARSDEN','PHYLLIS','11920-103 ST',
  'LEDUC','AB','T6C4G2','732-0901',12.00,2,45.00);
  insert into EMPS values
  (154,'P','MCEVOY','ROBERTA','9308 EDINBORO RD',
  'EDMONTON','AB','T5H3M8','734-9135',10.00,0,100.00);
  insert into EMPS values
  (178,'P','TAYLOR','CHUCK','8708-106 ST',
  'LEDUC','AB','T6E5V8','452-5330',10.00,3,45.00);
  insert into EMPS values
  (273,'P','KURIHARA','TOM','4 LLOYD PL',
  'BOYLE','AB','T0B0B0','776-6221',5.00,0,100.00);
  insert into EMPS values
  (275,'P','LOHSE','ED','8503 DAVIES RD',
  'CALGARY','AB','T3R1M7','786-7676',14.00,3,100.00);
  insert into EMPS values
  (277,'P','ZIMMER','MARION','7722-9 ST',
  'CORONADO','AB','T0J0J0','776-8651',10.00,1,100.00);
  insert into EMPS values
  (279,'P','ASTAIRE','FRED','1475 HOWE ST',
  'JASPER','AB','T0S0S0','735-1225',6.00,2,45.00);
  insert into EMPS values
  (281,'P','KAYE','DANIEL','169 LEXINGTON CRT',
  'CORONADO','AB','T0J0J0','723-5651',6.00,1,100.00);
  insert into EMPS values
  (282,'P','THOMAS','DAN','BOX 10',
  'CALGARY','AB','T2W1F8','783-9559',10.00,1,50.00);
  insert into EMPS values
  (280,'PP','COSBY','TED','#23, 9918-90 AVE',
  'JASPER','AB','T0S0S0','765-9807',5.00,0,75.00);
  insert into EMPS values
  (313,'PP','DINIGAN','MATT','10537-107 ST',
  'BOYLE','AB','T0B0B0','483-0244',8.00,0,100.00);
  insert into EMPS values
  (370,'PP','DENEY','RONALD','9236-154 ST',
  'LETHBRIDGE','AB','T6E5R7','679-3236',10.00,2,75.00);
  insert into EMPS values
  (454,'PP','WALTNER','CHRISTA','11 DUNSMUIR CR',
  'LETHBRIDGE','AB','T5A3P8','423-5081',10.00,2,50.00);
  insert into EMPS values
  (455,'PP','WAN','YUNG K','8403-142 ST',
  'DIDSBURY','AB','T0B0R0','532-3949',10.00,0,100.00);
  insert into EMPS values
  (456,'PP','WAMSTEEKER','WILLIAM','6120-80 ST',
  'ETON','AB','T1W0W0','573-3959',8.00,3,75.00);
  insert into EMPS values
  (458,'PP','SCARLETT','LLOYD','9940-79 AVE',
  'LETHBRIDGE','AB','T8N1N3','420-2006',10.00,1,50.00);
  insert into EMPS values
  (459,'PP','SAYERS','FREDERICK','9103-140 AVE',
  'CALGARY','AB','T5R9I2','523-1464',10.00,0,45.00);
  insert into EMPS values
  (461,'PP','GOLIATH','HUGO','2327-91 AVE',
  'BON ACCORD','AB','T0L0D0','523-7507',9.00,0,100.00);
  insert into EMPS values
  (466,'PP','ROODBOL','OTTO','BOX 52',
  'KAMLOOPS','BC','V8U3J3','525-5885',14.00,0,50.00);
  insert into EMPS values
  (89,'Q','OTIS','ROB','333 NORTH',
  'NEWTON','AB','T5FY7H','432-9951',16.00,1,100.00);
  insert into EMPS values
  (264,'Q','WISDORF','KEN','10018-83 AVE',
  'CARDSTON','AB','T0M0M0','955-6411',10.00,2,50.00);
  insert into EMPS values
  (265,'Q','FELDMAN','BERNIE','17323-69 AVE',
  'CALGARY','AB','T5J1N3','459-6611',10.00,0,75.00);
  insert into EMPS values
  (267,'Q','HILLYER','ROBERTA','1102 HERMITAGE RD',
  'ST ALBERT','AB','T5N3C7','939-2535',16.00,1,45.00);
  insert into EMPS values
  (268,'Q','MARRIOTT','MIKE','8023-27 AVE',
  'LEDUC','AB','T6B2H7','436-5865',10.00,0,100.00);
  insert into EMPS values
  (270,'Q','JODIET','JANE','10025-115 ST',
  'LETHBRIDGE','AB','T6A0A1','483-2551',10.00,0,100.00);
  insert into EMPS values
  (272,'Q','KUHARCHUK','DAN','1A CALLINGWOOD CT',
  'EDMONTON','AB','T5G8U3','732-0647',5.00,1,45.00);
  insert into EMPS values
  (115,'QQ','TOD','NANCY','489 EAST',
  'EDMONTON','AB','T6H3R6','456-8333',7.00,1,100.00);
  insert into EMPS values
  (145,'QQ','MONYCH','REBECCA','14209-124A AVE',
  'NEWARK','NJ','10045','457-0728',5.00,3,50.00);
  insert into EMPS values
  (462,'QQ','GRAVES','DAVID','9436-74 ST',
  'REDWATER','AB','T0L0M0','532-7412',10.00,0,100.00);
  insert into EMPS values
  (464,'QQ','RUTHERFORD','ALAN','8620 JASPER AVE',
  'GIBBONS','AB','T0L0L0','423-4407',12.00,2,45.00);
  insert into EMPS values
  (465,'QQ','ROPPELT','HANS','1020-41 ST',
  'CALMAR','AB','T0C0C0','582-5907',10.00,1,100.00);
  insert into EMPS values
  (467,'QQ','ROBERTS','ALICE','8657-51 AVE',
  'CALGARY','AB','T5G7N7','523-4407',10.00,2,50.00);
  insert into EMPS values
  (469,'QQ','WENDALL','PETER','2007 FAIRVIEW CT',
  'LETHBRIDGE','AB','T5R5E9','343-1424',16.00,0,75.00);
  insert into EMPS values
  (470,'QQ','OLSMTEAD','OLIVER','11614-112 AVE',
  'EDMONTON','AB','T6H1J9','555-2158',5.00,0,100.00);
  insert into EMPS values
  (90,'R','BYRON','LANCE','9U CENTRE',
  'NEWTON','AB','T0K3E3','457-9355',16.00,2,50.00);
  insert into EMPS values
  (226,'R','MARTENS','VERNA','1301-8 ST SW',
  'DIDSBURY','AB','T0B0R0','352-2450',12.00,0,45.00);
  insert into EMPS values
  (238,'R','HARRIS','REX','13028-119 ST',
  'LETHBRIDGE','AB','T5K1V8','583-7411',10.00,1,100.00);
  insert into EMPS values
  (243,'R','MORRIS','JODY','6107-101 AVE',
  'CALMAR','AB','T0C0C0','558-3902',5.00,0,100.00);
  insert into EMPS values
  (254,'R','WALKER','JOHN','31 BRAESIDE CRES',
  'BON ACCORD','AB','T0L0D0','962-5755',5.00,0,75.00);
  insert into EMPS values
  (255,'R','HABERLAND','VAL','9741-76 AVE',
  'CALGARY','AB','T6E1M5','452-3501',9.00,0,100.00);
  insert into EMPS values
  (257,'R','HAYES','GARY','12044 FORT RD',
  'ASHTON','AB','T0L0R0','467-6938',8.00,1,100.00);
  insert into EMPS values
  (259,'R','LIPP','CARL','4403 RIVERBEND RD',
  'OLDS','AB','T0B0L0','459-5261',12.00,3,100.00);
  insert into EMPS values
  (261,'R','HANSTON','RICH','10319-113 ST',
  'CALGARY','AB','T5N1T5','962-5950',7.00,0,75.00);
  insert into EMPS values
  (262,'R','ANDERS','GLENN','12315-103 ST',
  'CALMAR','AB','T0C0C0','922-5660',10.00,1,75.00);
  insert into EMPS values
  (271,'R','PIERCE','ROB','BOX 925 SOUTH',
  'BANFF','AB','T0R0R0','421-5512',9.00,2,100.00);
  insert into EMPS values
  (116,'RR','SLIWA','EUGENE','329 SOUTH',
  'EDMONTON','AB','T6I9N4','433-8711',9.00,1,45.00);
  insert into EMPS values
  (142,'RR','GORDEY','BRENDA','16652-117 AVE',
  'EDMONTON','AB','T6H8T5','467-2083',6.00,0,100.00);
  insert into EMPS values
  (373,'RR','WINSTON','RALPH','10837-69 AVE',
  'RED DEER','AB','T5V1B4','623-5651',9.00,3,45.00);
  insert into EMPS values
  (418,'RR','CORNERS','MAY','13910 STONY PLAIN',
  'LETHBRIDGE','AB','T5H6A3','666-6131',10.00,1,75.00);
  insert into EMPS values
  (450,'RR','WALWYN','MURRAY','10140-120 ST',
  'GIBBONS','AB','T0L0L0','426-9033',10.00,1,100.00);
  insert into EMPS values
  (471,'RR','OLENSKY','OLEG','10435-52 ST',
  'BOYLE','AB','T0B0B0','535-3672',6.00,0,45.00);
  insert into EMPS values
  (473,'RR','PAUF','JAMES','17140-103 ST',
  'CALGARY','AB','T3V5N7','553-6735',7.00,3,75.00);
  insert into EMPS values
  (475,'RR','OLIVER','ARIADNE','10780-31 ST',
  'CALGARY','AB','T6A3T4','476-9308',10.00,1,100.00);
  insert into EMPS values
  (476,'RR','NIAGARA','JOHN','11455-43 AVE',
  'ST PAUL','AB','T0M0N0','632-3156',10.00,0,50.00);
  insert into EMPS values
  (477,'RR','NICO','ALLISON','6910-34 ST',
  'CALGARY','AB','T8N1B4','532-1400',8.00,0,100.00);
  insert into EMPS values
  (479,'RR','LAPRADD','RENE','10510-150 ST',
  'ASHTON','AB','T0L0R0','476-5115',10.00,2,75.00);
  insert into EMPS values
  (482,'RR','LANIER','MARIE','10125-150 ST',
  'VILLENEUVE','AB','T0R1M1','452-4280',10.00,0,100.00);
  insert into EMPS values
  (91,'S','LORD','PETER','478 CITY',
  'MORINVILLE','AB','T0K0K0','444-8868',16.00,0,100.00);
  insert into EMPS values
  (217,'S','WILLIS','CHRIS','12718-78 ST',
  'WINNIPEG','MB','B9M4R7','876-3092',10.00,3,45.00);
  insert into EMPS values
  (221,'S','ESTERHAZY','JAMES','15923-114 AVE',
  'CALGARY','AB','T6E5G5','566-1248',8.00,0,75.00);
  insert into EMPS values
  (244,'S','SCHEERER','CAROL','9324-60 AVE',
  'CARDSTON','AB','T0M0M0','489-2447',10.00,0,100.00);
  insert into EMPS values
  (246,'S','BIXBY','BILL','10250-122 ST',
  'LEDUC','AB','T6H1B6','583-5837',7.00,1,100.00);
  insert into EMPS values
  (248,'S','SHUMAKER','BILL','1-9715-104 ST',
  'ETON','AB','T1W0W0','568-7080',8.00,0,45.00);
  insert into EMPS values
  (250,'S','MOORE','MARK','18612-57 AVE',
  'BROOKS','AB','T0L0B0','434-3656',10.00,2,100.00);
  insert into EMPS values
  (251,'S','O''RILEY','MARY','21230-35 AVE',
  'VILLENEUVE','AB','T0R1M1','555-1672',10.00,0,100.00);
  insert into EMPS values
  (252,'S','THIBODEAU','JANE','17416-106A AVE',
  'LETHBRIDGE','AB','T6B2L5','462-1433',10.00,1,100.00);
  insert into EMPS values
  (276,'S','BRADLEY','LOIS','1245 67 AV',
  'NEWELL','BC','V0I8N4','455-9443',12.00,0,50.00);
  insert into EMPS values
  (117,'SS','RUSK','CARLA','444 NORTH',
  'EDMONTON','AB','T5H4R4','432-8766',7.00,1,100.00);
  insert into EMPS values
  (143,'SS','SECORD','LAURA','5104-82 AVE',
  'DAVIS','AB','T0K0L0','482-1515',7.00,0,100.00);
  insert into EMPS values
  (376,'SS','NORTON','EDWARD','9911-155 ST',
  'CARDSTON','AB','T0M0M0','639-4611',10.00,1,100.00);
  insert into EMPS values
  (401,'SS','GRANT','LESLIE','10330-123 ST',
  'CALMAR','AB','T0C0C0','471-6903',10.00,0,100.00);
  insert into EMPS values
  (447,'SS','MESSIER','WAYNE','12113-87 ST',
  'CALGARY','AB','T6K3E0','468-5052',10.00,0,100.00);
  insert into EMPS values
  (480,'SS','JEANOTTE','TERRY','9908-109 ST',
  'CALGARY','AB','T5N0M4','452-1678',10.00,0,45.00);
  insert into EMPS values
  (485,'SS','JACOBS','ANNE','16727-116 AVE',
  'DIDSBURY','AB','T0B0R0','469-5356',12.00,0,100.00);
  insert into EMPS values
  (489,'SS','HARGREAVES','KARY','14298-56 ST',
  'KAMLOOPS','BC','V5T8J2','455-7310',6.00,1,100.00);
  insert into EMPS values
  (492,'SS','HEXIMER','ALYS','14511-64 ST',
  'ST ALBERT','AB','T8N2E7','466-0767',10.00,0,100.00);
  insert into EMPS values
  (493,'SS','MIDDEN','TRUDY','3840-115 AVE',
  'CALGARY','AB','T5N1L6','471-2585',10.00,2,50.00);
  insert into EMPS values
  (92,'T','SUNG','SAM','78 CITY',
  'MORINVILLE','AB','T0K0K0','444-0023',16.00,2,50.00);
  insert into EMPS values
  (166,'T','MCTAVISH','CRAIG','6827-111 ST',
  'VILLENEUVE','AB','T0R1M1','758-3036',14.00,0,100.00);
  insert into EMPS values
  (234,'T','ONWELL','FRED','11802-145 ST',
  'FALLIS','AB','T1M0R0','536-9674',10.00,1,100.00);
  insert into EMPS values
  (236,'T','HUTCHINHS','EDNA','10160-114 ST',
  'ST PAUL','AB','T0M0N0','583-4092',14.00,0,75.00);
  insert into EMPS values
  (237,'T','O''DONNELL','COLLEEN','14130-26 ST',
  'BROOKS','AB','T0L0B0','484-1004',10.00,1,100.00);
  insert into EMPS values
  (239,'T','SMITH','TRISH','9516-101 ST',
  'BON ACCORD','AB','T0L0D0','973-5090',5.00,0,45.00);
  insert into EMPS values
  (240,'T','LANGFORD','BOB','3512-24 AVE',
  'REDWATER','AB','T0L0M0','468-2532',10.00,2,100.00);
  insert into EMPS values
  (242,'T','EWANCHUK','KIM','53 WEST TERRACE PL',
  'GIBBONS','AB','T0L0L0','536-2867',6.00,1,100.00);
  insert into EMPS values
  (253,'T','NOYES','VICTORIA','100 WOLF WILLOW CL',
  'CALGARY','AB','T8A0Y8','567-7440',6.00,0,100.00);
  insert into EMPS values
  (118,'TT','PICKFORD','ELLA','678 WEST',
  'EDMONTON','AB','T3E9M7','456-9921',12.00,2,50.00);
  insert into EMPS values
  (144,'TT','SMITH','ROBERT','9140-118 AVE',
  'DAVIS','AB','T0K0L0','436-6511',6.00,2,50.00);
  insert into EMPS values
  (394,'TT','CUTHBERT','MATTHEW','979 HOOKE RD',
  'ETON','AB','T1W0W0','532-7430',10.00,1,75.00);
  insert into EMPS values
  (483,'TT','JOFFE','SYLVIA','10121-121 ST',
  'CARDSTON','AB','T0M0M0','484-3351',10.00,0,75.00);
  insert into EMPS values
  (491,'TT','PRENGER','RUSSELL','17117-96 ST',
  'CALGARY','AB','T3L6B3','468-5943',10.00,1,75.00);
  insert into EMPS values
  (496,'TT','DEN BOEF','STEPHEN','12138-106 ST',
  'CALGARY','AB','T5F9K9','429-7066',10.00,1,75.00);
  insert into EMPS values
  (497,'TT','DEMPSEY','WILLIAM','11 POIRIER AVE',
  'LETHBRIDGE','AB','T9A1R6','467-9963',10.00,0,50.00);
  insert into EMPS values
  (93,'U','NEHRU','LIBBY','777 HILL',
  'SASKATOON','SK','S1F3K8','634-5477',9.00,0,100.00);
  insert into EMPS values
  (186,'U','KING','CARL','10703 BEARSPAW DR',
  'ST PAUL','AB','T0M0N0','433-4121',8.00,0,100.00);
  insert into EMPS values
  (195,'U','JONES','JAMIE','9545-58 AVE',
  'CARDSTON','AB','T0M0M0','437-0166',7.00,0,100.00);
  insert into EMPS values
  (197,'U','CHING','YING','10018-112 ST',
  'LEDUC','AB','T6E0C9','455-1672',5.00,1,100.00);
  insert into EMPS values
  (198,'U','GRABINSKY','JEROME','16 WILLOUGHBY ST',
  'LETHBRIDGE','AB','T6E1Z2','462-9433',6.00,2,100.00);
  insert into EMPS values
  (202,'U','HORNBY','PHIL','7903-132 AVE',
  'CALGARY','AB','T5N9H5','435-6353',5.00,0,45.00);
  insert into EMPS values
  (289,'U','SCHUBERT','WILL','BOX 293',
  'CALGARY','AB','T4R7F7','468-4218',10.00,0,45.00);
  insert into EMPS values
  (109,'UU','CASWELL','CHERYL','733 SOUTH',
  'MORINVILLE','AB','T0K0K0','421-9755',14.00,1,75.00);
  insert into EMPS values
  (110,'UU','NORBERT','SAM','555 B ST',
  'EDMONTON','AB','T5H2W2','444-0099',6.00,1,100.00);
  insert into EMPS values
  (386,'UU','KELLY','GRACE','1111-49A ST',
  'ST PAUL','AB','T0M0N0','425-9170',10.00,3,75.00);
  insert into EMPS values
  (499,'UU','BOUSCHARD','MARCEL','1825-151 AVE',
  'ASHTON','AB','T0L0R0','469-5336',10.00,0,100.00);
  insert into EMPS values
  (94,'V','ORM','WES','56B ORIOLE ST',
  'EDMONTON','AB','T1A1A1','444-8899',16.00,0,100.00);
  insert into EMPS values
  (190,'V','ABERNATHY','KEN','8309-161 ST',
  'BON ACCORD','AB','T0L0D0','482-6221',16.00,1,45.00);
  insert into EMPS values
  (224,'V','BELLAMY','JIM','10330-130 ST',
  'BROOKS','AB','T0L0B0','523-5414',7.00,2,45.00);
  insert into EMPS values
  (225,'V','BOLT','JAMES','10136-100 ST',
  'CALMAR','AB','T0C0C0','528-1164',10.00,0,100.00);
  insert into EMPS values
  (227,'V','MADDON','OSCAR','1 LINWOOD CRES',
  'CALGARY','AB','T4B8E3','578-6888',8.00,1,45.00);
  insert into EMPS values
  (229,'V','NJUYEN','LAI THI','9082-90 AVE',
  'VILLENEUVE','AB','T0R1M1','577-6444',10.00,2,100.00);
  insert into EMPS values
  (230,'V','KAKOULLIS','CHERIE','1824-36 ST',
  'OLDS','AB','T0B0L0','455-6444',14.00,0,75.00);
  insert into EMPS values
  (232,'V','KAKULPHIMP','PHADONG','1642-37 ST',
  'EDMONTON','AB','T5G3R5','570-1683',5.00,0,100.00);
  insert into EMPS values
  (247,'V','KRAVITZ','PAUL','5645-105 ST',
  'LETHBRIDGE','AB','T5E5R8','654-9985',10.00,3,75.00);
  insert into EMPS values
  (120,'VV','HENDRY','RITA','23 OXFORD',
  'EDMONTON','AB','T4I4F7','478-9332',12.00,0,45.00);
  insert into EMPS values
  (146,'VV','MACDONALD','PERRY','9939 BELLAMY HILL',
  'ETON','AB','T1W0W0','428-6019',6.00,1,75.00);
  insert into EMPS values
  (409,'VV','ZVONKOVIC','OLGA','1052 KNOTTWOOD RD',
  'OLDS','AB','T0B0L0','489-3906',10.00,0,75.00);
  insert into EMPS values
  (412,'VV','ZYTARUK','STEVEN','1304-50 ST',
  'CALGARY','AB','T5H3K5','668-3020',10.00,0,100.00);
  insert into EMPS values
  (500,'VV','BIRKINSHAW','DOUGLAS','17329-105 ST',
  'EDMONTON','AB','T5S1H2','483-0050',8.00,3,45.00);
  insert into EMPS values
  (95,'W','NESSEY','ORVILLE','56 GOLD',
  'EDMONTON','AB','T5G4R4','456-8888',8.00,0,100.00);
  insert into EMPS values
  (159,'W','VACHON','EMMA','21-4404-122 ST',
  'CALGARY','AB','T5G3A6','755-3214',14.00,0,100.00);
  insert into EMPS values
  (160,'W','LOOB','HOKAN','10626-67 AVE',
  'ST PAUL','AB','T0M0N0','789-4903',6.00,3,50.00);
  insert into EMPS values
  (169,'W','SCHWEDA','NORBERT','9119-82 AVE',
  'BROOKS','AB','T0L0B0','454-1144',8.00,1,50.00);
  insert into EMPS values
  (192,'W','CHINELLATO','CARLO','12145-67 ST',
  'FALLIS','AB','T1M0R0','470-2228',10.00,0,100.00);
  insert into EMPS values
  (214,'W','THOMAS','WAYNE','10159-118 ST',
  'FALLIS','AB','T1M0R0','484-5521',12.00,2,45.00);
  insert into EMPS values
  (216,'W','MOULTON','ROBERT','13114-30 ST',
  'OLDS','AB','T0B0L0','488-9265',10.00,2,100.00);
  insert into EMPS values
  (218,'W','NOLEN','DON','15350-110A AVE',
  'BOYLE','AB','T0B0B0','455-4088',14.00,1,75.00);
  insert into EMPS values
  (220,'W','BUNTZ','NORM','129-70 WOODLANDS R',
  'LETHBRIDGE','AB','T5H2M0','471-3381',9.00,0,100.00);
  insert into EMPS values
  (222,'W','BRIDGES','SARAH','7103-95 ST',
  'GIBBONS','AB','T0L0L0','559-6022',9.00,1,100.00);
  insert into EMPS values
  (260,'W','NEWELL','BARB','6058-37A AVE',
  'GIBBONS','AB','T0L0L0','987-2176',6.00,0,100.00);
  insert into EMPS values
  (121,'WW','DETTMER','ALEX','45 OXFORD',
  'EDMONTON','AB','T5J8K8','433-5564',12.00,0,100.00);
  insert into EMPS values
  (147,'WW','EWEN','ROSS','10807-105 AVE',
  'EDMONTON','AB','T5H0K9','454-0728',10.00,2,100.00);
  insert into EMPS values
  (421,'WW','ROBERTS','DWAYNE','5903-45 ST',
  'CARDSTON','AB','T0M0M0','437-5164',10.00,3,100.00);
  insert into EMPS values
  (96,'X','WILDE','OSCAR','19 SILVER',
  'NEWTON','AB','T6TY1G','455-9999',16.00,1,75.00);
  insert into EMPS values
  (194,'X','WEIDNER','LORETTA','10565-111 ST',
  'CALMAR','AB','T0C0C0','436-2878',6.00,1,75.00);
  insert into EMPS values
  (203,'X','RAINIER','HENRY','7915-112 AVE',
  'ST ALBERT','AB','T5T3J2','466-2436',7.00,0,75.00);
  insert into EMPS values
  (210,'X','NOERENBERG','HAL','3103-106 AVE',
  'CALGARY','AB','T5J1K7','453-5164',12.00,0,100.00);
  insert into EMPS values
  (211,'X','HERMANN','NOEL','354-16 ST',
  'VILLENEUVE','AB','T0R1M1','423-5216',7.00,0,45.00);
  insert into EMPS values
  (212,'X','EVANS','FRANCIS','1004 STRATHCONA DR',
  'DIDSBURY','AB','T0B0R0','423-5181',8.00,0,100.00);
  insert into EMPS values
  (114,'XX','GREGG','RANDY','23 WEST',
  'EDMONTON','AB','T6U3R9','456-7777',7.00,0,100.00);
  insert into EMPS values
  (122,'XX','CHIN','SALLY','670 ROBIN',
  'EDMONTON','AB','T5C4M9','433-9985',8.00,0,100.00);
  insert into EMPS values
  (302,'XX','GRAVES','DARRYL','8920-100 ST',
  'LETHBRIDGE','AB','T5K0L6','998-7409',16.00,2,75.00);
  insert into EMPS values
  (97,'Y','AARON','MARK','29 SILVER',
  'NEWTON','AB','T6TY2E','455-3255',5.00,0,100.00);
  insert into EMPS values
  (183,'Y','DELAMRE','MARTIN','6612-106 AVE',
  'CALGARY','AB','T2E3N5','483-5961',16.00,0,45.00);
  insert into EMPS values
  (184,'Y','ABEL','WILFRED','9060-52 ST',
  'ST ALBERT','AB','T5E5R8','451-0880',8.00,1,100.00);
  insert into EMPS values
  (185,'Y','VARGA','BOB','10840-25 AVE',
  'CALGARY','AB','T8A3H9','434-6145',5.00,1,100.00);
  insert into EMPS values
  (188,'Y','CAIN','LEWIS','12223-66 ST',
  'BROOKS','AB','T0L0B0','439-0068',10.00,2,100.00);
  insert into EMPS values
  (189,'Y','ABEL','RICHARD','3504 TUDOR GLEN',
  'LETHBRIDGE','AB','T5B2N1','488-1218',5.00,0,75.00);
  insert into EMPS values
  (191,'Y','CHIN','MAXINE','4317-118 AVE',
  'REDWATER','AB','T0L0M0','423-1639',14.00,3,100.00);
  insert into EMPS values
  (193,'Y','MARSDEN','MIKE','10460 MAYFIELD RD',
  'GIBBONS','AB','T0L0L0','469-2532',6.00,0,100.00);
  insert into EMPS values
  (201,'Y','GORDON','HANS','14011-67 AVE',
  'VANCOUVER','BC','V9A3E5','433-6207',7.00,1,75.00);
  insert into EMPS values
  (205,'Y','LLOYD','TERRY','9615-104 ST',
  'ST PAUL','AB','T0M0N0','352-4434',8.00,1,100.00);
  insert into EMPS values
  (206,'Y','RAUCH','PENNY','8620-128 AVE',
  'CALGARY','AB','T5W1G5','468-4604',10.00,2,100.00);
  insert into EMPS values
  (235,'Y','KADYK','CLARENCE','9359-52 ST',
  'CARDSTON','AB','T0M0M0','436-9576',16.00,1,100.00);
  insert into EMPS values
  (258,'Y','SKALABIN','GARY','12753 FORT RD',
  'RED DEER','AB','T5H3E8','458-1808',10.00,0,75.00);
  insert into EMPS values
  (350,'Y','MASTERTON','LEIGH','256 RANGE RD',
  'SUNNYBROOK','AB','T0M0X0','476-5502',7.00,2,50.00);
  insert into EMPS values
  (106,'YY','GILLARD','ADDIE','56 HILL',
  'MORINVILLE','AB','T0K0K0','453-8887',14.00,1,100.00);
  insert into EMPS values
  (131,'YY','CARDWELL','SIMON','9629-82 AVE',
  'VILLENEUVE','AB','T0R1M1','432-7880',12.00,2,50.00);
  insert into EMPS values
  (149,'YY','STEWART','RICHARD','BOX 92',
  'GIBBONS','AB','T0L0L0','964-8754',8.00,1,45.00);
  insert into EMPS values
  (306,'YY','EINSTEIN','ALBERT','10125-109 ST',
  'GIBBONS','AB','T0L0L0','423-4330',6.00,0,100.00);
  insert into EMPS values
  (98,'Z','ZINK','WILL','456 NOBLE',
  'MORINVILLE','AB','T0K0K0','433-7788',9.00,0,100.00);
  insert into EMPS values
  (174,'Z','BROWN','CHARLOTTE','13919-92 AVE',
  'GIBBONS','AB','T0L0L0','477-6816',12.00,1,100.00);
  insert into EMPS values
  (175,'Z','LYSDALE','LOTTE','247 HILLCREST PL',
  'CALMAR','AB','T0C0C0','452-6033',7.00,2,75.00);
  insert into EMPS values
  (176,'Z','KLYCHAK','PAULA','8318-154 ST',
  'CARDSTON','AB','T0M0M0','986-4616',5.00,0,100.00);
  insert into EMPS values
  (177,'Z','HIBBERD','PETE','15 PARK LANE',
  'DAVIS','AB','T0K0L0','459-1214',14.00,2,100.00);
  insert into EMPS values
  (180,'Z','MABBOTT','KELLY','28 MORELAND RD',
  'EDMONTON','AB','T9J2W2','453-3405',14.00,1,100.00);
  insert into EMPS values
  (182,'Z','DEJONGE','TIM','BOX 913',
  'GIBBONS','AB','T0L0L0','963-4587',5.00,2,50.00);
  insert into EMPS values
  (187,'Z','LEWIS','BILL','18503-92 AVE',
  'CALGARY','AB','T8N3S1','422-1676',16.00,0,100.00);
  insert into EMPS values
  (196,'Z','LUAH','BETSY','9808-105 ST',
  'DAVIS','AB','T0K0L0','436-9985',6.00,0,45.00);
  insert into EMPS values
  (104,'ZZ','MILES','FRANK','12A Q RD',
  'EDMONTON','AB','T5TR5R','433-9999',12.00,2,50.00);
  insert into EMPS values
  (136,'ZZ','CHUNG','VICTOR','7927 CORONET RD',
  'EDMONTON','AB','T6E4N7','466-5580',12.00,1,100.00);
  insert into EMPS values
  (150,'ZZ','SAZIO','RALPH','90 CORNER ST',
  'CALGARY','AB','T5K2B3','478-0633',14.00,3,50.00);

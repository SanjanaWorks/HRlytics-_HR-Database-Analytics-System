Create database HR_db;
use HR_db;


Create Table Regions(
Region_id int primary key,
Region_Name varchar(25) default Null
);
Select * from Regions;

Create Table Countries(
Country_id char(2) primary key,
Country_Name varchar(40) default null,
Region_id int not null,
foreign key(Region_id) references Regions(Region_id) on delete
cascade on update cascade
);
Select * from Countries;


Create Table Locations(
Location_id int primary key, 
Street_Address varchar(40) default null,
Postal_Code varchar(12) default null,
City varchar(30) not null,
State_Province varchar(25) default null,
Country_id char(2) not null,
foreign key(Country_id) references Countries(Country_id) on delete
cascade on update cascade
);
Select * from Locations;

Create Table Jobs(
Job_id int primary key,
Job_Title varchar(35) not null,
Min_Salary decimal(8,2) default null,
Max_Salary decimal(8,2) default null
);
Select * from Jobs;

Create Table Departments(
Department_id int primary key,
Department_Name varchar(30) not null,
Location_id int default null,
foreign key(Location_id) references Locations(Location_id) on delete 
cascade on update cascade
);
Select * from Departments;

Create Table Employees(
Employee_id int primary key,
First_Name varchar(20) default null,
Last_Name varchar(25) not null,
Email varchar(100) not null,
Phone_Number varchar(20) default null,
Hire_Date date not null,
Job_id int not null,
Salary decimal(8,2) not null,
Manager_id int default null,
Department_id int default null,
foreign key(Job_id) references Jobs(Job_id) on delete cascade on update cascade,
foreign key(Department_id) references Departments(Department_id) on delete cascade on update cascade,
foreign key(Manager_id) references Employees(Employee_id)
);
Select * from Employees;

Create Table Dependents(
Dependent_id int primary key,
First_Name varchar(50) not null,
Last_Name varchar(50) not null,
Relationship varchar(25) not null,
Employee_id int not null,
foreign key(Employee_id) references Employees(Employee_id) on delete
cascade on update cascade
);
Select * from Dependents;

--Data Insertion of Table Regions
Insert into Regions(Region_id,Region_Name)  
values (1,'Europe'); 
Insert into Regions(Region_id,Region_Name)  
values (2,'Americas'); 
Insert into Regions(Region_id,Region_Name)  
values (3,'Asia'); 
Insert into Regions(Region_id,Region_Name)  
values(4,'Middle East and Africa'); 

Select * from Regions;

---Data Insertion of Countries
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('AR','Argentina',2); 
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('AU','Australia',3); 
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('BE','Belgium',1); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('BR','Brazil',2); 
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('CA','Canada',2); 
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('CH','Switzerland',1); 
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('CN','China',3); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('DE','Germany',1); 
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('DK','Denmark',1); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values('EG','Egypt',4); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('FR','France',1); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('HK','HongKong',3); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('IL','Israel',4); 
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('IN','India',3); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('IT','Italy',1); 
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('JP','Japan',3); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('KW','Kuwait',4); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('MX','Mexico',2); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('NG','Nigeria',4); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('NL','Netherlands',1); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('SG','Singapore',3); 
Insert into Countries(Country_id,Country_Name,Region_id)  
values ('UK','United Kingdom',1); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('US','United States of America',2); 
Insert into Countries(Country_id,Country_Name,Region_id) 
values ('ZM','Zambia',4); 
Insert into Countries(Country_id,Country_Name,Region_id)
values ('ZW','Zimbabwe',4);

Select * from Countries;

---Data Insertion for Locations
Insert into Locations(Location_id,Street_Address,Postal_Code,City,State_Province,Country_id) 
values (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'); 
Insert into Locations(Location_id,Street_Address,Postal_Code,City,State_Province,Country_id) 
values (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'); 
Insert into Locations(Location_id,Street_Address,Postal_Code,City,State_Province,Country_id) 
values (1700,'2004 Charade Rd','98199','Seattle','Washington','US'); 
Insert into Locations(Location_id,Street_Address,Postal_Code,City,State_Province,Country_id) 
values (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'); 
Insert into Locations(Location_id,Street_Address,Postal_Code,City,State_Province,Country_id) 
values (2400,'8204 Arthur St',NULL,'London',NULL,'UK'); 
Insert into Locations(Location_id,Street_Address,Postal_Code,City,State_Province,Country_id) 
values (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'); 
Insert into Locations(Location_id,Street_Address,Postal_Code,City,State_Province,Country_id) 
values (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');

Select * from Locations;

--Data Insertion for Jobs
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (1,'Public Accountant',4200.00,9000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (2,'Accounting Manager',8200.00,16000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (3,'Administration Assistant',3000.00,6000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (4,'President',20000.00,40000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (5,'Administration Vice President',15000.00,30000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (6,'Accountant',4200.00,9000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (7,'Finance Manager',8200.00,16000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (8,'Human Resources Representative',4000.00,9000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (9,'Programmer',4000.00,10000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (10,'Marketing Manager',9000.00,15000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (11,'Marketing Representative',4000.00,9000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (12,'Public Relations Representative',4500.00,10500.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (13,'Purchasing Clerk',2500.00,5500.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (14,'Purchasing Manager',8000.00,15000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (15,'Sales Manager',10000.00,20000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (16,'Sales Representative',6000.00,12000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (17,'Shipping Clerk',2500.00,5500.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (18,'Stock Clerk',2000.00,5000.00); 
Insert into Jobs(Job_id,Job_Title,Min_Salary,Max_Salary) 
values (19,'Stock Manager',5500.00,8500.00);

Select * from Jobs;

---Data Insertion for Departments
Insert into Departments(Department_id,Department_Name,Location_id) 
values (1,'Administration',1700); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (2,'Marketing',1800); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (3,'Purchasing',1700); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (4,'Human Resources',2400); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (5,'Shipping',1500); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (6,'IT',1400); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (7,'Public Relations',2700); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (8,'Sales',2500); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (9,'Executive',1700); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (10,'Finance',1700); 
Insert into Departments(Department_id,Department_Name,Location_id) 
values (11,'Accounting',1700);

Select * from Departments;

--Data Insertion for Employees 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21',5,17000.00,100,9); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (102,'Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000.00,100,9);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17',7,12000.00,101,10);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00,108,10);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (112,'Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,7800.00,108,10);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07',6,6900.00,108,10);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07',14,11000.00,100,3);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18',13,3100.00,114,3);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563','1997-12-24',13,2900.00,114,3); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-24',13,2800.00,114,3); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565','1998-11-15',13,2600.00,114,3); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (119,'Karen','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566','1999-08-10',13,2500.00,114,3); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (120,'Matthew','Weiss','matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18',19,8000.00,100,5); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (121,'Adam','Fripp','adam.fripp@sqltutorial.org','650.123.2234','1997-04-10',19,8200.00,100,5); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (122,'Payam','Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01',19,7900.00,100,5); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10',19,6500.00,100,5); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28',18,2700.00,120,5); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-01',15,14000.00,100,8);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01-05',15,13500.00,100,8);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24',16,8600.00,100,8); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04-23',16,8400.00,100,8); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05-24',16,7000.00,100,8); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01-04',16,6200.00,100,8); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04',17,4000.00,123,5);
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997-03-03',17,3900.00,123,5); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','1987-09-17',3,4400.00,101,1); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17',10,13000.00,100,2); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (202,'Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','1997-08-17',11,6000.00,201,2); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07',8,6500.00,101,4); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (204,'Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07',12,10000.00,101,7); 
Insert into Employees(Employee_id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_id,Salary,Manager_id,Department_id)  
values (205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2,12000.00,101,11); 

Select * from Employees;


---Data Insertion for Dependents
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (1,'Penelope','Gietz','Child',206); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (2,'Nick','Higgins','Child',205); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (3,'Ed','Whalen','Child',200); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values  (4,'Jennifer','King','Child',100); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (5,'Johnny','Kochhar','Child',101); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (6,'Bette','De Haan','Child',102); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (7,'Grace','Faviet','Child',109); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (8,'Matthew','Chen','Child',110); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (9,'Joe','Sciarra','Child',111); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (10,'Christian','Urman','Child',112); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (11,'Zero','Popp','Child',113); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (12,'Karl','Greenberg','Child',108); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (13,'Uma','Mavris','Child',203); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (14,'Vivien','Hunold','Child',103); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (15,'Cuba','Ernst','Child',104); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (16,'Fred','Austin','Child',105); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (17,'Helen','Pataballa','Child',106); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (18,'Dan','Lorentz','Child',107); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (19,'Bob','Hartstein','Child',201); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (20,'Lucille','Fay','Child',202); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (21,'Kirsten','Baer','Child',204); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (22,'Elvis','Khoo','Child',115); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (23,'Sandra','Baida','Child',116); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (24,'Cameron','Tobias','Child',117); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (25,'Kevin','Himuro','Child',118); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (26,'Rip','Colmenares','Child',119); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (27,'Julia','Raphaely','Child',114); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (28,'Woody','Russell','Child',145); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (29,'Alec','Partners','Child',146); 
Insert into Dependents(Dependent_id,First_Name,Last_Name,Relationship,Employee_id)  
values (30,'Sandra','Taylor','Child',176);

Select * from Dependents;

--TASK 1 ---

--PART 1 - SELECT Statements 
--Fetched or Retrives the data from the table

--A: Get all rows and all columns from employees table
--It means all columns, We want to see every employee record.
--Query:
Select * from Employees;

--B: Display employee id, first name, last name and hire date
--Instead of showing every column, show only required columns.
--Query:
Select Employee_id,First_Name,Last_Name,Hire_Date from Employees;

--C: Get first name, last name, salary and new salary
--Create a new calculated column.
--Example: Salary = 5000 ---> New Salary = 10000
--Query:
Select First_Name, Last_Name, Salary, Salary * 2 as New_Salary from Employees;

--D: Increase salary 2 times and name it New_Salary
--Suppose the employee's salary is 5000.
--The requirement says show a new salary that is twice the current salary.
--Calculation: Salary = 5000
--New Salary = Salary × 2
--New Salary = 5000 × 2
--New Salary = 10000
--Query: 
Select Salary, Salary * 2 as New_Salary from Employees;


-- PART 2 — ORDER BY
--Used for sorting data.

--A: Return employee id, first name, last name, hire date and salary
--Query:
Select Employee_id,First_Name,Last_Name,Hire_Date,Salary from Employees;

--B: Sort employees by first names alphabetically
--Explanation: Sorts A → Z.
--Query:
Select * from Employees order by First_Name asc;

--C: Sort first name ascending and last name descending
--Explanation: First sorts by first name, If names are same, last names sorted Z → A.
--Query: 
Select * from Employees order by First_Name asc, Last_Name desc;

--D: Sort employees by salary from high to low
--Verification: Highest salary should appear first. Ex: Steven King = 24000.
--Query:
Select * from Employees order by Salary desc;

--E: Sort employees by hire date
--Explanation: Oldest employee first.
--Query:
Select * from Employees order by Hire_Date asc;

--F: Sort employees by hire date descending
--Explanation: Newest employee first.
--Query: 
Select * from Employees order by Hire_Date desc;


--PART 3 — DISTINCT
--Used to remove duplicates.

--A: Select salary data and sort high to low
--Query: 
Select Salary from Employees order by Salary desc;

--B: Select unique salary values
--Explanation: Removes duplicate salaries.
--Query: 
Select distinct Salary from Employees order by Salary desc;

--C: Select job_id and salary
--Query: 
Select Job_id, Salary from Employees;

--D: Remove duplicate job_id and salary values
--Query: 
Select distinct Job_id, Salary from Employees;

--E: Return distinct phone numbers
--Query:
Select distinct Phone_Number from Employees;


--PART 4 — TOP N
--Used to limit records.

--A: Return all employees sorted by first_name
--Query: 
Select * from Employees order by First_Name;

--B: Return first 5 rows
--Verification: Should display only 5 records.
--Query: 
Select top 5 * from Employees;

--C: Return five rows starting from 4th row
--Explanation: Skip first 3 rows, Return next 5 rows.
--Query:
Select * from Employees order by Employee_id offset 3 rows fetch next 5 rows only;

--D: Top five employees with highest salary
--Query: 
Select top 5 * from Employees order by Salary desc;

--E: Employee with 2nd highest salary
--Explanation:Find highest salary, Ignore highest salary, Find next highest.
--Query: 
Select top 1 *
from Employees
where Salary=
(
Select max(Salary)
from Employees
where Salary <
(
Select max(Salary)
from Employees
)
);


--PART 5 — WHERE Clause and Comparison Operators 
--Filters records.

--A: Salary greater than 14000
--Query: 
Select * from Employees where Salary > 14000 order by Salary desc;

--B: Employees working in department 5
--Query: 
Select * from Employees where Department_id = 5; 

--C: Employee whose last name is Chen
--Query:
Select * from Employees where Last_Name = 'Chen';

--D: Employees joined after January 1, 1999
--Query: 
Select * from Employees where Hire_Date > '1999-01-01';

--E: Employees who joined in 1999
--Query: 
Select * from Employees where year (Hire_Date) = 1999;

--F: Employee whose last name is Himuro
--Query: 
Select * from Employees where Last_Name = 'Himuro';

--G: Search string Himuro
--Query: 
Select * from Employees where Last_Name like '%Himuro%';

--H: Employees who do not have phone numbers
--Query: 
Select * from Employees where Phone_Number is null;

--I: Employees whose department id is not 8
--Query: 
Select * from Employees where Department_id != 8;

--J: Employees whose department id is not 8 and 10
--Query: 
Select * from Employees where Department_id not in (8,10);

--K: Employees whose salary is greater than 10000
--Query: 
Select * from Employees where Salary > 10000;

--L: Employees in department 8 and salary greater than 10000
--Query: 
Select * from Employees where Department_id = 8 and Salary > 10000;

--M: Employees whose salary is less than 10000
--Query: 
Select * from Employees where Salary < 10000;

--N: Employees whose salary is greater than or equal to 9000
--Query: 
Select * from Employees where Salary >= 9000;

--O: Employees whose salary is less than or equal to 9000
--Query:
Select * from Employees where Salary <= 9000;


--PART 6 - ALTER TABLE
--Modify the existing the table/table structure

--Create a Course Table:
--Query:
Create Table Courses
(
Course_id int Primary key,
Course_Name varchar(100)
);

Select * from Courses;

--A: Add credit_hours column
--Query:  
Alter Table Courses add Credit_Hours int;
Select * from Courses;

--B: Add fee and max_limit columns
--Query: 
Alter Table Courses add Fee decimal(10,2), Max_Limit int;
Select * from Courses;

--C: Change fee column to NOT NULL
--Query: 
Alter Table Courses Alter column Fee decimal(10,2) not null;
Select * from Courses;

--D: Remove fee column
--Query:
Alter Table Courses Drop column Fee;
Select * from Courses;

--E: Remove max_limit and credit_hours
--Query:
Alter Table Courses Drop column Max_Limit, Credit_Hours;
Select * from Courses;


--PART 6.1 - FOREIGN KEY
--A Column that links to the primary key of another table. It keeps the data consistent.

--Ex: The projects table is the parent table and project_milestones is the child table.
--The project_id column in the projects table is the Primary Key, while the project_id 
--column in the project_milestones table acts as a Foreign Key.
--Each project can have zero or more milestones, but every milestone must belong 
--to exactly one project. Therefore, a milestone cannot exist without a corresponding 
--project.

--The FOREIGN KEY constraint prevents invalid data from being inserted into the child table.
--Ex: A milestone cannot be assigned to a project that does not exist in the 
--projects table. 
--It also helps avoid orphan records that may occur when project data is deleted 
--or modified incorrectly.

--Step 1: Create Projects Table
Create Table Projects
(
    Project_id int Primary key,
    Project_Name  varchar(255),
    Start_Date date not null,
    End_Date date not null
);
--Verification
Select * from Projects;

--Step 2: Create Projects_MileStones Table
Create Table Project_MileStones
(
MileStone_id int Primary Key,
Project_id int,
MileStone_Name varchar(100)
);
--Verification
Select * from Project_MileStones;

--Step 3: Insert Sample Data --> Insert for Projects Table
Insert  into Projects values
(1,'HR System','2024-01-01','2024-12-31'),
(2,'Banking App','2024-02-01','2024-11-30');
--Verification
Select * from Projects;

--Step 4: Foreign Key is Needed
--Without a foreign key, SQL allows: But SQL still accepts it because no foreign key exists.
--This creates invalid data.
--Problem: Project 99 does not exist.
Insert into Project_MileStones values
(101,99,'Testing');

--Ques a) Add an SQL FOREIGN KEY constraint to the project_milestones table to enforce the relationship.
--Query: If you are creating the table from scratch,
Create Table Project_MileStones 
(
MileStone_id int Primary key,
Project_id int,
MileStone_Name varchar(100),

Constraint FK_Project
Foreign Key(Project_id)
References Projects(Project_id)
);

Select * from Project_MileStones;

--Ques b) Table already exists
--Suppose you already created: Project_MileStones without a foreign key. Now add the foreign key later.
--Query:
Alter Table Project_MileStones add constraint FK_Project foreign key (Project_id) 
references Projects(Project_id);

Select * from Project_MileStones;

--Step : Final Testing (Inserting the invalid data)
Insert into Project_MileStones values (201,99,'Final Testing');
Select * from Project_MileStones;


--TASK 2 – LOGICAL OPERATORS AND SPECIAL OPERATORS
--Logical operators are used to test conditions in SQL. 
--They return TRUE, FALSE, or UNKNOWN. 
--Special operators help filter data based on ranges, patterns, 
--lists, or subqueries.

--PART 1
--A. Find all employees whose salaries are greater than 5000 and less than 7000.
--Query:
Select * from Employees where Salary > 5000 and Salary < 7000;

--B. Find employees whose salary is either 7000 or 8000.
--Query:
Select * from Employees where Salary = 7000 or Salary = 8000;
Select * from Employees where Salary in (7000,8000);

--C. Find all employees who do not have a phone number.
--Query:
Select * from Employees where Phone_Number is null; 

--D. Find employees whose salaries are between 9000 and 12000.
--Query:
Select * from Employees where Salary between 9000 and 12000;

--E. Find employees who work in department 8 or 9.
--Query:
Select * from Employees where Department_id in (8,9);

--F. Find employees whose first name starts with "Jo".
--Query:
Select * from Employees where First_Name like 'Jo%';

--G. Find employees whose second character is h.
--Query: _ = Exactly one character.
Select * from Employees where First_Name like '_h%';

--H. Find employees whose salaries are greater than all salaries of employees in department 8.
--Query:
Select * from Employees where Salary > all
(
Select Salary from Employees where Department_id = 8 
);


--PART 2
--A. Find employees whose salaries are greater than the average salary of every department.
--Query:
Select * from Employees where Salary >
(
Select Avg(Salary) from Employees
);

--B. Find all employees who have dependents.
--Query:
Select * from Employees e where exists 
(
Select * from Dependents d where e.Employee_id = d.Employee_id
);

--C. Find employees whose salaries are between 2500 and 2900.
--Query:
Select * from Employees where Salary between 2500 and 2900;

--D. Find employees whose salaries are NOT between 2500 and 2900.
--Query:
Select * from Employees where Salary not between 2500 and 2900;

--E. Find employees who joined between January 1, 1999 and December 31, 2000.
--Query:
Select * from Employees where Hire_Date between '1999-01-01' and '2000-12-31';

--F. Find employees who did NOT join between Jan 1, 1989 and Dec 31, 1999.
--Query:
Select * from Employees where Hire_Date not between '1989-01-01' and '1999-12-31';

--G. Find employees who joined between 1990 and 1993.
--Query:
Select * from Employees where Year (Hire_Date) between 1990 and 1993;


--PART 3
--A. Find employees whose first names start with "Da".
--Query:
Select * from Employees where First_Name like 'Da%';

--B. Find employees whose first names end with "er".
--Query:
Select * from Employees where First_Name like '%er';

--C. Find employees whose last names contain "an".
--Query:
Select * from Employees where Last_Name like '%an%';

--D. Retrieve employees whose first names start with Jo and are followed by at most 2 characters.
--Query:
Select * from Employees where First_Name like 'Jo_' or First_Name like 'Jo__';

--E. Find employees whose first names have any number of characters followed by at most one character.
--Query:
Select * from Employees where First_Name like '%_';

--F. Find employees whose first names start with S but not Sh.
--Query:
Select * from Employees where First_Name like 'S%' and First_Name not like 'Sh%';


--PART 4

--A. Retrieve all employees who work in department 5.
--Query:
Select * from Employees where Department_id = 5;

--B.Employees in department 5 with salary not greater than 5000.
--Query: 
Select * from Employees where Department_id = 5 and Salary <= 5000;

--C. Employees not working in departments 1, 2, or 3.
--Query:
Select * from Employees where Department_id not in (1,2,3);

--D. Employees whose first names do not start with D.
--Query:
Select * from Employees where First_Name not like 'D%';

--E. Employees whose salaries are not between 1000 and 5000.
--Query:
Select * from Employees where Salary not between 1000 and 5000;


--PART 5

--A. Get employees who do not have any dependents.
--Query: Returns employees whose employee_id does not appear in dependents.
Select * from Employees e where not exists 
(
Select * from Dependents d where d.Employee_id = e.Employee_id
);

--B. Find employees who do not have phone numbers.
--Query:
Select * from Employees where Phone_Number is null;

--C. Find employees who have phone numbers.
--Query:
Select * from Employees where Phone_Number is not null;


--TASK 3 – JOINS
--A JOIN is used to combine data from two or more tables based on a related column.

Select * from Employees;
Select * from Departments;
Select * from Jobs;
Select * from Dependents;


--PART 1 – INNER JOIN
--INNER JOIN returns only the matching records from both tables.
--Employees.Department_id = Departments.Department_id
--Only matching department records will be displayed.


--A. To get/display the information of department id 1, 2, and 3.
--Query:
Select * from Departments where Department_id in (1,2,3);

--B. To get information of employees who work in department id 1,2,3.
--Query: Show employee details along with department information.
Select e.Employee_id,
       e.First_Name, 
       e.Last_Name, 
       d.Department_id,
       d.Department_Name 
from Employees e
inner join Departments d 
on e.Department_id = d.Department_id
where d.Department_id in (1,2,3);


--C. Write a Query to get the first name, last name, job title, and department name of employees who work in department id 1, 2, and 3.
--Query:
Select e.First_Name,
       e.Last_Name,
       j.Job_Title,
       d.Department_Name
from Employees e
inner join Jobs j
on e.Job_id = j.Job_id
inner join Departments d
on e.Department_id = d.Department_id
where e.Department_id in (1,2,3);


--PART 2 – LEFT JOIN
--LEFT JOIN returns:
--All records from LEFT table + Matching records from RIGHT table
--If no match exists: NULL will be displayed.

--A. To query the country names of US, UK, and China
--Query: Display only the countries --> from the countries table. 
Select Country_id, 
       Country_Name
from Countries 
where Country_id in ('US', 'UK','CN');
--OR--
Select Country_id, 
       Country_Name
from Countries 
where Country_Name in ('Unites States of America','United Kingdom','China');

Select * from Countries;

--B. Query retrieves the locations located in the US, UK and China
--Query:
Select l.location_id,
       l.Street_Address,
       l.City,
       c.Country_Name
from Countries c
left join Locations l
on c.Country_id = l.Country_id
where c.Country_id in ('US','UK','CN');

--C. To join the countries table with the locations table
--Query: Display country details together with location details.
Select c.Country_id,
       c.Country_Name,
       l.Location_id,
       l.City
from Countries c
left join Locations l
on c.Country_id = l.Country_id;

--D. To find the country that does not have any locations in the locations table
--Query: LEFT JOIN returns NULL for unmatched records.
Select c.Country_id,
       c.Country_Name
from Countries c
left join Locations l
on c.Country_id = l.Country_id
where l.Location_id is null;

--E. Write a query to join 3 tables: regions, countries, and locations
--Query:
Select r.Region_Name,
       c.Country_Name,
       l.Location_id,
       l.City
from Regions r
left join Countries c
on r.Region_id = c.Region_id
left join Locations l
on c.Country_id = l.Country_id;




--PART 3 – SELF JOIN
--A table joins with itself.
--Used when: Employee → Manager
--Both are stored in the same table.


--Ques) The manager_id column specifies the manager of an employee.
--Write a query statement to join the employees table to itself to query the information of who reports to whom.
--The president does not have any manager. In the employees table, the manager_id of the president is NULL.
--Because an INNER JOIN only includes matching rows, the president does not appear in the result.
--Now write a query to include the president in the result set.
--Query 1:  Who Reports to Whom
Select 
   e.First_Name + ' ' + e.Last_Name as Employee,
   m.First_Name + ' ' + m.Last_Name as Manager
from Employees e
inner join Employees m
on e.Manager_id = m.Employee_id;

--Query 2: Include the President
Select 
   e.First_Name + ' ' + e.Last_Name as Employee,
   isnull(m.First_Name + ' ' + m.Last_Name,'No Manager') as Manager
from Employees e
left join Employees m
on e.Manager_id = m.Employee_id;




--PART 4 – FULL OUTER JOIN
--Returns: All rows from table A + All rows from table B
--Matching or not.

Create Table Fruits
(
Fruit_id int Primary key,
Fruit_Name varchar(255) not null,
Basket_id int
);

Select * from Fruits;

Create Table Baskets
(
Basket_id int Primary Key,
Basket_Name varchar(255) not null
);

Select * from Baskets;

---Data Insertion for Baskets
Insert into Baskets (Basket_id, Basket_Name) values 
(1,'A'),
(2,'B'),
(3,'C');
Select * from Baskets;

--Data Insertion for Fruits
Insert into Fruits(Fruit_id,Fruit_Name,Basket_id) values
(1,'Apple',1),
(2,'Orange',1),
(3,'Banana',2),
(4,'Strawberry',Null);
Select * from Fruits;

--A. Write a query that returns:
--Fruits that are inside baskets.
--Baskets that contain fruits.
--Fruits without baskets.
--Baskets without fruits.
--Query:
Select 
   f.Fruit_id,
   f.Fruit_Name,
   b.Basket_Name
from Fruits f
full outer join Baskets b
on f.Basket_id = b.Basket_id;

--B. Write a query to find the empty basket that does not store any fruit
--Query:
Select 
   b.Basket_id,
   b.Basket_Name
from Fruits f
full outer join Baskets b
on f.Basket_id = b.Basket_id
where f.Fruit_id is null;
--OR--
Select * from Baskets b where not exists 
(
Select 1 from Fruits f where f.Basket_id =b.Basket_id
);

--C. Write a query to find which fruit is not in any basket
--Query:
Select 
   f.Fruit_id,
   f.Fruit_Name
from Fruits f
full outer join Baskets b
on f.Basket_id = b.Basket_id
where b.Basket_id is null;
--OR--
Select * From Fruits where Basket_id is null;


--PART 5 - CROSS JOIN 
--It Matches every row of table A with every row of table B. 
--It is a Cartesian Product.
--No ON Clause,No Matching condition.
--Formula : Total Rows = Rows in Table A × Rows in Table B

Create Table Sales_Organization 
(
Sales_Org_id int Primary Key,
Sales_Org varchar(255)
);

Select * from Sales_Organization;

Create Table Sales_Channel
(
Channel_id int Primary Key,
Channel varchar(255)
);

Select * from Sales_Channel;

--Data Insertion for Sales_Organization
Insert into Sales_Organization (Sales_Org_id,Sales_Org) values
(1,'Domestic'),
(2,'Export');

Select * from Sales_Organization;

--Data Insertion for Sales_Channel 
Insert into Sales_Channel (Channel_id, Channel) values
(1,'WholeSale'),
(2,'Retail'),
(3,'ECommerce'),
(4,'TV Shopping');

Select * from Sales_Channel;

--Ques) Write a Query To find the all possible sales channels that a sales organization  
--Query: A sales organization can sell through:
            --Domestic → WholeSale
            --Domestic → Retail
            --Domestic → ECommerce
            --Domestic → TV Shopping

            --Export → WholeSale
            --Export → Retail
            --Export → ECommerce
            --Export → TV Shopping

--We need all possible combinations.
--Since there is no matching column between the two tables, we use: Cross Join

Select 
   so.Sales_Org,
   sc.Channel
from Sales_Organization so
Cross Join Sales_Channel sc;

--Verification Query: Check number of rows generated:
Select Count(*) as Total_Combinations
from Sales_Organization
Cross Join Sales_Channel;




--TASK 4 
--PART 1 - GROUP BY Clause
--The GROUP BY clause groups rows that have the same values in specified columns into summary rows.
--It is commonly used with aggregate functions: COUNT(),SUM(),AVG(),MIN(),MAX().

--A. To group the values in department_id column of the employees table.
--Group employees based on their department.
--Query:
Select Department_id from Employees Group by Department_id;

--B. To count the number of employees by department.
--To find how many employees work in each department.
--Query:
Select Department_id, 
       Count(*) as Employee_Count
from Employees
Group by Department_id;

--C. Returns the number of employees by department.
--Query: counts non-null employee IDs. Since employee_id is a primary key, both b and c give the same result.
Select Department_id,
       Count(Employee_id) as Total_Employees
from Employees
Group by Department_id;

--D. To sort the departments by headcount.
--Headcount = Number of Employees. Sort departments from highest employee count to lowest.
--Query: Highest employee count appears first.
Select Department_id,
       Count(*) as HeadCount
from Employees
Group by Department_id
Order by HeadCount desc;

--E. To find departments with headcounts greater than 5.
--To find departments having more than 5 employees.
--Query: Filters groups after grouping.
Select Department_id,
       Count(*) as HeadCount
from Employees
Group by Department_id
Having Count(*) > 5;

--F. Returns the minimum, maximum and average salary of employees in each department.
--Query:
Select Department_id,
       Min(Salary) as Minimum_Salary,
       Max(Salary) as Maximum_Salary,
       Avg(Salary) as Average_Salary
from Employees
Group by Department_id;

--G. To get the total salary per department.
--Calculate total salary paid by each department.
--Query:
Select Department_id,
       Sum(Salary) as Total_Salary
from Employees
Group by Department_id;

--H. Groups rows with the same values in both department_id and job_id columns and returns rows for each group.
--Create groups using: Department_id + Job_id
--Employees with the same department and same job belong to the same group.
--Query:
Select Department_id,
       Job_id,
       Count(*) as Employee_Count
from Employees
Group by Department_id,
         Job_id;

--Verification
Select * from Employees;

--Verification for Department ID's
Select Distinct Department_id from Employees;

--Verification for Jobs:
Select Distinct Job_id from Employees;


--PART 2 - HAVING CLAUSE
--The HAVING clause is used to filter groups created by the GROUP BY clause.

--A. To get the managers and their direct reports, and to group employees by the managers and count the direct reports.
--Each employee has a manager_id.
--We need to: Group employees by manager, Count how many employees report to each manager.
--Query: Exclude the president because the president has no manager.
Select 
   Manager_id,
   Count(*) as Direct_Reports
from Employees
where Manager_id is not null 
Group by Manager_id;

--Verification
Select Employee_id, First_Name, Manager_id from Employees;

--B. To find the managers who have at least five direct reports.
--Query:
Select 
   Manager_id,
   Count(*) as Direct_Reports
from Employees
where Manager_id is not null
Group by Manager_id
Having Count(*) >= 5;

--Verification
Select * from Employees order by Manager_id;


--C. Calculates the sum of salary that the company pays for each department and selects only the departments with the sum of salary between 20000 and 30000.
--Query:
Select
   Department_id,
   Sum(Salary) as Total_Salary
from Employees
Group by Department_id
Having Sum(Salary) between 20000 and 30000;

--Verification
Select Department_id,Sum(Salary) from Employees Group by Department_id;


--D. To find the department that has employees with the lowest salary greater than 10000.
--For each department:
--Find minimum salary.
--Show departments where minimum salary is greater than 10000.
--Query:
Select 
   Department_id,
   Min(Salary) as Lowest_Salary
from Employees
Group by Department_id
Having Min(Salary) > 10000;

--Verification
Select Department_id,Min(Salary) from Employees Group by Department_id;


--E. To find the departments that have the average salaries of employees between 5000 and 7000.
--Query:
Select
   Department_id,
   Avg(Salary) as Average_Salary
from Employees
Group by Department_id
Having Avg(Salary) between 5000 and 7000;

--Verification
Select Department_id, Avg(Salary) from Employees Group by Department_id;
   

--PART 3 - UNION OPERATOR
--The UNION operator combines the results of two or more SELECT statements into a single result set.
--Rules for UNION:
--Both SELECT statements must have the same number of columns.
--Corresponding columns should have compatible data types.
--UNION removes duplicate rows automatically.


--Ques) Write a Query to combine the first name and last name of employees and dependents.
--Query:A single list containing the first name and last name of all employees and dependents combined into one result set.
Select 
   First_Name,
   Last_Name
from Employees

UNION

Select 
   First_Name,
   Last_Name
from Dependents;

--Verification
--Check Employee Names:
Select First_Name, Last_Name from Employees;
--Check Dependent Names:
Select First_Name, Last_Name from Dependents;


--PART 4 - INTERSECT OPERATOR
--The INTERSECT operator returns only the rows that exist in both tables.

--Ques) Write a Query to apply the INTERSECT operator to the A and B tables and sort the combined result set by the id column in descending order.
--Query:
Create Table A
(
id int,
Name varchar(50)
);
Select * from A;

Create Table B
(
id int,
Name varchar(50)
);
Select * from B;

--Data Insertion For Table A
Insert into A (id, Name) values
(1,'John'),
(2,'Mary'),
(3,'David'),
(4,'Alex');
Select * from A;

--Data Insrtion For Table B
Insert into B (id, Name) values
(2,'Mary'),
(3,'David'),
(5,'Tom'),
(6,'James');
Select * from B;


Select id, Name
from A     --Get records from Table A.

INTERSECT  --Returns only common rows present in both tables.

Select id, Name
from B     --Get records from Table B.

Order by id desc;   --Sorts the result by id in descending order (highest to lowest).


--PART 4 - EXISTS OPERATOR
--The EXISTS operator checks whether a subquery returns any rows.
--If the subquery returns at least one row → EXISTS = TRUE
--If the subquery returns no rows → EXISTS = FALSE

--A. Find all employees who have at least one dependent.
--Find employees whose employee_id exists in the dependents table.
--Ex: Steven → Has dependent → Show
    --Neena → Has dependent → Show
--Query:
Select 
   Employee_id,
   First_Name,
   Last_Name
from Employees e
where Exists
(
   Select 1
   from Dependents d
   where d.Employee_id = e.Employee_id
);

--Verification for Dependents:
Select * from Dependents;


--B. Find employees who do not have any dependents.
--To find employees whose employee_id does not appear in the dependents table.
--Ex: 
--Steven → Has dependent → Exclude
--Neena  → Has dependent → Exclude
--David  → No dependent  → Show

--Query:
Select 
   Employee_id,
   First_Name,
   Last_Name
from Employees e
where not Exists
(
   Select 1
   from Dependents d
   where d.Employee_id = e.Employee_id
);

--Verification for Employees and Dependents
Select * from Employees;
Select * from Dependents;


--PART 5 - CASE EXPRESSION
--The CASE expression works like an IF-ELSE statement in SQL.
--It allows you to return different values based on conditions.

--A. Suppose the current year is 2000. How to use the simple CASE expression to get the work anniversaries of employees?
--Query:
Select 
   First_Name,
   Last_Name,
   Year(Hire_Date) as Hire_Year,
   case
      when (2000 - year(Hire_Date)) < 5 then 'Less than 5 Years'
      when (2000 - year(Hire_Date)) between 5 and 10 then '5 to 10 Years'
      else 'More than 10 Years'
   end as Work_Anniversary
from Employees;

--Verification
Select First_Name, Hire_Date from Employees;


--B. If the salary is less than 3000, return "Low". If salary is between 3000 and 5000, return "Average". If salary is greater than 5000, return "High".
--Classify employees based on salary.
--Salary Categories:
--Salary < 3000      → Low
--Salary 3000-5000   → Average
--Salary > 5000      → High
--Query:
Select 
   First_Name,
   Last_Name,
   Salary,
   case
      when Salary < 3000 then 'Low'
      when Salary between 3000 and 5000 then 'Average'
      else 'High'
   end as Salary_Category
from Employees;

--Verification for Salaries : The CASE query and verify that each employee is categorized correctly.
Select First_Name, Salary from Employees;


--PART 6 - UPDATE STATEMENT
--The UPDATE statement is used to modify existing records in a table.
--Always use a WHERE clause. Without it, all rows in the table will be updated.

--A. Write a query to update Sarah's last name.
--Step 1: Verify the current record
Select * from Employees where Employee_id = 192;
--Step 2: Update Query
Update Employees set Last_Name = 'Lopez' where Employee_id = 192;
--Step 3: Verify Update
Select * from Employees where Employee_id = 192;


--B. How to make sure that the last names of children are always matched with the last name of parents in the employees table?
--Step 1: Check Dependents
Select * from Dependents where Employee_id = 192;
--Step 2: Update Dependents Last Name
Update Dependents set Last_Name = 'Lopez' where Employee_id = 192;
--OR: If you want dependent last names to always match employee last names where
--This updates every dependent so that their last name matches the corresponding employee's last name.
Update d
set d.Last_Name = e.Last_Name
from Dependents d
inner join Employees e
on d.Employee_id = e.Employee_id;
---Verification
Select 
   e.Employee_id,
   e.Last_Name as Parent_Last_Name,
   d.First_Name as Child_Name,
   d.Last_Name as Child_Last_Name
from Employees e
inner join Dependents d
on e.Employee_id = d.Employee_id;


--PART 7 - FINAL TASK - SUBQUERY
--A Subquery is a query written inside another SQL query.
--It is also called a Nested Query.

--Without a subquery, you may need to:
--Run one query first.
--Note down the result.
--Use that result in another query.
--This becomes difficult when the data is large.
--A subquery performs everything in a single SQL statement.

--Example:
--Step 1: Find departments in location 1700.
--Query 1:
Select * from Departments where Location_id = 1700;

--Step 2: Step 2: Find employees in those departments.
--Query 2:
Select Employee_id, First_Name, Last_Name from Employees where Department_id in (1,3,8,10,11);

--Problem 1: Two Separate Queries
-- With the refering Query:1 and 2 , We will First, to find department IDs.
--Then manually use those IDs in another query.i.e, the Query 2 where it takes extra work.

--Problem 2: Not Practical for Large Data.
--Imagine location 1700 has:
--50 departments
--100 departments
--You cannot manually copy all department IDs every time.
 
--Problem 3: Hard to Maintain
--Suppose tomorrow you need employees in location 1800.
--You must again:
--Find department IDs for 1800.
--Copy them.
--Edit the second query.
--This is repetitive and error-prone.

--Better Solution (Subquery)
Select Employee_id,
       First_Name,
       Last_Name
From Employees
where Department_id in
(
   Select Department_id
   from Departments
   where Location_id = 1700
);


--Questions
--A. Combine the two queries using a subquery to find all employees who belong to location 1700
--Query: To find the departments in location 1700 , and to find Employees working in those Departments.
Select Employee_id,
       First_Name,
       Last_Name
from Employees
where Department_id in
(
   Select Department_id
   from Departments
   where Location_id = 1700
);

--B. Find all employees who do NOT locate at location 1700
--Query: Returns Employees working in all other loactions except 1700.
Select Employee_id,
       First_Name,
       Last_Name
from Employees
where Department_id not in 
(
   Select Department_id
   from Departments
   where Location_id = 1700
);

--C. Find the employees who have the highest salary
--Query: To find maximum salary and to display employees having thta salary.
Select Employee_id,
       First_Name,
       Last_Name,
       Salary
from Employees
where Salary = 
(
   Select Max(Salary)
   from Employees
);

--D. Find all employees whose salaries are greater than the average salary of all employees
--Query: To find Employees earning above company average salary.
Select Employee_id,
       First_Name,
       Last_Name,
       Salary
from Employees
where Salary >
(
   Select Avg(Salary)
   from Employees
);

--E. Find all departments having at least one employee whose salary is greater than 10000
--Query: Shows departments where at least one employee earns more than 10000.
Select distinct Department_id from Employees where Salary > 10000;

--SubQuery:
Select *
from Departments
where Department_id in
(
   Select Department_id
   from Employees
   where Salary > 10000
);

--F. Find all departments that do NOT have any employee with salary greater than 10000
--Query: Departments where every employee earns 10000 or less.
Select *
from Departments
where Department_id not in 
(
   Select Department_id
   from Employees
   where Salary > 10000
);

--G. Find the lowest salary by department
--Query: Returns minimum salary in each department.
Select Department_id,
       Min(Salary) as Lowest_Salary
from Employees
Group by Department_id;

--H. Find all employees whose salaries are greater than the lowest salary of every department
--Query: To find employees earning more than the company's lowest salary.
Select Employee_id,
       First_Name,
       Last_Name,
       Salary
from Employees
where Salary >
(
   Select Min(Salary)
   from Employees
);

--I. Find all employees whose salaries are greater than or equal to the highest salary of every department
--Query: Returns employee(s) having the highest salary in the company.
Select Employee_id,
       First_Name,
       Last_Name,
       Salary
from Employees
where Salary >= All
(
   Select Max(Salary)
   from Employees
   Group by Department_id
);

--J. Return the average salary of every department
--Query: Calculates average salary department-wise.
Select Department_id,
       Avg(Salary) as Average_Salary
from Employees
Group by Department_id;

--K. Calculate the average of average salaries of departments
--Query: To Calculate average salary for each department and Calculate average of those department averages.
Select Avg(Avg_Salary) as Average_Of_Averages
from
(
   Select Avg(Salary) as Avg_Salary
   from Employees
   Group by Department_id
)as Department_Averages;

--L. Find salaries of all employees, average salary, and difference between employee salary and average salary
--Query: Employee Salary, Company Average Salary, Difference between Employee Salary and Company Average
Select Employee_id,
       First_Name,
       Last_Name,
       Salary,
       (Select Avg(Salary) from Employees) as Average_Salary,
       Salary - (Select Avg(Salary) from Employees) as Difference
from Employees;




--Data Analysis 
--Analysis 1 : Department Wise Employee Count
--Query:
Select Department_id, Count(*) Employee_Count from Employees Group by Department_id;

--Analysis 2: Department Wise Salary Cost
--Query:
Select Department_id, Sum(Salary) as Total_Salary  from Employees Group by Department_id;

--Analysis 3: Average Salary Analysis
--Query: 
Select Avg(Salary) as Average_Salary from Employees;

--Analysis 4:Highest Paid Employee
--Query:
Select * from Employees where Salary = 
(
Select Max(Salary) from Employees
);

--Analysis 5: Manager Analysis
--Query:
Select 
    Manager_id,
    Count(*) as Direct_Reports
from Employees
where Manager_id is not null
Group by Manager_id
Order by Direct_Reports desc;

--Analysis 6: Location Analysis
--Query:
Select 
   l.Location_id,
   l.City,
   Count(e.Employee_id) as Employee_Count
from Locations l
inner join Departments d
   on l.Location_id = d.Location_id
inner join Employees e
   on d.Department_id = e.Department_id
Group by l.Location_id, l.City
Order by Employee_Count desc;
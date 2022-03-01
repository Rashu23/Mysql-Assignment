create database java_prac;
use java_prac;
create table empl(emp_id int(10) primary key not null,emp_fname varchar(10),emp_lname varchar(10),emp_sal int(10),emp_jdate date,emp_dep varchar(10));
insert into empl values(001,'Monika','Arora',100000,'2014-02-20 09:00:00','HR'),(002,'Niharika','Verma',80000,'2014-06-11 09:00:00','Admin'),
(003,'Vishal','Singhal',300000,'2014-02-20 09:00:00','HR'),(004,'Amitabh','Singh',500000,'2014-02-20 09:00:00','Admin'),
(005,'Vivek','Bhati',500000,'2014-06-11 09:00:00','Admin'),(006,'Vipul ','Diwan',200000,'2014-06-11 09:00:00','Account'),
(007,'Satish','Kumar',75000,'2014-01-20 09:00:00','Account'),(008,'Geetika','Chauhan',90000,'2014-04-11 09:00:00','Admin');
select * from empl;
create table Bonus(emp_RID int(10),Bonus_amt int(10),bonus_date datetime,foreign key(emp_RID)references empl(emp_id) on delete cascade);
insert into Bonus values(001,5000,'16-02-20'),(002,3000,'16-06-11'),(003,4000,'16-02-20'),(004,4500,'16-02-20'),(002,3500,'16-06-11');
select * from Bonus; 
create table title(emp_RID int(10),emp_title char(25),affected_from datetime,foreign key(emp_RID)references empl(emp_id)on delete cascade);
insert into title values(001,'Manager','16-02-20 00:00:00'),(002,'Executive','16-02-20 00:00:00'),
(008,'executive','16-02-20 00:00:00'),(005,'Manager','16-02-20 00:00:00'),
(004,'Asst.Manager','16-02-20 00:00:00'),(007,'executive','16-02-20 00:00:00'),
(006,'lead','16-02-20 00:00:00'),(003,'lead','16-02-20 00:00:00');
select * from title;
select emp_fname as employee_name from empl;
select upper(emp_fname) from empl;
select distinct emp_dep from empl;
select substring(emp_fname,1,3) from empl;
select instr(emp_fname,binary'a') from empl where emp_fname='Amitabh';
select rtrim(emp_fname) from empl;
select ltrim(emp_dep)from empl;
select distinct length(emp_dep) from empl;
select replace(emp_fanme,'a','A') from empl;
select concat(emp_fname,'',emp_lname) as'complete name' from empl;
select * from empl order by emp_fname asc;
select * from empl order by emp_fname asc,emp_dep desc;
select * from empl where emp_fname in ('Vipul','Satish');
select* from empl where emp_fname not in ('Vipul','Satish');
select * from empl where emp_dep like 'Admin%';
select * from empl where emp_fname like'%a%';
select * from empl where emp_fname like'%a';
select * from empl where emp_fname like'_____h';
select * from empl where emp_sal between 100000 and 500000;
select * from empl where year(emp_jdate)=2014 and month(emp_jdate)=2;
select count(*) from empl where emp_dep='admin';
select emp_id from empl where emp_sal >=500000  <=100000;
select concat(emp_fname,'',emp_lname)as emp_name,salary from empl where emp_id in(select emp_id from empl where emp_sal between 500000 and 100000);
select emp_dep ,count(emp_id)no_of_emp from empl group by emp_dep order by no_of_emp desc;
select distinct w.emp_fname,t.emp_title from empl w inner join title t on t.emp_RID and t.emp_title in('Manager');
select emp_title , affected_from, count(*) from title group by emp_title, affected_from having count(*)>1;
select * from empl where mod(emp_id,2)<>0;
select * from empl where mod(emp_id,2)=0;
select curdate();
select now();
select * from empl order by emp_sal desc limit 10;
select distinct emp_sal from empl a where 3>=(select count(distinct emp_sal) from empl b where a.emp_Sal<=b.emp_sal)order by a.emp_Sal desc;
create database java_popul;
use java_popul;
create table tbl_Country(country_id int(10),country_name char(10),population int(10), Year year);
insert into tbl_Country values(1,'India',1000,'1990'),(2,'Nepal',200,'1990'),(3,'Shrilanka',500,'1991'),
(4,'Russia',800,'1991'),(5,'China',750,'1991'),(6,'America',950,'1990'),(7,'India',2500,'1993'),
(8,'Russia',1500,'1992'),(9,'America',2000,'1993');
select * from tbl_Country;
select sum(population) from tbl_Country;
select sum(population) ,max(population),min(population), avg(population),count(*)from tbl_Country;
select country_name ,count(*) from tbl_Country group by country_name;
select count(population) from tbl_Country;
select population , Year from tbl_Country where population >1000 and country_name in ('india','america','china');
select population  from tbl_Country where population >1000 ;
select country_name,Year ,sum(population) from tbl_Country group by country_name,Year;
select country_name,sum(population) from tbl_Country group by country_name having sum(population) > 1000;


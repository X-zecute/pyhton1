create database studentpor;
use schoolmanagementsystem;
select school, sex, age, address from studentpor order by age;
select school, sex, age, address from studentpor order by age desc;
select distinct age from studentpor;
select sex, school from studentpor group by mjob;
select sex, age, if(G1>8,True,False) from studentpor;
select sex, age, ifnull(mjob,fjob) from studentpor;
select school, address, age, nullif(G1,G2) from studentpor;
select school, sex, age, address,
   case age 
       when 15 then 'Eleven'
       when 16 then 'Twelve'
       when 17 then 'Seventeen'
       when 18 then 'Eighteen'
       when 19 then 'Nineteen'
       when 20 then 'Twenty'
       else 'Above Twenty'
	end as AGEGROUP from studentpor;
    
    select school, sex from  studentpor where G1 >8 and traveltime >=3;
    select * from  studentpor;
    select school, sex from  studentpor where G1 >8 or traveltime >=3;
    select school, sex from  studentpor where (G1 >8 and traveltime >=3) or (studytime = 3);
select * from studentpor where  fjob like 't%';
select * from studentpor where  fjob like '%er';
select * from studentpor where  fjob like '_e%';
select * from studentpor where  fjob like '_______%';
select * from studentpor where mjob in('at_home','teacher','other');
select * from studentpor where address is null;
select * from studentpor where address is not null;
select * from studentpor where G1 between 5 and 8;
create table age19 select * from studentpor where age = 19;
create table age20 select * from studentpor where age = 20;

alter table age19 add column id int primary key not null auto_increment first;
alter table age20 add column id int primary key not null auto_increment first;

select age19.school,age19.sex,age20.G1,age20.G2 from age19 inner join age20 on age19.id = age20.id;
select age19.school,age19.sex,age20.G1,age20.G2 from age19 right join age20 on age19.id = age20.id;

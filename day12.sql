create database NBAmanagementsystem;
show databases;
use nbamanagementsystem;
drop database nbamanagementsystem;

create database NBAmanagementsystem;
use nbamanagementsystem;
create table nbaplayersdetails(playerid int not null primary key,playername varchar(255) not null,playerposition
varchar(50) not null);

alter table nbaplayersdetails add column playercountry varchar(50) not null;
alter table nbaplayersdetails add column playerrating int not null after playername;
alter table nbaplayersdetails add column duplicateplayerid int null first;
alter table nbaplayersdetails drop column duplicateplayerid;
alter table nbaplayersdetails modify column playername varchar(500) not null;
show columns from nbaplayersdetails;
alter table nbaplayersdetails rename to nbaplayerrecords;
alter table nbaplayerrecords change playercountry playercontinent varchar(50) not null;
show tables;
drop table  nbaplayerrecords;
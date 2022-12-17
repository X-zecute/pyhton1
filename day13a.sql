use nbamanagementsystem;
create table nbaplayersdetails(playerid int not null primary key,playername varchar(255) not null,playerposition
varchar(50) not null);
insert into nbaplayersdetails(playerid,playername,playerposition) values
(1,'Michael jordan','Attacker'),
(2,'Harry bole','Defender'),
(3,'Lewis john','Stopper'),
(4,'Rat hollwell','Attacker'),
(5,'John batting','Stopper'),
(6,'Alfred hope','Defender'),
(7,'James gardner','Midfielder'),
(8,'Brown wesley','Attacker');

select * from nbaplayersdetails;
select playername from  nbaplayersdetails;
update nbaplayersdetails set playername = 'Alfred james' where playerid = 6;
select * from nbaplayersdetails;
delete from nbaplayersdetails where playerid = 8;
select * from nbaplayersdetails;
create index position on nbaplayersdetails(playerposition);
show indexes from  nbaplayersdetails;
drop index position on  nbaplayersdetails;
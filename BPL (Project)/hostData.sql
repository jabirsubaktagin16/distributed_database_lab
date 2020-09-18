clear screen;

drop table Country cascade constraints;
drop table teams cascade constraints;
drop table players cascade constraints;
drop table batting cascade constraints;
drop table bowling cascade constraints;

create table Country(
cid integer,
cName varchar(30),
		PRIMARY KEY(cid)
);
create table teams(
teamid integer,
teamname varchar2(30),
matches integer,
won integer,
lost integer,
tied integer,
champion integer,
runnerup integer,
	PRIMARY KEY(teamid)
);
create table players(
plid integer,
Name varchar(30),
Age integer,
Nationality integer,
Team integer,
JerseyNo integer,
Role varchar(15),
	PRIMARY KEY(plid),
	FOREIGN KEY(Nationality) REFERENCES country(cid),
	FOREIGN KEY(Team) REFERENCES teams(teamid)
);
create table batting(
player_id integer,
batting_hand varchar2(6),
batting_position varchar2(12),
matches integer,
inns integer,
not_out integer,
runs integer,
highest_score integer,
hundreds integer,
fiftys integer,
fours integer,
sixes integer,
	FOREIGN KEY(player_id) REFERENCES players(plid)
);
create table bowling(
player_id integer,
bowling_hand varchar2(10),
bowling_type varchar2(20),
matches integer,
inns integer,
runs integer,
wickets integer,
best_figure varchar2(5),
fourWM integer,
fiveWM integer,
	FOREIGN KEY(player_id) REFERENCES players(plid)
);
--Country--
insert into Country values(1,'Bangladesh');

--Teams--
insert into teams values(1, 'Dhaka Platoon',92,55,37,0,3,2);
insert into teams values(2, 'Cumilla Warriors',64,37,26,1,2,0);
insert into teams values(3, 'Rangpur Rangers',77,40,37,0,1,0);
insert into teams values(4, 'Sylhet Thunder',69,24,45,0,0,0);
insert into teams values(5, 'Chattogram Challengers',86,39,46,1,0,1);
insert into teams values(6, 'Khulna Tigers',75,34,40,1,0,1);
insert into teams values(7, 'Rajshahi Royals',78,40,38,0,1,1);

--Players--
insert into players values(1, 'Abu Hider', 24, 1, 2, 16, 'Bowler');
insert into players values(2, 'Abu Jayed', 27, 1, 7, 14, 'Bowler');
insert into players values(3, 'Afif Hossain', 21, 1, 7, 50, 'All-Rounder');
insert into players values(5, 'Al-Amin Hossain',30, 1, 2, 4, 'Bowler');
insert into players values(6, 'Aliss Islam',24,1,6,47,'Bowler');
insert into players values(7, 'Alok Kapali',36,1,7,14,'All-rounder');
insert into players values(8, 'Aminul Islam',21,1,6,7,'All-rounder');
insert into players values(9, 'Anamul Haque',30,1,1,66,'Wicket-keeper');
insert into players values(17, 'Hasan Mahmud',21,1,1,27,'Bowler');
insert into players values(21, 'Imrul Kayes',33,1,5,45,'Batsman');
insert into players values(28, 'Liton Das',26,1,7,16,'Wicket-keeper');
insert into players values(29, 'Mahedi Hasan',26,1,1,55,'All-rounder');
insert into players values(30, 'Mahidul Islam Ankon',22,1,2,4,'Wicket-keeper');
insert into players values(31, 'Mahmudullah',34,1,5,30,'All-rounder');
insert into players values(32, 'Mashrafe Mortaza',37,1,1,2,'Bowler');
insert into players values(33, 'Mehedi Hasan',23,1,6,53,'All-rounder');
insert into players values(36, 'Mohammad Mithun',30,1,4,8,'Wicket-keeper');
insert into players values(38, 'Mohammad Naim',21,1,3,23,'Batsman');
insert into players values(41, 'Mosaddek Hossain',25,1,4,32,'All-rounder');
insert into players values(43, 'Mushfiqur Rahim',33,1,6,15,'Wicket-keeper');
insert into players values(44, 'Mustafizur Rahman',25,1,3,90,'Bowler');
insert into players values(45, 'Nasir Hossain',29,1,5,69,'All-rounder');
insert into players values(46, 'Nayeem Hasan',20,1,4,33,'Bowler');
insert into players values(48, 'Nazmul Hossain Shanto',22,1,6,17,'Batsman');
insert into players values(49, 'Nazmul Islam',29,1,4,21,'Bowler');
insert into players values(50, 'Nurul Hasan',27,1,5,18,'Wicket-keeper');
insert into players values(53, 'Rony Talukdar',30,1,4,31,'Batsman');
insert into players values(54, 'Rubel Hossain',30,1,5,34,'Bowler');
insert into players values(56, 'Sabbir Rahman',29,1,2,1,'Batsman');
insert into players values(57, 'Shadman Islam',25,1,3,99,'Batsman');
insert into players values(58, 'Shafiul Islam',31,1,6,13,'Bowler');
insert into players values(60, 'Shakib Al Hasan',33,1,3,75,'All-rounder');
insert into players values(65, 'Soumya Sarkar',27,1,2,59,'All-rounder');
insert into players values(66, 'Taijul Islam',28,1,7,12,'Bowler');
insert into players values(67, 'Tamim Iqbal',31,1,1,28,'Batsman');
insert into players values(68, 'Taskin Ahmed',25,1,3,3,'Bowler');

--Batting Statistics--
insert into batting values(1,'Right','Tailender',48,21,10,130,28,0,0,9,7);
insert into batting values(3,'Left','Middle Order',38,35,2,743,76,0,2,77,31);
insert into batting values(5,'Right','Tailender',56,14,8,18,5,0,0,1,0);
insert into batting values(6,'Right','Tailender',6,2,1,1,1,0,0,0,0);
insert into batting values(7,'Right','Middle Order',68,46,14,558,56,0,1,42,16);
insert into batting values(8,'Right','Middle Order',6,1,0,4,4,0,0,0,0);
insert into batting values(9,'Right','Top Order',85,80,7,1528,83,0,7,131,53);
insert into batting values(21,'Left','Top Order',81,80,10,1774,67,0,8,157,73);
insert into batting values(28,'Right','Top Order',59,55,2,1096,75,0,5,115,34);
insert into batting values(31,'Right','Middle Order',82,78,10,1820,62,0,9,142,66);
insert into batting values(32,'Right','Tailender',87,48,12,507,56,0,1,32,33);
insert into batting values(33,'Right','Middle Order',53,42,8,585,87,0,3,58,17);
insert into batting values(36,'Right','Top Order',81,69,12,1520,84,0,7,91,57);
insert into batting values(38,'Left','Top Order',17,16,3,421,78,0,2,41,14);
insert into batting values(41,'Right','Middle Order',55,49,13,907,60,0,2,74,26);
insert into batting values(43,'Right','Middle Order',85,81,20,2274,98,0,15,193,72);
insert into batting values(45,'Right','Middle Order',68,56,7,1085,80,0,3,84,33);
insert into batting values(48,'Left','Top Order',45,42,5,833,115,1,2,77,24);
insert into batting values(49,'Left','Tailender',68,18,10,54,16,0,0,3,1);
insert into batting values(50,'Right','Middle Order',66,57,20,755,43,0,0,64,24);
insert into batting values(53,'Right','Top Order',43,40,1,628,66,0,3,64,21);
insert into batting values(54,'Right','Tailender',69,17,9,36,10,0,0,3,0);
insert into batting values(56,'Right','Middle Order',85,77,6,1601,122,1,5,127,67);
insert into batting values(58,'Right','Tailender',76,23,13,124,25,0,0,13,2);
insert into batting values(60,'Left','Middle Order',76,75,16,1483,86,0,5,143,38);
insert into batting values(65,'Left','Top Order',63,62,8,936,88,0,3,96,30);
insert into batting values(67,'Left','Top Order',70,69,8,2221,141,1,19,226,71);
insert into batting values(68,'Left','Tailender',53,18,6,54,18,0,0,2,2);

--Bowling Statistics--
insert into bowling values(1,'Left Arm','Fast Medium',48,48,1232,45,'4/19',2,0);
insert into bowling values(2,'Right Arm','Fast Medium',53,51,1246,57,'4/35',1,0);
insert into bowling values(3,'Right Arm','Offbreak',38,35,465,19,'5/21',0,1);
insert into bowling values(5,'Right Arm','Fast Medium',56,56,1653,52,'5/36',0,1);
insert into bowling values(6,'Right Arm','Offbreak',6,6,147,7,'4/26',1,0);
insert into bowling values(7,'Right Arm','Legbreak',68,41,787,33,'4/22',1,0);
insert into bowling values(8,'Right Arm','Legbreak',6,6,136,4,'2/19',0,0);
insert into bowling values(29,'Right Arm','Offbreak',38,37,861,35,'4/22',2,0);
insert into bowling values(31,'Right Arm','Offbreak',82,62,1076,43,'3/6',0,0);
insert into bowling values(32,'Right Arm','Fast Medium',87,84,2111,81,'4/11',1,0);
insert into bowling values(33,'Right Arm','Offbreak',53,49,1110,36,'2/6',0,0);
insert into bowling values(41,'Right Arm','Offbreak',55,46,400,12,'2/9',0,0);
insert into bowling values(44,'Left Arm','Fast Medium',39,39,988,50,'3/10',0,0);
insert into bowling values(45,'Right Arm','Offbreak',68,58,1106,37,'5/31',0,1);
insert into bowling values(46,'Right Arm','Offbreak',8,8,199,5,'3/21',0,0);
insert into bowling values(49,'Left Arm','Orthodox',68,65,1462,47,'3/8',0,0);
insert into bowling values(54,'Right Arm','Fast',69,69,1877,90,'4/23',3,0);
insert into bowling values(58,'Right Arm','Fast Medium',76,74,2031,78,'5/26',2,1);
insert into bowling values(60,'Left Arm','Orthodox',76,76,1890,106,'5/16',3,1);
insert into bowling values(66,'Left Arm','Orthodox',64,62,1311,49,'3/10',0,0);
insert into bowling values(68,'Right Arm','Fast',53,52,1537,74,'5/31',4,1);

commit;

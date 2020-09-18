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
insert into Country values(2,'West Indies');
insert into Country values(3,'Sri Lanka');
insert into Country values(4,'Pakistan');
insert into Country values(5,'England');
insert into Country values(6,'South Africa');
insert into Country values(7,'Afghanistan');
insert into Country values(8,'Zimbabwe');
insert into Country values(9,'Australia');
insert into Country values(10,'New Zealand');

--Teams--
insert into teams values(1, 'Dhaka Platoon',92,55,37,0,3,2);
insert into teams values(2, 'Cumilla Warriors',64,37,26,1,2,0);
insert into teams values(3, 'Rangpur Rangers',77,40,37,0,1,0);
insert into teams values(4, 'Sylhet Thunder',69,24,45,0,0,0);
insert into teams values(5, 'Chattogram Challengers',86,39,46,1,0,1);
insert into teams values(6, 'Khulna Tigers',75,34,40,1,0,1);
insert into teams values(7, 'Rajshahi Royals',78,40,38,0,1,1);

--Players--
insert into players values(4, 'Ahmed Shehzad', 29, 4, 1, 19, 'Batsman');
insert into players values(10, 'Andre Russell',32,2,7,12,'All-rounder');
insert into players values(11, 'Avishka Fernando',22,3,5,28,'Batsman');
insert into players values(12, 'Cameron Delport',31,6,3,12,'Batsman');
insert into players values(13, 'Chris Gayle',41,2,5,333,'Batsman');
insert into players values(14, 'Dasun Shanaka',29,3,2,8,'All-rounder');
insert into players values(15, 'David Wiese',35,6,2,96,'All-rounder');
insert into players values(16, 'Dawid Malan',33,5,2,29,'Batsman');
insert into players values(18, 'Hashim Amla',37,6,6,99,'Batsman');
insert into players values(19, 'Hazratullah Zazai',22,7,7,3,'Batsman');
insert into players values(20, 'Imad Wasim',31,4,5,9,'All-rounder');
insert into players values(22, 'Jeevan Mendis',37,3,4,88,'All-rounder');
insert into players values(23, 'Johnson Charles',31,2,4,25,'Wicket-keeper');
insert into players values(24, 'Junaid Khan',31,4,3,83,'Bowler');
insert into players values(25, 'Kesrick Williams',30,2,5,19,'Bowler');
insert into players values(26, 'Laurie Evans',33,5,1,32,'Batsman');
insert into players values(27, 'Liam Plunkett',35,5,5,17,'Bowler');
insert into players values(34, 'Mohammad Amir',28,4,6,5,'Bowler');
insert into players values(35, 'Mohammad Irfan',38,4,7,27,'Bowler');
insert into players values(37, 'Mohammad Nabi',35,7,3,7,'All-rounder');
insert into players values(39, 'Mohammad Sami',39,4,4,7,'Bowler');
insert into players values(40, 'Mohammad Shahzad',32,7,3,78,'Wicket-keeper');
insert into players values(42, 'Mujeeb Ur Rahman',19,7,2,88,'Bowler');
insert into players values(47, 'Nazibullah Zadran',27,7,6,1,'Batsman');
insert into players values(51, 'Ravi Bopara',35,5,7,42,'All-rounder');
insert into players values(52, 'Robert Frylinck',36,6,6,84,'All-rounder');
insert into players values(55, 'Ryan Burl',26,8,5,38,'Batsman');
insert into players values(59, 'Shahid Afridi',40,4,1,10,'All-rounder');
insert into players values(61, 'Shane Watson',39,9,3,33,'All-rounder');
insert into players values(62, 'Sheldon Cottrell',31,2,4,19,'Bowler');
insert into players values(63, 'Sherfane Rutherford',22,2,4,50,'All-rounder');
insert into players values(64, 'Shoaib Malik',38,4,7,18,'All-rounder');
insert into players values(69, 'Thisara Perera',31,3,1,1,'All-rounder');
insert into players values(70, 'Upul Tharanga',35,3,2,44,'Batsman');
insert into players values(71, 'Wahab Riaz',35,4,1,47,'Bowler');

--Batting Statistics--
insert into batting values(4,'Right','Top Order',27,27,4,937,113,1,7,90,33);
insert into batting values(10,'Right','Middle Order',44,37,16,751,54,0,1,45,62);
insert into batting values(13,'Left','Top Order',42,42,6,1482,146,5,5,96,132);
insert into batting values(16,'Left','Top Order',26,26,3,815,100,1,5,69,33);
insert into batting values(18,'Right','Top Order',1,1,0,8,8,0,0,2,0);
insert into batting values(23,'Right','Top Order',21,20,1,548,105,1,3,53,31);
insert into batting values(37,'Right','Middle Order',49,37,7,560,87,0,1,44,22);
insert into batting values(40,'Right','Top Order',26,26,2,714,80,0,3,75,32);
insert into batting values(51,'Right','Middle Order',61,52,13,1008,59,0,5,77,26);
insert into batting values(52,'Right','Middle Order',22,13,5,247,44,0,0,15,15);
insert into batting values(59,'Right','Middle Order',45,35,5,539,62,0,1,38,38);
insert into batting values(61,'Right','Top Order',7,7,0,93,68,0,1,8,7);
insert into batting values(63,'Left','Middle Order',6,6,2,180,60,0,1,15,10);
insert into batting values(64,'Right','Middle Order',42,40,9,1045,87,0,6,83,38);
insert into batting values(65,'Left','Top Order',63,62,8,936,88,0,3,96,30);
insert into batting values(69,'Left','Middle Order',52,46,15,731,74,0,1,53,42);

--Bowling Statistics--
insert into bowling values(10,'Right Arm','Fast',44,42,1079,47,'4/35',2,0);
insert into bowling values(13,'Right Arm','Offbreak',42,9,205,2,'1/19',0,0);
insert into bowling values(14,'Right Arm','Medium',6,5,141,3,'2/48',0,0);
insert into bowling values(15,'Right Arm','Medium Fast',14,14,407,11,'2/24',0,0);
insert into bowling values(20,'Left Arm','Orthodox',2,2,60,2,'1/22',0,0);
insert into bowling values(24,'Left Arm','Fast',25,25,655,38,'4/23',4,0);
insert into bowling values(25,'Right Arm','Fast Medium',18,18,578,22,'4/11',1,0);
insert into bowling values(27,'Right Arm','Fast',4,4,153,3,'1/30',0,0);
insert into bowling values(34,'Left Arm','Fast',25,25,609,38,'6/17',1,1);
insert into bowling values(35,'Left Arm','Fast',19,19,480,20,'2/13',0,0);
insert into bowling values(37,'Right Arm','Offbreak',49,49,1121,61,'4/24',1,0);
insert into bowling values(39,'Right Arm','Fast',40,40,950,44,'5/6',1,1);
insert into bowling values(42,'Right Arm','Offbreak',13,13,255,15,'4/12',1,0);
insert into bowling values(51,'Right Arm','Medium',61,46,761,41,'4/18',1,0);
insert into bowling values(52,'Right Arm','Medium',22,22,590,32,'5/16',1,1);
insert into bowling values(59,'Right Arm','Legbreak',45,45,1021,57,'4/12',3,0);
insert into bowling values(63,'Right Arm','Fast Medium',6,6,134,6,'3/19',0,0);
insert into bowling values(69,'Right Arm','Medium Fast',52,48,1141,52,'5/26',0,2);
insert into bowling values(71,'Left Arm','Fast',18,17,431,27,'5/8',0,1);

commit;

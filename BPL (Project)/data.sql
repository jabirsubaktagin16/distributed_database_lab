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
insert into players values(1, 'Abu Hider', 24, 1, 2, 16, 'Bowler');
insert into players values(2, 'Abu Jayed', 27, 1, 7, 14, 'Bowler');
insert into players values(3, 'Afif Hossain', 21, 1, 7, 50, 'All-Rounder');
insert into players values(4, 'Ahmed Shehzad', 29, 4, 1, 19, 'Batsman');
insert into players values(5, 'Al-Amin Hossain',30, 1, 2, 4, 'Bowler');
insert into players values(6, 'Aliss Islam',24,1,6,47,'Bowler');
insert into players values(7, 'Alok Kapali',36,1,7,14,'All-rounder');
insert into players values(8, 'Aminul Islam',21,1,6,7,'All-rounder');
insert into players values(9, 'Anamul Haque',30,1,1,66,'Wicket-keeper');
insert into players values(10, 'Andre Russell',32,2,7,12,'All-rounder');
insert into players values(11, 'Avishka Fernando',22,3,5,28,'Batsman');
insert into players values(12, 'Cameron Delport',31,6,3,12,'Batsman');
insert into players values(13, 'Chris Gayle',41,2,5,333,'Batsman');
insert into players values(14, 'Dasun Shanaka',29,3,2,8,'All-rounder');
insert into players values(15, 'David Wiese',35,6,2,96,'All-rounder');
insert into players values(16, 'Dawid Malan',33,5,2,29,'Batsman');
insert into players values(17, 'Hasan Mahmud',21,1,1,27,'Bowler');
insert into players values(18, 'Hashim Amla',37,6,6,99,'Batsman');
insert into players values(19, 'Hazratullah Zazai',22,7,7,3,'Batsman');
insert into players values(20, 'Imad Wasim',31,4,5,9,'All-rounder');
insert into players values(21, 'Imrul Kayes',33,1,5,45,'Batsman');
insert into players values(22, 'Jeevan Mendis',37,3,4,88,'All-rounder');
insert into players values(23, 'Johnson Charles',31,2,4,25,'Wicket-keeper');
insert into players values(24, 'Junaid Khan',31,4,3,83,'Bowler');
insert into players values(25, 'Kesrick Williams',30,2,5,19,'Bowler');
insert into players values(26, 'Laurie Evans',33,5,1,32,'Batsman');
insert into players values(27, 'Liam Plunkett',35,5,5,17,'Bowler');
insert into players values(28, 'Liton Das',26,1,7,16,'Wicket-keeper');
insert into players values(29, 'Mahedi Hasan',26,1,1,55,'All-rounder');
insert into players values(30, 'Mahidul Islam Ankon',22,1,2,4,'Wicket-keeper');
insert into players values(31, 'Mahmudullah',34,1,5,30,'All-rounder');
insert into players values(32, 'Mashrafe Mortaza',37,1,1,2,'Bowler');
insert into players values(33, 'Mehedi Hasan',23,1,6,53,'All-rounder');
insert into players values(34, 'Mohammad Amir',28,4,6,5,'Bowler');
insert into players values(35, 'Mohammad Irfan',38,4,7,27,'Bowler');
insert into players values(36, 'Mohammad Mithun',30,1,4,8,'Wicket-keeper');
insert into players values(37, 'Mohammad Nabi',35,7,3,7,'All-rounder');
insert into players values(38, 'Mohammad Naim',21,1,3,23,'Batsman');
insert into players values(39, 'Mohammad Sami',39,4,4,7,'Bowler');
insert into players values(40, 'Mohammad Shahzad',32,7,3,78,'Wicket-keeper');
insert into players values(41, 'Mosaddek Hossain',25,1,4,32,'All-rounder');
insert into players values(42, 'Mujeeb Ur Rahman',19,7,2,88,'Bowler');
insert into players values(43, 'Mushfiqur Rahim',33,1,6,15,'Wicket-keeper');
insert into players values(44, 'Mustafizur Rahman',25,1,3,90,'Bowler');
insert into players values(45, 'Nasir Hossain',29,1,5,69,'All-rounder');
insert into players values(46, 'Nayeem Hasan',20,1,4,33,'Bowler');
insert into players values(47, 'Nazibullah Zadran',27,7,6,1,'Batsman');
insert into players values(48, 'Nazmul Hossain Shanto',22,1,6,17,'Batsman');
insert into players values(49, 'Nazmul Islam',29,1,4,21,'Bowler');
insert into players values(50, 'Nurul Hasan',27,1,5,18,'Wicket-keeper');
insert into players values(51, 'Ravi Bopara',35,5,7,42,'All-rounder');
insert into players values(52, 'Robert Frylinck',36,6,6,84,'All-rounder');
insert into players values(53, 'Rony Talukdar',30,1,4,31,'Batsman');
insert into players values(54, 'Rubel Hossain',30,1,5,34,'Bowler');
insert into players values(55, 'Ryan Burl',26,8,5,38,'Batsman');
insert into players values(56, 'Sabbir Rahman',29,1,2,1,'Batsman');
insert into players values(57, 'Shadman Islam',25,1,3,99,'Batsman');
insert into players values(58, 'Shafiul Islam',31,1,6,13,'Bowler');
insert into players values(59, 'Shahid Afridi',40,4,1,10,'All-rounder');
insert into players values(60, 'Shakib Al Hasan',33,1,3,75,'All-rounder');
insert into players values(61, 'Shane Watson',39,9,3,33,'All-rounder');
insert into players values(62, 'Sheldon Cottrell',31,2,4,19,'Bowler');
insert into players values(63, 'Sherfane Rutherford',22,2,4,50,'All-rounder');
insert into players values(64, 'Shoaib Malik',38,4,7,18,'All-rounder');
insert into players values(65, 'Soumya Sarkar',27,1,2,59,'All-rounder');
insert into players values(66, 'Taijul Islam',28,1,7,12,'Bowler');
insert into players values(67, 'Tamim Iqbal',31,1,1,28,'Batsman');
insert into players values(68, 'Taskin Ahmed',25,1,3,3,'Bowler');
insert into players values(69, 'Thisara Perera',31,3,1,1,'All-rounder');
insert into players values(70, 'Upul Tharanga',35,3,2,44,'Batsman');
insert into players values(71, 'Wahab Riaz',35,4,1,47,'Bowler');

--Batting Statistics--
insert into batting values(1,'Right','Tailender',48,21,10,130,28,0,0,9,7);
insert into batting values(3,'Left','Middle Order',38,35,2,743,76,0,2,77,31);
insert into batting values(4,'Right','Top Order',27,27,4,937,113,1,7,90,33);
insert into batting values(5,'Right','Tailender',56,14,8,18,5,0,0,1,0);
insert into batting values(6,'Right','Tailender',6,2,1,1,1,0,0,0,0);
insert into batting values(7,'Right','Middle Order',68,46,14,558,56,0,1,42,16);
insert into batting values(8,'Right','Middle Order',6,1,0,4,4,0,0,0,0);
insert into batting values(9,'Right','Top Order',85,80,7,1528,83,0,7,131,53);
insert into batting values(10,'Right','Middle Order',44,37,16,751,54,0,1,45,62);
insert into batting values(13,'Left','Top Order',42,42,6,1482,146,5,5,96,132);
insert into batting values(16,'Left','Top Order',26,26,3,815,100,1,5,69,33);
insert into batting values(18,'Right','Top Order',1,1,0,8,8,0,0,2,0);
insert into batting values(21,'Left','Top Order',81,80,10,1774,67,0,8,157,73);
insert into batting values(23,'Right','Top Order',21,20,1,548,105,1,3,53,31);
insert into batting values(28,'Right','Top Order',59,55,2,1096,75,0,5,115,34);
insert into batting values(31,'Right','Middle Order',82,78,10,1820,62,0,9,142,66);
insert into batting values(32,'Right','Tailender',87,48,12,507,56,0,1,32,33);
insert into batting values(33,'Right','Middle Order',53,42,8,585,87,0,3,58,17);
insert into batting values(36,'Right','Top Order',81,69,12,1520,84,0,7,91,57);
insert into batting values(37,'Right','Middle Order',49,37,7,560,87,0,1,44,22);
insert into batting values(38,'Left','Top Order',17,16,3,421,78,0,2,41,14);
insert into batting values(40,'Right','Top Order',26,26,2,714,80,0,3,75,32);
insert into batting values(41,'Right','Middle Order',55,49,13,907,60,0,2,74,26);
insert into batting values(43,'Right','Middle Order',85,81,20,2274,98,0,15,193,72);
insert into batting values(45,'Right','Middle Order',68,56,7,1085,80,0,3,84,33);
insert into batting values(48,'Left','Top Order',45,42,5,833,115,1,2,77,24);
insert into batting values(49,'Left','Tailender',68,18,10,54,16,0,0,3,1);
insert into batting values(50,'Right','Middle Order',66,57,20,755,43,0,0,64,24);
insert into batting values(51,'Right','Middle Order',61,52,13,1008,59,0,5,77,26);
insert into batting values(52,'Right','Middle Order',22,13,5,247,44,0,0,15,15);
insert into batting values(53,'Right','Top Order',43,40,1,628,66,0,3,64,21);
insert into batting values(54,'Right','Tailender',69,17,9,36,10,0,0,3,0);
insert into batting values(56,'Right','Middle Order',85,77,6,1601,122,1,5,127,67);
insert into batting values(58,'Right','Tailender',76,23,13,124,25,0,0,13,2);
insert into batting values(59,'Right','Middle Order',45,35,5,539,62,0,1,38,38);
insert into batting values(60,'Left','Middle Order',76,75,16,1483,86,0,5,143,38);
insert into batting values(61,'Right','Top Order',7,7,0,93,68,0,1,8,7);
insert into batting values(63,'Left','Middle Order',6,6,2,180,60,0,1,15,10);
insert into batting values(64,'Right','Middle Order',42,40,9,1045,87,0,6,83,38);
insert into batting values(65,'Left','Top Order',63,62,8,936,88,0,3,96,30);
insert into batting values(67,'Left','Top Order',70,69,8,2221,141,1,19,226,71);
insert into batting values(68,'Left','Tailender',53,18,6,54,18,0,0,2,2);
insert into batting values(69,'Left','Middle Order',52,46,15,731,74,0,1,53,42);

--Bowling Statistics--
insert into bowling values(1,'Left Arm','Fast Medium',48,48,1232,45,'4/19',2,0);
insert into bowling values(2,'Right Arm','Fast Medium',53,51,1246,57,'4/35',1,0);
insert into bowling values(3,'Right Arm','Offbreak',38,35,465,19,'5/21',0,1);
insert into bowling values(5,'Right Arm','Fast Medium',56,56,1653,52,'5/36',0,1);
insert into bowling values(6,'Right Arm','Offbreak',6,6,147,7,'4/26',1,0);
insert into bowling values(7,'Right Arm','Legbreak',68,41,787,33,'4/22',1,0);
insert into bowling values(8,'Right Arm','Legbreak',6,6,136,4,'2/19',0,0);
insert into bowling values(10,'Right Arm','Fast',44,42,1079,47,'4/35',2,0);
insert into bowling values(13,'Right Arm','Offbreak',42,9,205,2,'1/19',0,0);
insert into bowling values(14,'Right Arm','Medium',6,5,141,3,'2/48',0,0);
insert into bowling values(15,'Right Arm','Medium Fast',14,14,407,11,'2/24',0,0);
insert into bowling values(17,'Right Arm','Medium',13,13,379,10,'4/32',1,0);
insert into bowling values(20,'Left Arm','Orthodox',2,2,60,2,'1/22',0,0);
insert into bowling values(24,'Left Arm','Fast',25,25,655,38,'4/23',4,0);
insert into bowling values(25,'Right Arm','Fast Medium',18,18,578,22,'4/11',1,0);
insert into bowling values(27,'Right Arm','Fast',4,4,153,3,'1/30',0,0);
insert into bowling values(29,'Right Arm','Offbreak',38,37,861,35,'4/22',2,0);
insert into bowling values(31,'Right Arm','Offbreak',82,62,1076,43,'3/6',0,0);
insert into bowling values(32,'Right Arm','Fast Medium',87,84,2111,81,'4/11',1,0);
insert into bowling values(33,'Right Arm','Offbreak',53,49,1110,36,'2/6',0,0);
insert into bowling values(34,'Left Arm','Fast',25,25,609,38,'6/17',1,1);
insert into bowling values(35,'Left Arm','Fast',19,19,480,20,'2/13',0,0);
insert into bowling values(37,'Right Arm','Offbreak',49,49,1121,61,'4/24',1,0);
insert into bowling values(39,'Right Arm','Fast',40,40,950,44,'5/6',1,1);
insert into bowling values(41,'Right Arm','Offbreak',55,46,400,12,'2/9',0,0);
insert into bowling values(42,'Right Arm','Offbreak',13,13,255,15,'4/12',1,0);
insert into bowling values(44,'Left Arm','Fast Medium',39,39,988,50,'3/10',0,0);
insert into bowling values(45,'Right Arm','Offbreak',68,58,1106,37,'5/31',0,1);
insert into bowling values(46,'Right Arm','Offbreak',8,8,199,5,'3/21',0,0);
insert into bowling values(49,'Left Arm','Orthodox',68,65,1462,47,'3/8',0,0);
insert into bowling values(51,'Right Arm','Medium',61,46,761,41,'4/18',1,0);
insert into bowling values(52,'Right Arm','Medium',22,22,590,32,'5/16',1,1);
insert into bowling values(54,'Right Arm','Fast',69,69,1877,90,'4/23',3,0);
insert into bowling values(58,'Right Arm','Fast Medium',76,74,2031,78,'5/26',2,1);
insert into bowling values(59,'Right Arm','Legbreak',45,45,1021,57,'4/12',3,0);
insert into bowling values(60,'Left Arm','Orthodox',76,76,1890,106,'5/16',3,1);
insert into bowling values(63,'Right Arm','Fast Medium',6,6,134,6,'3/19',0,0);
insert into bowling values(66,'Left Arm','Orthodox',64,62,1311,49,'3/10',0,0);
insert into bowling values(68,'Right Arm','Fast',53,52,1537,74,'5/31',4,1);
insert into bowling values(69,'Right Arm','Medium Fast',52,48,1141,52,'5/26',0,2);
insert into bowling values(71,'Left Arm','Fast',18,17,431,27,'5/8',0,1);

commit;

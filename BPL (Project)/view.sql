create or replace view PlayerFull as
select * from players
union
select * from players@site_link;

create or replace view Batsman as
select * from players join batting
on plid=player_id
union
select * from players@site_link join batting@site_link
on plid=player_id;

create or replace view Bowler as
select * from players join bowling 
on plid=player_id 
union
select * from players@site_link join bowling@site_link 
on plid=player_id;

create or replace view playerTeamCountry as
select * from players, teams, country where nationality=cid and team=teamid
union
select * from players@site_link, teams@site_link, country@site_link where nationality=cid and team=teamid;

commit;

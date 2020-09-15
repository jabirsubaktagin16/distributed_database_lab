create or replace view tenBatsman as
select Name, Matches, Runs, highest_score 
from players@site_link join batting@site_link 
on plid=player_id order by runs desc;

create or replace view tenBowler as
select Name, Matches, Wickets, best_figure 
from players@site_link join bowling@site_link 
on plid=player_id order by Wickets desc;

create or replace view centurionBatsman as
select Name, highest_score, hundreds 
from players@site_link join batting@site_link 
on plid=player_id and hundreds>=1 order by hundreds desc;

create or replace view fiferBowler as
select Name, best_figure, fiveWM 
from players@site_link join bowling@site_link on 
plid=player_id and fiveWM>=1 order by fiveWM desc;

create or replace view playerTeamCountry as
select * from players@site_link, teams@site_link, country@site_link where nationality=cid and team=teamid;

commit;

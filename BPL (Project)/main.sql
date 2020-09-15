set serveroutput on;
set verify off;

declare
	id players.plid@site_link %type;
	choice number;
	player_name players.name@site_link %type :='&player_name';
	team_name teams.teamname@site_link %type :='&team_name';
begin
	choice :=&choice;
	if choice=1 then
		bpl.topTenBatsman(id);
	elsif choice=2 then
		bpl.topTenBowler(id);
	elsif choice=3 then
		bpl.player_info(player_name);
	elsif choice=4 then
		bpl.teamPlayer(team_name);
	elsif choice=5 then
		bpl.countryPlayer(team_name);
	elsif choice=6 then
		bpl.successfulTeam(id);
	elsif choice=7 then
		bpl.centurions(id);
	elsif choice=8 then
		bpl.fifers(id);
	end if;
end;
/

---1. Top Ten Batsman
---2. Top Ten Bowler
---3. A Player''s Info
---4. A Team's Player
---5. A Country's Player
---6. Most Successful Team
---7. Centurions
---8. Fifers
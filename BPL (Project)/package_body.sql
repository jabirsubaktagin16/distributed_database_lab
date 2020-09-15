create or replace package body bpl as
		
	procedure topTenBatsman(id players.plid@site_link %type)
		IS
	
	cnt number :=0;
	
	begin
		DBMS_OUTPUT.PUT_LINE('Name			Matches		Runs		Highest Score');
		DBMS_OUTPUT.PUT_LINE('_____________________________________________________________________');
		for R in (select Name, Matches, Runs, highest_score from players@site_link join batting@site_link on plid=player_id order by runs desc) loop
			if cnt=10 then
				exit;
			else
				cnt:=cnt+1;
			end if;
			DBMS_OUTPUT.PUT_LINE(R.Name||'		'||R.Matches||'		'||R.Runs||'		'||R.highest_score);
		end loop;
	end topTenBatsman;
	
	procedure topTenBowler(id players.plid@site_link %type)
		IS
	
	cnt number :=0;
	
	begin
		DBMS_OUTPUT.PUT_LINE('Name			Matches		Wickets		Best Bowling Figure');
		DBMS_OUTPUT.PUT_LINE('_____________________________________________________________________');
		for R in (select Name, Matches, Wickets, best_figure from players@site_link join bowling@site_link on plid=player_id order by Wickets desc) loop
			if cnt=10 then
				exit;
			else
				cnt:=cnt+1;
			end if;
			DBMS_OUTPUT.PUT_LINE(R.Name||'		'||R.Matches||'		'||R.Wickets||'		'||R.best_figure);
		end loop;
	end topTenBowler;
	
	procedure successfulTeam(id teams.teamid@site_link %type)
		IS
	team_name teams.teamname@site_link %type;
	champion_time teams.champion@site_link %type;
	runnerup_time teams.runnerup@site_link %type;
	
	begin
		select teamname, champion, runnerup into team_name, champion_time, runnerup_time from teams@site_link where champion=(select max(champion) from teams@site_link);
		DBMS_OUTPUT.PUT_LINE(team_name);
		DBMS_OUTPUT.PUT_LINE('Champion: '||champion_time);
		DBMS_OUTPUT.PUT_LINE('Runners Up: '||runnerup_time);
	end successfulTeam;
	
	procedure player_info(player_name players.Name@site_link %type)
		IS
	player_age players.age@site_link %type;
	player_nationality country.cname@site_link %type;
	player_team teams.teamname@site_link %type;
	kit_no players.jerseyNo@site_link %type;
	player_role players.role@site_link %type;
	
	batting_hand batting.batting_hand@site_link %type;
	batting_position batting.batting_position@site_link %type;
	batting_match batting.matches@site_link %type;
	batting_innings batting.inns@site_link %type;
	batting_not_out batting.not_out@site_link %type;
	batting_runs batting.runs@site_link %type;
	highest_score batting.highest_score@site_link %type;
	hundreds batting.hundreds@site_link %type;
	fiftys batting.fiftys@site_link %type;
	fours batting.fours@site_link %type;
	sixes batting.sixes@site_link %type;
	
	bowling_hand bowling.bowling_hand@site_link %type;
	bowling_type bowling.bowling_type@site_link %type;
	bowling_match bowling.matches@site_link %type;
	bowling_innings bowling.inns@site_link %type;
	bowling_runs bowling.runs@site_link %type;
	wickets bowling.wickets@site_link %type;
	best_figure bowling.best_figure@site_link %type;
	fourWM bowling.fourWM@site_link %type;
	fiveWM bowling.fiveWM@site_link %type;
	begin
		--Personal Information--
		begin
			select age, cname, teamname, jerseyNo, role 
			into player_age, player_nationality, player_team, kit_no, player_role 
			from players@site_link, country@site_link, teams@site_link where nationality=cid and team=teamid and name=player_name;
			DBMS_OUTPUT.PUT_LINE('-----Personal Information-----');
			DBMS_OUTPUT.PUT_LINE('Name: '||player_name);
			DBMS_OUTPUT.PUT_LINE('Age: '||player_age);
			DBMS_OUTPUT.PUT_LINE('Nationality: '||player_nationality);
			DBMS_OUTPUT.PUT_LINE('Team: '||player_team);
			DBMS_OUTPUT.PUT_LINE('Role: '||player_role);
			DBMS_OUTPUT.PUT_LINE('Jersey No: '||kit_no);
			exception
				when no_data_found then
					DBMS_OUTPUT.PUT_LINE('Sorry, there exists no player in the given name.');
		end;
		
		--Batting Statistics---
		begin
			select batting_hand, batting_position, matches, inns, not_out, runs, highest_score, hundreds, fiftys, fours, sixes
			into batting_hand, batting_position, batting_match, batting_innings, batting_not_out, batting_runs, highest_score, hundreds, fiftys, fours, sixes
			from batting@site_link where player_id=(select plid from players@site_link where name=player_name);
			DBMS_OUTPUT.PUT_LINE('-----Batting Statistics-----');
			DBMS_OUTPUT.PUT_LINE('Batting Hand: '||batting_hand);
			DBMS_OUTPUT.PUT_LINE('Batting Position: '||batting_position);
			DBMS_OUTPUT.PUT_LINE('Matches: '||batting_match);
			DBMS_OUTPUT.PUT_LINE('Innings: '||batting_innings);
			DBMS_OUTPUT.PUT_LINE('Runs: '||batting_runs);
			DBMS_OUTPUT.PUT_LINE('Highest Score: '||highest_score);
			DBMS_OUTPUT.PUT_LINE('100s: '||hundreds);
			DBMS_OUTPUT.PUT_LINE('50s: '||fiftys);
			DBMS_OUTPUT.PUT_LINE('4s: '||fours);
			DBMS_OUTPUT.PUT_LINE('6s: '||sixes);
			exception
				when no_data_found then
					DBMS_OUTPUT.PUT_LINE('-----Batting Statistics-----');
					DBMS_OUTPUT.PUT_LINE('Batting Statistics Not Found');
		end;
		--Bowling Statistics--
		begin
			select bowling_hand, bowling_type, matches, inns, runs, wickets, best_figure, fourWM, fiveWM
			into bowling_hand, bowling_type, bowling_match, bowling_innings, bowling_runs, wickets, best_figure, fourWM, fiveWM
			from bowling@site_link where player_id=(select plid from players@site_link where name=player_name);
			DBMS_OUTPUT.PUT_LINE('-----Bowling Statistics-----');
			DBMS_OUTPUT.PUT_LINE('Bowling Type: '||bowling_hand||' '||bowling_type);
			DBMS_OUTPUT.PUT_LINE('Matches: '||bowling_match);
			DBMS_OUTPUT.PUT_LINE('Innings: '||bowling_innings);
			DBMS_OUTPUT.PUT_LINE('Runs: '||bowling_runs);
			DBMS_OUTPUT.PUT_LINE('Wickets: '||wickets);
			DBMS_OUTPUT.PUT_LINE('Best Bowling Figure: '||best_figure);
			DBMS_OUTPUT.PUT_LINE('4WM: '||fourWM);
			DBMS_OUTPUT.PUT_LINE('5WM: '||fiveWM);
			exception
				when no_data_found then
					DBMS_OUTPUT.PUT_LINE('-----Bowling Statistics-----');
					DBMS_OUTPUT.PUT_LINE('Bowling Statistics Not Found');
		end;
	end player_info;
	
	procedure teamPlayer(team_name teams.teamname@site_link %type)
		IS
	begin
		DBMS_OUTPUT.PUT_LINE('Name			Nationality		Role');
		DBMS_OUTPUT.PUT_LINE('_____________________________________________________________________');
		for R in (select Name, cname, role from players@site_link, teams@site_link, country@site_link where nationality=cid and team=teamid and teamname=team_name) loop
			DBMS_OUTPUT.PUT_LINE(R.Name||'		'||R.cname||'		'||R.role);
		end loop;
	end teamPlayer;
	
	procedure countryPlayer(country_name country.cname@site_link %type)
		IS
	begin
		DBMS_OUTPUT.PUT_LINE('Name			Team			Role');
		DBMS_OUTPUT.PUT_LINE('_____________________________________________________________________');
		for R in (select Name, teamname, role from players@site_link, teams@site_link, country@site_link where nationality=cid and team=teamid and cname=country_name) loop
			DBMS_OUTPUT.PUT_LINE(R.Name||'		'||R.teamname||'		'||R.role);
		end loop;
	end countryPlayer;
end bpl;
/
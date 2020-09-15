create or replace package bpl as
	
	procedure topTenBatsman(id players.plid@site_link %type);	
	procedure topTenBowler(id players.plid@site_link %type);
	procedure successfulTeam(id teams.teamid@site_link %type);
	procedure player_info(player_name players.Name@site_link %type);
	procedure teamPlayer(team_name teams.teamname@site_link %type);
	procedure countryPlayer(country_name country.cname@site_link %type);
	procedure centurions(id players.plid@site_link %type);
	procedure fifers(id players.plid@site_link %type);
end bpl;
/
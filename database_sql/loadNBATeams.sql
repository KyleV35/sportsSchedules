/* Eastern Conference */

/* Atlantic */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Celtics','Boston','MA','TD Garden');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Atlantic' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Nets','Brooklyn','NY','Barclays Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Atlantic' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Knicks','New York','NY','Madison Square Garden');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Atlantic' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('76ers','Philadelphia','PA','Wells Fargo Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Atlantic' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Raptors','Toronto','ON','Air Canada Centre');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Atlantic' FROM teams;

/* Central */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Bulls','Chicago','IL','United Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Central' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Cavaliers','Cleveland','OH','Quicken Loans Arena');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Central' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Pistons','Auburn Hills','MI','The Palace of Auburn Hills');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Central' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Pacers','Indianapolis','IN','Bankers Life Fieldhouse');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Central' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Bucks','Milwaukee','WI','BMO Harris Bradley Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Central' FROM teams;

/* Southeast */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Hawks','Atlanta','GA','Philips Arena');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southeast' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Bobcats','Charlotte','NC','Time Warner Cable Arena');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southeast' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Heat','Miama','FL','American Airlines Arena');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southeast' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Magic','Orlando','FL','Amway Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southeast' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Wizards','Washington','D.C.','Verizon Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southeast' FROM teams;

/* Western Conference */

/* Northwest */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Nuggets','Denver','CO','Pepsi Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Northwest' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Timberwolves','Minneapolis','MN','Target Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Northwest' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Thunder','Oklahoma City','OK','Chesapeake Energy Arena');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Northwest' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Trail Blazers','Portland','OR','Rose Garden');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Northwest' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Jazz','Salt Lake City','UT','EnergySolutions Arena');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Northwest' FROM teams;

/* Pacific */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Warriors','Oakland','CA','Oracle Arena');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Pacific' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Clippers','Los Angeles','CA','Staples Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Pacific' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Lakers','Los Angeles','CA','Staples Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Pacific' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Suns','Phoenix','AZ','US Airways Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Pacific' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Kings','Sacramento','CA','Sleep Train Arena');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Pacific' FROM teams;

/* Southwest */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Mavericks','Dallas','TX','American Airlines Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southwest' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Rockets','Houston','TX','Toyota Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southwest' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Grizzlies','Memphis','TN','FedExForum');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southwest' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Hornets','New Orleans','LA','New Orleans Arena');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southwest' FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Spurs','San Antonio','TX','AT&T Center');
INSERT INTO basketball_teams (team_id) 
    SELECT max(team_id) FROM teams;
INSERT INTO nba_teams (team_id,conference) 
    SELECT max(team_id),'Southwest' FROM teams;
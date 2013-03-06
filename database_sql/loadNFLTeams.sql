/* American Football Conference */

/* East */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Bills','Buffalo','NY','Ralph Wilson Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'East' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Dolphins','Miami','FL','Sun Life Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'East' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Patriots','New England','MA','Gillette Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'East' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Jets','New York','NY','MetLife Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'East' as conference FROM teams;

/* North */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Ravens','Baltimore','MD','MT&T Bank Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'North' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Bengals','Cincinnati','OH','Paul Brown Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'North' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Browns','Cleveland','OH','FirstEnergy Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'North' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Steelers','Pittsburgh','PA','Heinz Field');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'North' as conference FROM teams;

/* South */
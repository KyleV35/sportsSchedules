/* American Football Conference */

/* East */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Bills','Buffalo','NY','Ralph Wilson Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC East' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Dolphins','Miami','FL','Sun Life Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC East' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Patriots','New England','MA','Gillette Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC East' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Jets','New York','NY','MetLife Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC East' as conference FROM teams;

/* North */
INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Ravens','Baltimore','MD','MT&T Bank Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC North' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Bengals','Cincinnati','OH','Paul Brown Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC North' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Browns','Cleveland','OH','FirstEnergy Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC North' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Steelers','Pittsburgh','PA','Heinz Field');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC North' as conference FROM teams;

/* South */

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Texans','Houston','TX','Reliant Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC South' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Colts','Indianapolis','IN','Lucas Oil Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC South' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Jaguars','Jacksonville','FL','EverBank Field');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC South' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Titans','Tennessee','TN','LP Field');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC South' as conference FROM teams;

/* West */

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Broncos','Denver','CO','Sports Authority Field at Mile High');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC West' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Chiefs','Kansas City','MO','Arrowhead Stadium');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC West' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Raiders','Oakland','CA','O.co Coliseum');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC West' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Broncos','Denver','CO','Sports Authority Field at Mile High');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC West' as conference FROM teams;

INSERT INTO teams (name,city,state,stadium) 
    VALUES ('Vikings','Minnesota','MN','Hubert H. Humphrey Metrodome');
INSERT INTO NFL_teams (team_id,conference) 
    SELECT max(team_id),'AFC West' as conference FROM teams;
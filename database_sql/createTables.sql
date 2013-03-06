DROP TABLE IF EXISTS Teams CASCADE;
DROP TABLE IF EXISTS Basketball_Teams CASCADE;
DROP TABLE IF EXISTS NBA_Teams CASCADE;
DROP TABLE IF EXISTS NFL_Teams CASCADE;

DROP TABLE IF EXISTS Games;

CREATE TABLE Teams (
	team_id BIGSERIAL PRIMARY KEY,
	name varchar(200),
	city varchar(100),
	state varchar(100),
	stadium varchar(200)
);

CREATE TABLE Basketball_Teams (
	team_id BIGINT PRIMARY KEY,
	FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE NBA_Teams (
	team_id BIGINT PRIMARY KEY,
	conference varchar(100),
	FOREIGN KEY (team_id) REFERENCES Basketball_Teams(team_id)
);

CREATE TABLE Games (
	game_id SERIAL PRIMARY KEY,
	time timestamp with time zone,
	home_team_id BIGINT,
	away_team_id BIGINT,
	tv_station varchar(100),
	FOREIGN KEY (home_team_id) REFERENCES Teams(team_id),
	FOREIGN KEY (away_team_id) REFERENCES Teams(team_id)
);

CREATE TABLE NFL_Teams (
    team_id BIGINT PRIMARY KEY,
    conference varchar(100),
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

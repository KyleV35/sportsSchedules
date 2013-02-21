DROP TABLE IF EXISTS Teams CASCADE;
DROP TABLE IF EXISTS Basketball_Teams CASCADE;
DROP TABLE IF EXISTS NBA_Teams CASCADE;

CREATE TABLE Teams (
	team_id SERIAL PRIMARY KEY,
	name varchar(200),
	city varchar(100),
	state varchar(100),
	stadium varchar(200)
);

CREATE TABLE Basketball_Teams (
	team_id SERIAL PRIMARY KEY,
	FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE NBA_Teams (
	team_id SERIAL PRIMARY KEY,
	conference varchar(100),
	FOREIGN KEY (team_id) REFERENCES Basketball_Teams(team_id)
);
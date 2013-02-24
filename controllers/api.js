var config = require("../config");
var database = config.database;
var pg = require('pg');
var connectionString = "pg://" + database.user + ":" + database.password + "@" + database.host + ":" + database.port + "/" + database.database;

var team = require('../models/team');

exports.findAllNBATeams = function(req,res) {
    // Initialize client and response
    var client = new pg.Client(connectionString);
    client.connect();
    var JSON_response = {};
    var teams_array = [];
    JSON_response.teams = teams_array;

    // Find all NBA Teams
    var query = client.query('SELECT * from teams NATURAL JOIN NBA_teams');

    // For each team, create team and push JSON to teams_array
    query.on('row', function(row) {
        var NBA_team = new team.NBATeam(row["team_id"],row["name"],row["city"],row["state"],row["stadium"],row["conference"]);
        teams_array.push(NBA_team.toJSON());
    });
    query.on('end', function(result) {
        client.end();
        res.json(JSON_response);
    });
    query.on('error', function(error) {
        console.log("error");
        client.end();
        response_json = {
            "teams" : [],
            "error" : "An error occured, we're working to fix it!"
        }
        res.json(response_json);
    });
}

exports.findNBATeamByID = function(req,res) {
    var client = new pg.Client(connectionString);
    client.connect();
    var id = req.params.id;
    var JSON_response = {};
    JSON_response.team = "";
    var query = client.query('SELECT * from teams NATURAL JOIN NBA_teams where team_id='+id);
    query.on('row', function(row) {
        var NBA_team = new team.NBATeam(row["team_id"],row["name"],row["city"],row["state"],row["stadium"],row["conference"]);
        JSON_response.team = NBA_team.toJSON();
    });
    query.on('end', function(result) {
        client.end();
        res.json(JSON_response);
    });
    query.on('error', function(error) {
        console.log("error");
        client.end();
        response_json = {
            "team" : "",
            "error" : "An error occured, we're working to fix it!"
        }
        res.json(response_json);
    });
}

var findAllGamesSQL = " \
SELECT home_team.name as home_team_name, \
        home_team.team_id as home_team_id, \
        away_team.name as away_team_name, \
        away_team.team_id as away_team_id, \
        game_id, \
        time, \
        tv_station \
    FROM games JOIN \
    (teams NATURAL JOIN NBA_teams) home_team on games.home_team_id = home_team.team_id \
    JOIN (teams NATURAL JOIN NBA_teams) away_team on games.away_team_id = away_team.team_id \
";

exports.findAllNBAGames = function(req,res) {
    // Initialize client and response
    var client = new pg.Client(connectionString);
    client.connect();
    var JSON_response = {};
    var games_array = [];
    JSON_response.games = games_array;

    // Find all NBA Games
    var query = client.query(findAllGamesSQL);

    var print = true;
    // For each team, create team and push JSON to teams_array
    query.on('row', function(row) {
        var game = {
            game_id : row["game_id"],
            time : row["time"],
            tv_station : row["tv_station"]
        }
        var home_team = {
            team_id : row["home_team_id"],
            team_name : row["home_team_name"]
        }
        var away_team = {
            team_id : row["away_team_id"],
            team_name : row["away_team_name"]
        }
        game.home_team = home_team;
        game.away_team = away_team;
        games_array.push(game);
    });

    query.on('end', function(result) {
        client.end();
        res.json(JSON_response);
    });
    query.on('error', function(error) {
        console.log("error: " + error);
        client.end();
        response_json = {
            "teams" : [],
            "error" : "An error occured, we're working to fix it!"
        }
        res.json(response_json);
    });
}

exports.findNBAGamesForTeam = function(req,res) {
    // Initialize client and response
    var client = new pg.Client(connectionString);
    client.connect();
    var id = req.params.id;
    var JSON_response = {};
    var games_array = [];
    JSON_response.games = games_array;

    var forTeamSQL = "WHERE away_team.team_id = " + id +" or home_team.team_id = " + id;
    // Find all NBA Games
    var query = client.query(findAllGamesSQL + forTeamSQL);

    var print = true;
    // For each team, create team and push JSON to teams_array
    query.on('row', function(row) {
        var game = {
            game_id : row["game_id"],
            time : row["time"],
            tv_station : row["tv_station"]
        }
        var home_team = {
            team_id : row["home_team_id"],
            team_name : row["home_team_name"]
        }
        var away_team = {
            team_id : row["away_team_id"],
            team_name : row["away_team_name"]
        }
        game.home_team = home_team;
        game.away_team = away_team;
        games_array.push(game);
    });

    query.on('end', function(result) {
        client.end();
        res.json(JSON_response);
    });
    query.on('error', function(error) {
        console.log("error: " + error);
        client.end();
        response_json = {
            "teams" : [],
            "error" : "An error occured, we're working to fix it!"
        }
        res.json(response_json);
    });
}
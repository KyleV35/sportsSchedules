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
var config = require("../config");
var database = config.database;
var pg = require('pg');
var connectionString = "pg://" + database.user + ":" + database.password + "@" + database.host + ":" + database.port + "/" + database.database;

exports.mainTest = function(req,res) {
	var client = new pg.Client(connectionString);
	console.log("Hit again!");
	console.log("Client: "+ client);
	var JSON_response = {};
	var teams_array = [];
	JSON_response.teams = teams_array;
	client.connect();
    var query = client.query('SELECT * from teams');
    console.log("Query: " +query);
    var response = "Kyle";
  	query.on('row', function(row) {
  		var team_dict = {
  			"name": row["name"],
  			"city": row["city"],
  			"state": row["state"],
  			"stadium": row["stadium"]
  		};
  		teams_array.push(team_dict);
  	});
  	query.on('end', function(result) {
  		console.log("done");
  		client.end();
  		res.json(JSON_response);
  	});
}
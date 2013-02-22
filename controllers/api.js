var config = require("../config");
var database = config.database;
var pg = require('pg');
var connectionString = "pg://" + database.user + ":" + database.password + "@" + database.host + ":" + database.port + "/" + database.database;

exports.mainTest = function(req,res) {
	var client = new pg.Client(connectionString);
	console.log("Hit again!");
	console.log("Client: "+ client);
	client.connect();
    var query = client.query('SELECT * from teams');
    console.log("Query: " +query);
    var response = "Kyle";
  	query.on('row', function(row) {
  		response += "<p>" + row["name"] + "</p>";
  	});
  	query.on('end', function(result) {
  		console.log("done");
  		client.end();
  		res.send(response);
  	});
}
var config = require("../config");
var database = config.database;
var pg = require('pg');
var connectionString = "pg://" + database.user + ":" + database.password + "@" + database.host + ":" + database.port + "/" + database.database;

exports.mainTest = function(req,res) {
	var client = new pg.Client(connectionString);
	console.log("Hit again!");
	console.log("Client: "+ client);
	client.connect();
    var query = client.query('SELECT * from games');
    console.log("Query: " +query);
  	query.on('row', function(row) {
  		//console.log("I'm alive!");
  	});
  	query.on('end', function(result) {
  		console.log("done");
  		client.end();
  	});
	res.send("I'm here!");
}
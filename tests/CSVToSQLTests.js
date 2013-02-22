fs = require('fs');

var csv_to_sql = require('../CSVToSQL.js');

exports.testCSVToSQL = function(test) {

	var testCSVString = "START DATE,START TIME (PT),HOME,AWAY,TV STATION\n2/4/1090,7:30 AM, Knicks, Warriors, ESPN";
	var testFile = './testCSVFile';
	csv_to_sql.CSVToSQL(testCSVString,console.log);
	var content = fs.readFile(testFile,'utf8', function(err, data) {
		console.log(data);
		console.log(err);
	});
	//test.ok(content);
	test.done();
}
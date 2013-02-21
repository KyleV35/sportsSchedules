var csv_to_sql = require('../CSVToSQL.js');

exports.testConvertTimeToSQLFormat = function(test) {
	test.equal('07:40:00-8',csv_to_sql.convertTimeToSQLFormat('7:40 AM'));
	test.done();
}
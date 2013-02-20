var csv = require('csv');

csv()
.from('./data/nba-complete-2012-2013.csv', {
	columns: true
})
.on('record',function(row,index) {
	console.log('#'+index + " " + row["START DATE"].trim() + " " + row["START TIME (PT)"].trim() + " " + row["AWAY"].trim() + " " + row["HOME"].trim());
});
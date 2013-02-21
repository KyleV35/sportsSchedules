var csv = require('csv');

/* This function takes in a csv file of schedules and returns the .sql files for inserting this data to a POSTGRESQL database.*/
csv()
.from('./data/nba-complete-2012-2013.csv', {
	columns: true
})
.to('./data/nba-complete-2012-2013-parsed.csv')
.transform(function(row,index) {
	var tvStation = "";
    if (row["TV STATION"] != undefined) {
        tvStation = row["TV STATION"];
    }
	return '#'+index + " " + row["START DATE"].trim() + " " + row["START TIME (PT)"].trim() + " " + row["AWAY"].trim() + " " + row["HOME"].trim() + " " + tvStation.trim();
});
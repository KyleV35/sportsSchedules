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
    /*
		Need to produce a query that looks like:
		INSERT INTO game (time,home_team_id,away_team_id,tv_station)
    SELECT TIMESTAMP '1/2/1990 07:30:00+02', 1, 2, 'ESPN'; 
    */
    var time = row["START TIME (PT)"].trim();
    var start_datetime = row["START_DATE"]
    console.log('#'+index + " " + row["START DATE"].trim() + " " + row["START TIME (PT)"].trim() + " " + row["AWAY"].trim() + " " + row["HOME"].trim() + " " + tvStation.trim());
    return "INSERT INTO Game SELECT TIMESTAMP"
});

function convertTimeToSQLFormat(time) {
	var colon_index = time.indexOf(":");
	if (colon_index=-1) return null;
	var hour = time.substring(0,colon_index);
	var minutes_and_ampm = components[1];

}
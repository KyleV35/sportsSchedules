var csv = require('csv');

var input_file = process.argv[2];
var output_file = process.argv[3];
console.log(input_file);
console.log(output_file);

if (input_file) {
    if (output_file) {
        CSVToSQL(input_file,output_file);
    } else {
        CSVToSQL(input_file,console.log);
    }
} else {
    console.log("Please specify an input file!");
}

function CSVToSQL(csv_input,sql_output) {
    /* This function takes in a csv file of schedules and returns the .sql files for inserting this data to a POSTGRESQL database.*/
    csv()
    .from(csv_input, {
        columns: true
    })
    .to(sql_output)
    .transform(function(row,index) {
        var tv_station = "";
        if (row["TV STATION"] != undefined) {
            tv_station = row["TV STATION"];
            first_bracket_index = tv_station.indexOf("[");
            second_bracket_index = tv_station.indexOf("]");
            if (first_bracket_index === -1 || second_bracket_index === -1) {
                //Do nothing
            } else {
                tv_station = tv_station.substring(first_bracket_index+1,second_bracket_index);
            }
        }
        /*
            Need to produce a query that looks like:
            INSERT INTO game (time,home_team_id,away_team_id,tv_station)
        SELECT TIMESTAMP '1/2/1990 07:30:00+02', 1, 2, 'ESPN'; 
        */
        var time = row["START TIME (PT)"].trim();
        var formatted_time = convertTimeToSQLFormat(time);
        var start_date = row["START DATE"];
        var home_team = row["HOME"].trim();
        var away_team = row["AWAY"].trim();
        var tv_station_sql_string = "NULL";
        if (tv_station.length != 0) {
            // If tv_station exists, add single quotes around it
            tv_station_sql_string = "'" + tv_station + "'";
        }
        //console.log('#'+index + " " + row["START DATE"].trim() + " " + row["START TIME (PT)"].trim() + " " + row["AWAY"].trim() + " " + row["HOME"].trim() + " " + tvStation.trim());
        var insert_statement = "INSERT INTO game (time, home_team_id, away_team_id, tv_station)";
        var select_statement = "SELECT TIMESTAMP '" + start_date + " " + formatted_time + "', teams1.team_id, teams2.team_id, " + tv_station_sql_string;
        var from_statement = "FROM teams as teams1, teams as teams2";
        var where_statement = "WHERE teams1.name = '" + home_team + "' and teams2.name = '" + away_team + "'";
        var full_sql_statement = insert_statement + " " + select_statement + " " + from_statement + " " + where_statement + ";";
        //console.log(full_sql_statement);
        return full_sql_statement + "\n";
    });
}

function convertTimeToSQLFormat(time) {
    /* Time passed in in format: 7:30 PM */
    var colon_index = time.indexOf(':');
    if (colon_index==-1) return null;
    var hour = parseInt(time.substring(0,colon_index));
    if (isNaN(hour)) return null;
    var space_index = time.indexOf(" ");
    if (space_index==-1) return null;
    var minutes = parseInt(time.substring(colon_index+1,space_index));
    if (isNaN(minutes)) return null;
    var am_pm = time.substring(space_index+1).toUpperCase();
    if (am_pm === "PM") hour = hour + 12;
    var hour_string = hour.toString();
    if (hour_string.length < 2) hour_string = '0' + hour_string;
    var minutes_string = minutes.toString();
    if (minutes_string.length < 2) minutes_string = '0' + minutes_string;
    //Format '07:40:00+02'
    return hour_string + ":" + minutes_string + ":00-8"
}

exports.CSVToSQL = CSVToSQL;
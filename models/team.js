var Team = function(team_id,name,city,state,stadium) {
	this.name = name;
	this.team_id = team_id;
	this.city = city;
	this.state = state;
	this.stadium = stadium;

	this.toJSON = function() {
		return {
			"team_id" : this.team_id,
			"name" : this.name,
			"city" : this.city,
			"state": this.state,
			"stadium": this.stadium
		}
	}
}

exports.NBATeam = function(team_id,name,city,state,stadium,conference) {
	this.team = new Team(team_id,name,city,state,stadium);
	this.conference = conference;
	this.team_type = "NBA";
	this.sport = "basketball";

	this.toJSON = function() {
		var dict = this.team.toJSON();
		dict.sport = this.sport;
		dict.team_type = this.team_type;
		dict.division = this.conference;
		return dict;
	}
}
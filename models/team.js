var Team = function(name,city,state,stadium) {
	this.name = name;
	this.city = city;
	this.state = state;
	this.stadium = stadium;

	this.toJSON = function() {
		return {
			"name" : this.name,
			"city" : this.city,
			"state": this.state,
			"stadium": this.stadium
		}
	}
}

exports.NBATeam = function(name,city,state,stadium, conference) {
	this.team = new Team(name,city,state,stadium);
	this.conference = conference;
	this.team_type = "NBA";
	this.sport = "basketball";

	this.toJSON = function() {
		var dict = this.team.toJSON();
		dict.sport = this.sport;
		dict.team_type = this.team_type;
		return dict;
	}
}
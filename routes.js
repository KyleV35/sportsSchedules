var api_controller = require("./controllers/api");

exports.setUpRoutes = function(app) {
	app.get("/", function(req,res) {
		res.send("I'm here!");
	});
	app.get("/teams/nba", api_controller.findAllNBATeams);
	app.get("/teams/nba/:id", api_controller.findNBATeamByID);
	app.get("/games/nba", api_controller.findAllNBAGames);
	app.get("/games/nba/:id", api_controller.findNBAGamesForTeam);
	app.get("/test", function(req,res) {
		res.send("Hello");
	});
}
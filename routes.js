var api_controller = require("./controllers/api");

exports.setUpRoutes = function(app) {
	app.get("/", function(req,res) {
		res.send("I'm here!");
	});
	app.get("/nba-teams", api_controller.findAllNBATeams);
	app.get("/nba-teams/:id", api_controller.findNBATeamByID);
	app.get("/test", function(req,res) {
		res.send("Hello");
	});
}
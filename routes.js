var api_controller = require("./controllers/api");

exports.setUpRoutes = function(app) {
	app.get("/", api_controller.mainTest);
	app.get("/test", function(req,res) {
		res.send("Hello");
	});
}
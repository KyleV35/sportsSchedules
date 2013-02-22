var express = require('express');
var app = express();

var routes = require('./routes');
Sequelize = require("sequelize");

routes.setUpRoutes(app);

var port = process.env.PORT || 8080;

app.listen(port, function() {
    console.log("Listening on " + port);
});

var express = require('express');
var hogan = require('hogan.js');
var config = require('./config');
var app = express();

app.set('view engine',config.templateEngine);
app.set('view options', {layout: false}); //For template inheritance
app.use(express.static(__dirname + '/public'));

var routes = require('./routes');
Sequelize = require("sequelize");

routes.setUpRoutes(app);

var port = process.env.PORT || 8080;

app.listen(port, function() {
    console.log("Listening on " + port);
});

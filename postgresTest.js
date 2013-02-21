var pg = require('pg');
var connectionString = "pg://juounnteqqzsqc:BF1qpZ8NkZ78MDAIfOS4N_gSMQ@ec2-54-243-242-213.compute-1.amazonaws.com:5432/d96h7v5b01q6nf";
pg.connect(connectionString, function(err, client, done) {
    console.log("Client: " + client);
    console.log("Error: " + err);
    console.log("Done: " + done);
});

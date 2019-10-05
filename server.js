const express = require("express");
const app = express();
app.set("view engine", "ejs");

//mysql package
const mysql = require("mysql");

//body parser
var bodyParser = require("body-parser");

app.use(bodyParser.urlencoded({ extended: true }));

app.use(express.static(__dirname + "/public"));

//Mysql connection
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "345876",
  database: "hero_db"
});

connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
  }
});

//Route
app.get("/", function(req, res) {
  res.render("home");
});

//Selecting Questions for the ejs
app.get("/survey", function(req, res) {
  connection.query("SELECT * FROM questions", function(err, response) {
    res.render("survey", { res: response });
  });
});

app.post("/api/heroes", function(req, res) {
  var Name = req.body.h_name;
  var description = req.body.h_desc;
  var link = req.body.h_link;
  var scores = [
    // parseInt(req.body.question1),
  ];

  connection.query(
    "INSERT INTO heroes(h_name,h_desc, h_link) VALUES (?,?,?)",
    [Name, description, link],
    function(err, res) {
      Newuser(Name);
    }
  );
  function Newuser(n) {
    connection.query("SELECT h_id FROM heroes WHERE h_name = ? ", [n], function(
      err,
      res
    ) {
      insert_score(res[0].h_id);
    });
  }

  function insert_score(num) {
    connection.query(
      "INSERT INTO score (h_id,score) VALUES (?,?) ",
      [num, scores[0]],
      function(err, res) {
        match(num);
      }
    );
  }

  function match(num) {
    connection.query(
      "SELECT h_name,h_link FROM heroes where h_id='1' ",
      [num],
      function(err, results) {
        res.render("result", {
          name: results[0]["h_name"],
          link: results[0]["h_link"]
        });
      }
    );
  }
});

//Showing heroes
app.get("/api/heroes", function(req, res) {
  connection.query(
    "SELECT h_name,h_desc, h_link, GROUP_CONCAT(score) AS score FROM score  JOIN heroes  USING (h_id) GROUP BY h_id",
    function(err, response) {
      var heroes = [];
      for (var i = 0; i < response.length; i++) {
        var hero = {};
        hero.name = response[i].h_name;
        hero.desc = response[i].h_desc;
        hero.link = response[i].h_link;
        hero.score = response[i].score;
        heroes.push(hero);
      }
      res.json(heroes);
    }
  );
});

//create server
app.listen(3000, function() {
  console.log("Server Runing Localhost:3000");
});

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
   var name = req.body.hname;
  var link = req.body.link;
  var desc=req.body.description;
  var scores = [
     parseInt(req.body.question1),
     parseInt(req.body.question2),
     parseInt(req.body.question3),
     parseInt(req.body.question4),
     parseInt(req.body.question5),
     parseInt(req.body.question6),
     parseInt(req.body.question7),
     parseInt(req.body.question8),
     parseInt(req.body.question9),
     parseInt(req.body.question10),
     parseInt(req.body.question11),
     parseInt(req.body.question12),
     parseInt(req.body.question13),
     parseInt(req.body.question14),
     parseInt(req.body.question15),
     parseInt(req.body.question16),
     parseInt(req.body.question17),
     parseInt(req.body.question18),
     parseInt(req.body.question19),
     parseInt(req.body.question20),
  ];

  connection.query(
    "INSERT INTO heroes(h_name,h_desc, h_link) VALUES (?,?,?)",
    [name,desc, link],
    function(err, res) {
      Newuser(name,link);
    }
  );
  function Newuser(n) {
    connection.query("SELECT h_id FROM heroes WHERE h_name = ? AND h_link=? ", [n,link], function(
      err,
      res
    ) {
      insertScores(res[0].h_id);
    });
  }

  function insertScores(num) {
        connection.query("INSERT INTO scores (q_id, h_id, answer) VALUES (1,?,?), (2,?,?), (3,?,?), (4,?,?), (5,?,?), (6,?,?), (7,?,?), (8,?,?), (9,?,?), (10,?,?), (11,?,?), (12,?,?), (13,?,?), (14,?,?), (15,?,?), (16,?,?), (17,?,?), (18,?,?), (19,?,?), (20,?,?)", [num, scores[0], num, scores[1], num, scores[2], num, scores[3], num, scores[4], num, scores[5], num, scores[6], num, scores[7], num, scores[8], num, scores[9], num, scores[10], num, scores[11], num, scores[12], num, scores[13], num, scores[14], num, scores[15], num, scores[16], num, scores[17], num, scores[18], num, scores[19]], function (err, res) {
            match(num);
        });
    };
  function match(num) {
    connection.query(
      "SELECT * FROM (SELECT SUM(answer_difference) ans_diff_total, h_id, t2h_id FROM (SELECT q_id, h_id, t2h_id, answer_difference FROM  (SELECT *, ABS(answer-t2answer) AS answer_difference FROM (SELECT * FROM scores s1 LEFT JOIN (SELECT q_id AS t2q_id, h_id AS t2h_id, answer AS t2answer FROM scores s2) t2 ON t2q_id = s1.q_id) t3) t4) t5 GROUP BY t2h_id, h_id) t6 LEFT JOIN heroes  ON t2h_id = heroes.h_id WHERE t6.h_id = ? ORDER BY ans_diff_total ",
      [num],
      function(err, results) {
        res.render("result", {
          name: results[1]["h_name"],
          link: results[1]["h_link"],
          desc:results[1]["h_desc"]
        });
      }
    );
  }
});

//Showing heroes Api
app.get("/api/heroes", function(req, res) {
  connection.query(
    "SELECT h.h_name,h.h_desc, h.h_link, GROUP_CONCAT(s.answer) AS scores FROM scores s JOIN heroes h USING (h_id) GROUP BY h_id",
    function(err, response) {
      var heroes = [];
      for (var i = 0; i < response.length; i++) {
        var hero = {};
        hero.name = response[i].h_name;
        hero.desc = response[i].h_desc;
        hero.link = response[i].h_link;
        hero.scores = response[i].scores;
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

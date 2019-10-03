const express = require("express");
const mysql = require("mysql");

 
//  Sql connection
//----------------------------------------------------------------------------------------------------------------------------
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "345876",
  database: "hero_db"
});


 
connection.connect(function(err) {
  if (err) throw err;

  showquestions();

});
//----------------------------------------------------------------------------------------------------------------------------------
// Listing Questions 
var showquestions = function() {
	var query = "SELECT*FROM questions";
	connection.query(query, function(err, res) {

		if (err) throw err; 
		
        console.table(res);
  		 
	});
};


//--------------------------------------------------------------------------------------------------------------------------------


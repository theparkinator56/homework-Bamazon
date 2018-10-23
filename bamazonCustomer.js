var mysql = require("mysql");
var inquirer = require("inquirer");
var fs = require("fs");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon"
});

connection.connect(function(err) {
    if (err) throw err;
    runUI();
  });
  
  function runUI() {
    console.log("Selecting all products...\n");
    connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      // Log all results of the SELECT statement
      console.log(res);
      inquirer
      .prompt([
        {
        name: "buy",
        type: "input",
        message: "Type the id of what you would like to buy."
      },
      {
        name: "quantity",
        type: "input",
        message: "How many would you like?"
      }
    ])
      .then(function(answer) {
        var query = "SELECT * FROM products WHERE id=" + answer.buy
        
        connection.query(query, function(err, res){
          let chosenItem = res[0]
          console.log(res[0].product_name)
          if (res[0].stock_quantity >= 1){
            console.log("Excellent! your total is: " + (chosenItem.price * answer.quantity))
            connection.query(
              "UPDATE products SET ? WHERE ?",
              [
                {
                  stock_quantity: answer.quantity
              },
              {
              id: chosenItem.id
              }
            ]
            )
          }
          else {
            console.log("Sorry, stores are depleted, check back when Half-Life 3 comes out.")
          }
        })

      });
    });
  }


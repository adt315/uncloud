// Requiring necessary npm packages
const express = require("express");
const session = require("express-session");
const mysql = require("mysql");
const exphbs = require("express-handlebars");
// Requiring passport as we've configured it
const passport = require("./config/passport");



// Setting up port and requiring models for syncing
const PORT = process.env.PORT || 5100;
const db = require("./models");

const connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "password",
  database: "uncloud_db"
});

connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});



// Creating express app and configuring middleware needed for authentication
const app = express();
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static("public"));
// We need to use sessions to keep track of our user's login status
app.use(
  session({ secret: "keyboard cat", resave: true, saveUninitialized: true })
);
app.use(passport.initialize());
app.use(passport.session());

//Set Handlebars as default templating engine
app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

//get route
app.get("/api/all", function(req, res) {
  connection.query("SELECT * FROM posts;",
  function(err, data) {
    if (err) {
      throw err;
    }
    res.render('index', { posts: data });
  });
});

//post route
// app.post("/api/new", function(req, res) {
//   var dbQuery = "INSERT INTO posts (post_name, username_author, post_body, createdAt, updatedAt) VALUES (?,?,?,?,?)";
//   connection.query(dbQuery,
//    [req.body.post_name, req.body.username_author, req.body.post_body, req.body.createdAt, req.body.updatedAt], function(err, result) {
//     if (err) {
//       throw err;
//     }

//     res.redirect("/");
//   });
//});


// Requiring our routes
require("./routes/html-routes.js")(app);
require("./routes/api-routes.js")(app);

// Syncing our database and logging a message to the user upon success
db.sequelize.sync().then(() => {
  app.listen(PORT, () => {
    console.log(
      "==> 🌎  Listening on port %s. Visit http://localhost:%s/ in your browser.",
      PORT,
      PORT
    );
  });
});

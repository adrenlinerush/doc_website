const express = require("express");
const path = require("path");

const app = express();

app.set("views", path.join(__dirname, "views"));
app.set("view engine", "pug");
app.use(express.static(path.join(__dirname, "public")));

app.get("/", (req, res) => {
  res.render("index");
});

app.get("/adrenlinerushui-doc", (req, res) => {
  res.render("adrenlinerushui-doc");
});

app.get("/filebrowser-doc", (req, res) => {
  res.render("filebrowser-doc");
});

app.get("/qeglfsvideoplayer-doc", (req, res) => {
  res.render("qeglfsvideoplayer-doc");
});

const server = app.listen(3000, () => {
  console.log(`The application started on port ${server.address().port}`);
});

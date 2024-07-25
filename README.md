# codeelan_web
     flutter build web --web-renderer html

FOR NODEJS
https://codewithmayank.in/deploying-flutter-web-with-node-js-server/

# **//App.json**

const express = require("express");
const path = require("path");
const app = express();


app.use(express.static(path.join(__dirname, "public-flutter")));

app.get("*", (req, res) => {
res.sendFile(path.join(__dirname, "public-flutter/index.html"));
});

const port = 3000; // Choose a suitable port number
app.listen(port, () => {
console.log(`Server is running on port ${port}`);
});

**package.json**
{
"name": "codeelan_projects_web",
"version": "1.0.0",
"description": "A new Flutter project.",
"main": "app.js",
"start": "webpack-dev-server --hot",
"directories": {
"lib": "lib"
},
"scripts": {
"start": "node ./app.js"
},
"keywords": [],
"author": "",
"license": "ISC",
"dependencies": {
"express": "^4.19.2"
}
}

_command_ : npm start 
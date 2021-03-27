const express = require("express");
const app = express();

app.use(express.static(__dirname + "/public"));

app.get("/", function(request, response){
    response.send("<h2>Привет Express!</h2>");
});
app.listen(3000);

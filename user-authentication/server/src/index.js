const express = require("express");

const app = express();

app.use(express.json());

app.listen(3000, () => {
    console.log("Listening on Port 3000");
});

app.get("/", (request, response) => {
    response.json({
        message : "API is working"
    })
})

app.post("/api/users/register", (request, response) => {
    console.log("User Register in progress ...");
    console.log({body: request.body});
    return response.json({
        message: "User registration",
    });
});
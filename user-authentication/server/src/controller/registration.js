const Registration = require("../model/registrationModel");

app.post('/registration', (req, res) => {
    const sql = "INSERT INTO users (`firstName`,`lastName`, `email`, `phoneNumber`, `password`) VALUES (?)";
    const values = [
        req.body.firstName,
        req.body.lastName,
        req.body.email,
        req.body.phoneNumber,
        req.body.password
    ]
    db.query(sql, [values], (err, result) => {
        if(err) return res.json({Message: "Error in node"});
        return res.json(result);
    })
})
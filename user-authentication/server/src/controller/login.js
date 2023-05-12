const Login = require("../model/loginModel");

app.post('/login', (req, res) => {
    const sql = "SELECT * FROM users WHERE email = ? and password = ?";
    
    const values = [
        req.body.email,
        req.body.password
    ]
    db.query(sql, [values], (err, result) => {
        if(err) return res.json({Message: "Error in node"});
        if(result.length > 0){
            
            return res.json({Login : true});
        }else{
            return res.json({Login : false});

        }
    })
})
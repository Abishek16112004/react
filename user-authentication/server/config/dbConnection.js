const express = require("express");
const jwt = require('jsonwebtoken');
const multer = require('multer');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    host: "localhost",
    user: 'root',
    password: 'password',
    database: 'UserAuthentication'
});

app.get("/api/get", (req, res) => {
    const sqlGet = "SELECT * FROM users WHERE status = '0'";
    db.query(sqlGet, (error, result) => {
        res.send(result);
    });
});
app.get("/api/admin/get", (req, res) => {
    const sqlGet = "SELECT * FROM users WHERE status = '1'";
    db.query(sqlGet, (error, result) => {
        res.send(result);
    });
});

app.get("/api/get/:id", (req, res) => {
    const { id } = req.params;
    const sqlGet = "SELECT * FROM users WHERE id = ?";
    db.query(sqlGet, id, (error, result) => {
        if (error) {
            console.log(error);
        }
        res.send(result);
    });
});

app.put("/api/delete/:id", (req, res) => {
    const { id } = req.params;
    const sqlUpdate = "UPDATE users SET status = '2' WHERE id = ?";
    db.query(sqlUpdate, id, (error, result) => {
        if (error) {
            console.log(error);
        }
        res.send(result);
    });
});


app.put("/api/put/:id", (req, res) => {
    const { id } = req.params;
    const { firstName, lastName, email, phoneNumber } = req.body;
    const sqlGet = "UPDATE users SET firstName = ?, lastName = ?, email = ?, phoneNumber = ? WHERE id = ?";
    db.query(sqlGet, [firstName, lastName, email, phoneNumber, id], (error, result) => {
        if (error) {
            console.log(error);
        }
        res.send(result);
    });
});

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './uploads');
    },
    filename: function (req, file, cb) {
        const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
        cb(null, file.fieldname + '-' + uniqueSuffix + '.' + file.originalname.split('.').pop());
    }
});

app.use('/uploads', express.static('/var/www/html/user-authentication/server/uploads'));


const upload = multer({ storage: storage });

app.post('/registration', upload.single('image'), (req, res) => {
    const sql = "INSERT INTO users (`firstName`, `lastName`, `email`, `phoneNumber`, `password`, `dob`, `gender`, `department`, `image`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    const values = [
        req.body.firstName,
        req.body.lastName,
        req.body.email,
        req.body.phoneNumber,
        req.body.password,
        req.body.dob,
        req.body.gender,
        req.body.department,
        req.file.filename
    ];
    db.query(sql, values, (err, result) => {
        if (err) {
            console.log(err);
            return res.json({ Message: "Error in node" });
        }
        return res.json(result);
    });
});

const verifyJwt = (req, res, next) => {
    const token = req.headers["access-token"];
    if (!token) {
        return res.json("Token not provided");
    } else {
        jwt.verify(token, "jwtSecretKey", (err, decoded) => {
            if (err) {
                res.json("Not Authenticated");
            } else {
                req.userId = decoded.id;
                next();
            }
        });
    }
};

app.get('/checkauth', verifyJwt, (req, res) => {
    return res.json("Authenticated");
});

app.post('/login', (req, res) => {
    const sql = "SELECT email, password FROM users WHERE email = ? AND password = ? AND status = '1'";

    db.query(sql, [req.body.email, req.body.password], (err, result) => {
        if (err) return res.json({ Message: "Error in node" });
        if (result.length) {
            const id = result[0].id;
            const token = jwt.sign({ id }, "jwtSecretKey", { expiresIn: 300 });
            return res.json({ Login: true, token });
        } else {
            return res.json({ Login: false });

        }
    })
})


app.listen(8081, 'localhost', () => {
    console.log("connected to the server");
})
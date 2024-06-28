const express = require('express')
const cors = require('cors')
const jwt = require('jsonwebtoken')
const db = require('./models');

const app = express()

var corOptions = {
    origin : 'http://localhost:3000'
}

//middleware
app.use(cors(corOptions))
app.use(express.json())
app.use(express.urlencoded({extended : true}))

//routes
const userRouter = require('./routes/userRouter')
const shareRouter = require('./routes/shareRouter')
const brokerageRouter = require('./routes/brokerageRouter')
const purchaseRouter = require('./routes/purchaseRouter')
const salesRouter = require('./routes/salesRouter')
app.use('/api/users',userRouter)
app.use('/api/shares',shareRouter)
app.use('/api/brokerage',brokerageRouter)
app.use('/api/purchase',purchaseRouter)
app.use('/api/sales',salesRouter)
//testing api
app.get('/', (req,res) => {
    res.json({
        message :'hello from api'
    })
})

app.get('/stock_db', (req,res) => {
    const sql = "INSERT INTO users (`email`,`username`,`password`) VALUES (?)";
    values = [
        req.body.email,
        req.body.username,
        req.body.password
    ]
    db.stocks(sql, [values], (err, data) => {
        if(err){
            return res.json("Error Occured");
        }
        return res.json(data);
    })
})

//port
const PORT = process.env.PORT || 8080

//server
app.listen(PORT, (req,res) => {
    console.log(`Server is listening on Port : ${PORT}`)
})
const express = require('express')
const cors = require('cors')
const controller = require('./controllers/index')

const app = express()
const port = 5000

app.use(express.urlencoded({ extended: true }))
app.use(express.json())
app.use(cors())
app.use(controller)

app.listen(port)
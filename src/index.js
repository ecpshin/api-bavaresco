require('dotenv').config({ path: './.env', encoding: 'UTF-8'})
const express = require('express')
const cors = require('cors') 
const app = express()

app.listen(process.env.SERVER_PORT, ()=>{
    console.log(`Server started listenning: ${process.env.SERVER_PORT}`);
})
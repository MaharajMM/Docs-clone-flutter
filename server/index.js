const express = require("express");
const mongoose = require("mongoose");

const PORT = process.env.PORT | 3001;
const app = express();
const DB = "mongodb+srv://maharaj_mm:Mongodb22@cluster0.ybaviwh.mongodb.net/?retryWrites=true&w=majority";




mongoose.connect(DB).then(() => {
    console.log("Connection Successful!");
}).catch((err) =>{
    console.log(err);
});

app.listen(PORT, "0.0.0.0", () => {
    console.log("Connected at port 3001");
    console.log("Hey it is changing");
})
const express = require("express");

const authRouter = express.Router();

authRouter.post('/api/signup', async (req, res) => {
    try {
        const {name, email, profilePic} = req.body;
    } catch (e) {
        
    }
})
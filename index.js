const express = require('express');

// Create an express app
const app = express();

app.get('/', (req, res) => {
    res.send(process.env.MESSAGE);
});

// Web listener port
const PORT = 8080;
app.listen(PORT);

console.log(`Now running on port ${PORT}`);

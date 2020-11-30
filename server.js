const express = require('express')
const app = express()

const port = 9000;

// app.use(express.urlencoded({
//     extended: true
// }));

app.get('/', (req, res) => {
    res.json({"foo":"is the word"})
});

app.post("/", (req, res) => {
    res.send("Fine!");
});



app.listen(port, () => {
    console.log(`ipMapListener listening on port ${port}`)
});

'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0'; // using 0.0.0.0 translates to any address, including 127.0.0.1 or 'localhost' - same can't be said for 0.0.0.1
const OS = require('os');
const ENV = 'DEV';  // when the env is set up for UAT and PROD, we will need it


// App
const app = express();
app.get('/', (req, res) => {
    res.statusCode = 200;
    const msg = 'Hello from Node 3!';
    res.send(msg);
});

app.get('/test', (req, res) => {
    res.statusCode = 200;
    const msg = 'Hello from /test Node!';
    res.send(msg);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
const express = require('express');
const handler = require('./handler');
const fs = require('fs');

const router = express.Router();

router.get('/', (req, res) => {
    fs.readFile('dist/server/db/userCart.json', 'utf8', (err, data) => {
        if (err) {
            res.send({ result: 0, text: 'error' });
            return;
        }

        res.send(data);
    })
});

router.post('/', (req, res) => {
    handler(req, res, 'add', 'dist/server/db/userCart.json');
});

router.put('/:id', (req, res) => {
    handler(req, res, 'update', 'dist/server/db/userCart.json');
});

module.exports = router;

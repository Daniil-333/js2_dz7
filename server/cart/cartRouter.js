import { Router } from 'express';
// import handlerCart from './handler.js';
import { readFile } from 'fs';

const cartRouter = Router();

router.get('/', (req, res) => {
    readFile('dist/server/db/userCart.json', 'utf8', (err, data) => {
        if (err) {
            res.send({ result: 0, text: 'error' });
            return;
        }

        res.send(data);
    })
});

router.post('/', (req, res) => {
    handlerCart(req, res, 'add', 'dist/server/db/userCart.json');
});

router.put('/:id', (req, res) => {
    handlerCart(req, res, 'update', 'dist/server/db/userCart.json');
});

export default cartRouter;
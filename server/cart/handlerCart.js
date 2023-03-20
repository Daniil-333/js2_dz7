// import cart from './cart';
import { readFile, writeFile } from 'fs';

const handler = (req, res, action, file) => {
    readFile(file, 'utf8', (err, data) => {
        if (err) {
            res.send({ result: 0, text: 'error' });
            return;
        }

        let newCart = cart[action](JSON.parse(data), req);
        writeFile(file, newCart, (err) => {
            if (err) {
                res.send({ result: 0, text: 'error' });
                return;
            }

            res.send({ result: 1, text: 'error' })
        })
    })
};

export default handler;
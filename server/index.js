import express from 'express';
import cors from "cors";
import Router from "./routes.js";
import path from 'path';
// import { cartRouter } from './cart/cartRouter.js';

const app = express();
const PORT = process.env.PORT ?? 3080;
const __dirname = path.resolve();

app.use(express.json());
app.use(express.static(path.resolve(__dirname, 'public')));
app.use(cors());
app.use(Router);

app.get('/api/test', (req, res) => {
    res.send('Server is working!:-)');
})

// app.use('/api/cart', cartRouter);


app.listen(PORT, () => console.log(`Server started on port ${PORT}`));
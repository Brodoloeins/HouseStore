import { routes } from './router';
import express from 'express';

const app = express();

app.use(routes);

app.listen(9090, () => {
    console.log('Foi');
});

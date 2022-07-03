import 'dotenv/config'
import express from 'express';

const port = process.env.PORT || 8084;
const app = express();

app.use(express.static('public'));

app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});
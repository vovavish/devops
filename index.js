const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('Вишняков Владимир ИДБ-21-12. Обновленная версия');
});

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});

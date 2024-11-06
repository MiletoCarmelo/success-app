const express = require('express');
const app = express();
const port = 80;

app.get('/', (req, res) => {
  res.send(`
    <!DOCTYPE html>
    <html>
      <head>
        <title>Success App</title>
        <style>
          body {
            margin: 0;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: Arial, sans-serif;
            background: #f0f2f5;
          }
          .message {
            font-size: 2.5em;
            color: #4CAF50;
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            background: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
          }
        </style>
      </head>
      <body>
        <div class="message">Success...!</div>
      </body>
    </html>
  `);
});

app.listen(port, () => {
  console.log(`Success app running on port ${port}`);
});

const express = require('express');
const app = express();

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'ok', uptime: process.uptime() });
});

app.get('/', (req, res) => {
  res.send(`
    <h1>Hello from Elastic Beanstalk </h1>
    <p>This Node.js app was deployed with Terraform.</p>
    <p>Server time: ${new Date().toISOString()}</p>
  `);
});

app.get('/api/info', (req, res) => {
  res.json({
    app: 'nodejs-eb-terraform-demo',
    node_env: process.env.NODE_ENV || 'not set',
    message: 'This route came from index.js, deployed via Terraform + Elastic Beanstalk',
  });
});

const port = process.env.PORT || 8080;
app.listen(port, () => {
  console.log(`App listening on port ${port}`);
});

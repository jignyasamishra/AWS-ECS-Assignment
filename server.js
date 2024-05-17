const http = require('http');

const server = http.createServer((req, res) => {
  if (req.url === '/') {
    // Respond with Hello World for the root URL
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('Hello World');
  } else {
    // For any other URL, respond with a 404 status
    res.writeHead(404, { 'Content-Type': 'text/plain' });
    res.end('Page not found');
  }
});

const port = 5000;
server.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

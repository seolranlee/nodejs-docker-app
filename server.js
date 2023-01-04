const express = require("express");

// docker containerd안의 포트(브라우저 포트X)
// 브라우저의 포트와 도커 컨테이너의 포트를 맵핑시켜야 한다.
// docker run -p ${브라우저 포트}:${도커 컨테이너 포트} seolranlee/nodej
// docker run -p 5000:8080 seolranlee/nodej
// http://localhost:5000/
const PORT = 8080;

const app = express();
app.get("/", (req, res) => {
  res.send("Hello World");
});

app.listen(PORT);
console.log("Server is running");

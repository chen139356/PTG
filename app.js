//使用express构建web服务器 
const express = require('express');
const bodyParser = require('body-parser');
/*引入路由模块*/
const index=require("./routes/index.js");
const user=require("./routes/user.js");
const ftie=require("./routes/ftie.js");


//npm i -save cors
const cors=require("cors");

var app = express();
var server = app.listen(3000);
//只写一次，就可让整个服务端中所有接口都支持跨域
app.use(cors({
    origin:"http://127.0.0.1:5500",
    credentials:true
  }))
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/user",user);
app.use("/ftie",ftie);

//创建web服务器
const express=require('express');
//引入路由器
const userRouter=require('./routes/user.js');
const ajaxRouter=require('./routes/myajax.js');
//引入body-parser
const bodyParser=require('body-parser');
var server=express();
server.listen(8080);
//托管静态资源public下
server.use(express.static('public'));
//使用body-parser中间件，
server.use(bodyParser.urlencoded({
    extended:false
}));

//使用路由器
//使用（挂载）的url
server.use('/user',userRouter);
server.use('/ajax',ajaxRouter);

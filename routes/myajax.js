//引入连接池模块
const express=require('express');
//创建路由对象
const pool=require('../pool.js');
//添加路由
var  router=express.Router();
//测试服务器接收ajax请求的接口
router.get("/ajaxDemo",(req,res)=>{
 console.log(1111111);  
 res.send("第一个ajax程序");
})
//带参数的get请求
router.get("/ajaxDemo1",(req,res)=>{
  //1，接收参数
  var $uname=req.query.uname;
  var $upwd=req.query.upwd;
  //2验证接收参数成功
  if(!$uname){
   res.send("用户为接收到")
	   return;
  } 
   if(!$upwd){
   res.send("密码为接收到")
	   return;
  }
 //res.send("用户名为："+$uname+",密码为:"+$upwd)
	 pool.query('SELECT* FROM xz_user WHERE uname= ? and upwd=?',[$uname,$upwd],function(err,result){
  if(err) throw err;
  //判断是否注册成功
  if(result.length>0){
		 res.send("登录成功");
     }else{
		 res.send("登录失败")
	  }
  console.log(result)
  });
})
	//post登录
	 router.post("/login_post",(req,res)=>{
  //1，接收参数
  var $uname=req.body.uname;
  var $upwd=req.body.upwd;
  //2验证接收参数成功
  if(!$uname){
   res.send("用户为接收到")
	   return;
  } 
   if(!$upwd){
   res.send("密码为接收到")
	   return;
  }
 //res.send("用户名为："+$uname+",密码为:"+$upwd)
	 pool.query('SELECT* FROM xz_user WHERE uname= ? and upwd=?',[$uname,$upwd],function(err,result){
  if(err) throw err;
  //判断是否注册成功
  if(result.length>0){
		 res.send("登录成功");
     }else{
		 res.send("登录失败")
	  }
  console.log(result)
  });
})
//导出路由器对象
module.exports=router;


const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由对象
var  router=express.Router();
//添加路由
//1,用户注册
router.get('/reg',function(req,res){
   //获取get请求的数据
   var obj=req.query;
   //检测值是否为空
   if(!obj.uname){
     res.send({code:401,msg:'uname required'
   });
   return;
   }
   if(!obj.upwd){
     res.send({code:402,msg:'upwd required'
   });
   return;
   }
   if(!obj.phone){
     res.send({code:403,msg:'phone required'
   });
   return;
   }
   if(!obj.email){
     res.send({code:404,msg:'email required'
   });
   //阻止往后执行
   return;
   }
  //执行SQL语句
  pool.query('INSERT INTO xz_user SET ?',[obj],function(err,result){
  if(err) throw err;
  console.log(result);
  //判断是否注册成功
  if(result.affectedRows>0){
     res.send({code:200,msg:'reg suc'});
  }
  });
});
//2.用户登录
router.post('/login',function(req,res){
	//获取post请求的数据
 var obj=req.query;
  console.log(obj);
   if(!obj.uname){
     res.send({code:401,msg:'uname required'
   });
   return;
   }
   if(!obj.upwd){
     res.send({code:402,msg:'upwd required'
   });
   return;
   }
   //执行SQL语句
   //查询用户名和密码同时匹配的数据
   pool.query('SELECT* FROM xz_user WHERE uname= ? AND upwd=?',[obj.uname,obj.upwd],function(err,result){
  if(err) throw err;
  //判断是否注册成功
  if(result.length>0){
     res.send({code:200,msg:'reg suc'});
  }else{res.send({code:301,msg:'login err'})
	  }
  });
})
//3.修改用户
router.get('/update',function(req,res){
   
})
//导出路由器对象
module.exports=router;


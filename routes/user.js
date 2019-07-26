const express=require("express")
const router=express.Router();
const pool=require("../pool");

router.get("/login",(req,res)=>{
  var phone=req.query.phone;
  var upwd=req.query.upwd;
  console.log(phone)
  console.log(upwd)
  var sql=`select * from user where phone=? and upwd=?`;
    pool.query(sql,[phone,upwd],(err,result)=>{
      if(err){
        console.log(err);
        res.send({code:0});
      }else{
        res.send(result);
      }
    })
})

router.get("/search",(req,res)=>{
  var lid=req.query.lid;
  var sql="select * from user where lid=?";
  pool.query(sql,[lid],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})


router.get("/reg",(req,res)=>{
  var phone=req.query.phone;
  var upwd=req.query.upwd;
  var sql="INSERT INTO user SET phone=?,upwd=?";
  pool.query(sql,[phone,upwd],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send("1")
    }else{
      res.send("0")
    }
  })
})

router.get("/phone",(req,res)=>{
  var phone=req.query.phone;
  var sql="select * from user where phone=?";
  pool.query(sql,[phone],(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
module.exports=router;
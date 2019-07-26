const express=require("express")
const router=express.Router();
const pool=require("../pool");
/**发帖 */
router.get("/ftie",(req,res)=>{
    var lid='';
    var user=req.query.user;
    var cont=req.query.cont;
    var myimg=req.query.myimg;
    var dtime=req.query.dtime;
    var conment='';
  var sql="INSERT INTO lun SET lid=?, user=?,cont=?,myimg=?,dtime=?,conment=?"
  pool.query(sql,[lid,user,cont,myimg,dtime,conment],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send("1")
    }else{
      res.send("0")
    }
  })
}); 

/**删除 */
router.get('/delete',(req,res)=>{
  var lid=req.query.lid;
  var sql='DELETE FROM lun WHERE lid=?'
	pool.query(sql,[lid],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
				res.send("1")
			}else{
				res.send("0")
			}
	});
});	

module.exports=router;
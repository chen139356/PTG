const express=require("express")
const router=express.Router();
const pool=require("../pool");

router.get('/delete',(req,res)=>{
	var lid=req.query.lid;
	pool.query('DELETE FROM lun WHERE lid=?',[lid],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
				res.send("1")
			}else{
				res.send("0")
			}
	});
});	

module.exports=router;
(function(){
	$("#tiez").click(function(){
            fav.style.display="block";
        })

        $("#del").click(function(){
                fav.style.display="none"
             })
             $(".close").click(function(){
                fav.style.display="none"
             })
    $("#yess").click(function(){
         var cont=$("#content").val();
        if(!cont.length){
            alert("内容不能为空")
        }else{
            alert("发布成功");
            window.location.reload();
            fav.style.display="none"
            var user=this.login;
          var myimg=imge.value;
            function formateDate(date) {
            var y = date.getFullYear();
            var m = date.getMonth() + 1;
            var d = date.getDate();
            var h = date.getHours();
            var mi = date.getMinutes();
            m = m > 9 ? m : '0' + m;
            return y + '-' + m + '-' + d + ' ' + h + ':' + mi;
          
        }
        var dtime=formateDate(new Date());
        $.ajax({
			url:"http://localhost:3000/ftie/ftie",
			type:"get",
			data:{user,cont,myimg,dtime},
			dataType:"json",
			success:function(result){
				console.log(result);
            } 
         })   
    }
        })	  
})()


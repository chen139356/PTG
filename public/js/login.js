(function(){
	$("#login-flex12").click(function(){
		var phone=$("#phone-emal-name").val();
		var upwd=$("#upwd").val();
		// 发送请求
		$.ajax({
			url:"http://localhost:3000/user/login",
			type:"get",
			data:{phone,upwd},
			dataType:"json",
			success:function(result){
				console.log(result)
				if(result.length>0){
					window.location.reload()
					 sessionStorage.setItem("phone",phone);
				 }else{
					 $(".test").addClass("test_block")
				 }
			}
		})
	})
	$(window).click(function(){
		$(".test").removeClass("test_block")
})





	//************************************* */
	//浮动登录单击事件
	var $div=$(".flex-bottom>div");
	$(".flex-top>span").click(function(){
		$(".flex-top>span").css("border-bottom","none");
		$(".flex-top>span").css("color","#000000")
		var $span=$(this);
		$span.css("border-bottom","2px solid #E40078");
		$span.css("color","#E40078")
		$div.removeClass("flex-block")
		$div.eq($span.attr("data-index")).addClass("flex-block")
	})

	$(".click-tc").click(function(){
		$(".flex-w").addClass("flex-w-block")
	})
	$(".click-login").click(function(){
		$(".flex-w").addClass("flex-w-block")
	})
	$(".off").click(function(){
		$(this).parent().parent().remove()
	})
})()
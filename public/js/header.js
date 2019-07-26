(function (){
	$(".ddng,.click-login").click(function(e){
		e.stopPropagation();
		$.ajax({
			url:"login.html",
			type:"get",
			success: function(result) {
				$(result).appendTo(".header")
			}
		})
	})
	
	$.ajax({
		url:"loginout.html",
		type:"get",
		success: function(result) {
			$(result).appendTo(".sign-out")
		}
	})
	
	var lid=1;
	$.ajax({
		url:"http://localhost:3000/user/search",
		type:"get",
		data:{lid},
		dataType:'json',
		success: function(result) {
				var n=sessionStorage.getItem("phone");
	var $login=$(".loginsate>div");
	if(!n==""){
		$login.eq(0).css("display","none");
		$login.eq(1).css("display","block")
		var html=`
		<p><img src="${result.img}"/></p>
		<a href="javascript:;">欢迎:${n}</a>
		`;
	}else{
		$login.eq(1).css("display","none");
		$login.eq(0).css("display","block")
	}
	$("#span1").html(html);
		}
	})

	$(".header-inside>ul:first-child>li").mousemove(function(){
	if($(this).index()>0){
		$(".header-bottom>ul").removeClass("ul_block")
		$(".header-bottom>ul").eq($(this).index()-1).addClass("ul_block");
		$(".header-inside>ul:first-child>li").removeClass("url_bottom_border")
		$(this).addClass("url_bottom_border")
	}
});


})()




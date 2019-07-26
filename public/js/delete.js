(function(){
    $("#close").click(function(){
         lid=this.val();
		$.ajax({
			url:"http://localhost:3000/ftie/delete",
			type:"get",
			data:{lid},
            dataType:"json",
            success: function(result) {
            console.log(result)      
      }
    })
   });
})()

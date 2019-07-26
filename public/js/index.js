(function(){
    $.ajax({
      url:"http://localhost:3000/index",
      type:"get",
      //无请求参数
      dataType:"json"
    })
    .then(function(result){
     var html="";
      for(var i=0;i<result.length;i++){
          var cc=result[i]
         html+=`
        <div class="box clearfix">
        <a id="del" class="close" href="javascript:;">×</a>
        <img class="head" src="images/2.jpg" alt=""/>
        <div class="content">
            <div class="main">
                <p class="txt">
                    <span class="user">${cc.user}:</span>${cc.cont}
                </p>
                 <img class="myhead" src="images/g4.jpg" alt=""/>  
            </div>
            <div class="info clearfix">   
                <span class="time">${cc.dtime}</span>
                <a class="praise" href="javascript:;">赞</a>
            </div>
            <div class="praises-total" total="0" style="display: none;"></div>
            <div class="comment-list">
               
            </div>
            <div class="text-box">
                <textarea class="comment" autocomplete="off">评论…</textarea>
                <button class="btn ">回 复</button>
                <span class="word"><span class="length">0</span>/140</span>
            </div>
        </div>
    </div>`;
    $("#list").html(html);
      } 

    })   
    
})()



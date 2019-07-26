(function (){
    //验证码
    window.onload=function (){
        draw()
    }
        //绘制验证码
    var newshz;
    function draw() {
        newshz="";
        var canvas_width=$('#xsyzm').width();
        var canvas_height=$('#xsyzm').height();
        var canvas = document.getElementById("xsyzm");//获取到canvas的对象，
        var context = canvas.getContext("2d");//获取到canvas画图的环境，
        canvas.width = canvas_width;
        canvas.height = canvas_height;
        var sCode = new Array('1','2','3','4','5','6','7','8','9','0',
        'q','w','e','r','t','y','u','i','o','p','a','s','d','f','g','h','j','k','l','z','x','c','v','b',
        'Q','W','E','R','T','Y','U','I','O','P','A','S','D','F','G','H','J','K','L','Z','X','C','V','B','N','M');
        var aLength = sCode.length;//获取到数组的长度
        for (var i=0;i<5; i++) {
            var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
            var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
            var txt = sCode[j];//得到随机的一个内容
             newshz+=txt;
            var x = 10 + i * 15;//文字在canvas上的x坐标
            var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
            context.font = "bold 23px 微软雅黑";

            context.translate(x, y);
            context.rotate(deg);

            context.fillStyle = randomColor();
            context.fillText(txt, 0, 0);

            context.rotate(-deg);
            context.translate(-x, -y);
        }
        $("#xsyzm").html(newshz);
        for (var i = 0; i <= 5; i++) { //验证码上显示线条
            context.strokeStyle = randomColor();
            context.beginPath();
            context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.stroke();
        }
        for (var i = 0; i <= 30; i++) { //验证码上显示小点
            context.strokeStyle = randomColor();
            context.beginPath();
            var x = Math.random() * canvas_width;
            var y = Math.random() * canvas_height;
            context.moveTo(x, y);
            context.lineTo(x + 1, y + 1);
            context.stroke();
        }
    }

    function randomColor() {//得到随机的颜色值
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    }
    //验证码刷新
    $("#xsyzm").click(function (){
        draw(newshz)
    })


    $(".btn-reg").click(function (){
        var phone=$("#phone").val();
        var yzm=$("#yzm").val();
        var upwd=$("#upwd").val();
        var pwd=/^(?![a-z0-9]+$)(?![A-Za-z]+$)[A-Za-z0-9]{6,8}$/;
        var ph=/((\+86|0086)\s+)?1[3-8]\d{9}/;
        var t="";
            if(!ph.test(phone)){
                t="手机号格式不对"
                test(t);
                draw()
            }else if(yzm.toUpperCase()!=newshz.toUpperCase()){
                t="验证码错误";
                test(t);
                draw()
            }else if(!pwd.test(upwd)){
                t="密码格式不对";
                test(t);
                draw(newshz)
            }else{
                draw(newshz)
                $.ajax({
                    url:"http://localhost:3000/user/phone",
                    type:"get",
                    data:{phone},
                    dataType:"json",
                    success:function(result){
                        console.log(result)
                        if(result.length>0){
                            t="手机号已被注册"
                            test(t);
                            draw()
                        }else{
                            $.ajax({
                                url:"http://localhost:3000/user/reg",
                                type:"get",
                                data:{phone,yzm,upwd},
                                dataType:"json",
                                success: function(result) {
                                    if(result>0){
                                        console.log(result);
                                        location.href="header.html"
                                    }else{
                                        t="注册失败";
                                        test(t);
                                        draw()
                                    }
                                }
                            })
                        }
                    }
                })
            }
        var t=setTimeout(function(){
            $(".test-flex").removeClass("test-flex-block");
            clearTimeout(t)
        },3000)
    })

    // 正则验证弹窗验证
    function test(t){
        $(".test-flex").addClass("test-flex-block");
        $(".test-flex").html(t)
    }

})()

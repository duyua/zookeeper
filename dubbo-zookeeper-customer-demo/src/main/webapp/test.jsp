<%--
  Created by IntelliJ IDEA.
  User: 杜源源
  Date: 2018/07/18
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../jquery/jquery-1.8.0.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/jquery.slider.css" />
    <script type="text/javascript" src="js/jquery.slider.min.js"></script>

</head>
<body>
<form action="reg.jsp" method="post">
    <h1>欢迎注册</h1>

    <!--邮箱-->
    <label class="posi">邮  箱：<span class="fixed" id="emailMess"></span></label><img src="img/reg2.jpg"><input type="text" name="email" id="email" required><br>

    <div class="demo1">
        <div id="slider0">
            <label>验  证：</label><img src="../img/slider.jpg" style="width: 50px;height: 80px"><div id="slider1"></div>
        </div>
    </div>
    <div id="validateSubmit">
        <input type="submit" name="submit" class="regsubno" value="下一步" id="submit" onclick="return false;">

    </div>
</form>

<script type="text/javascript">

    var ok1=false;

    $("#slider1").slider({
        width: 340, // width
        height: 40, // height
        sliderBg: "rgb(134, 134, 131)", // 滑块背景颜色
        color: "#fff", // 文字颜色
        fontSize: 14, // 文字大小
        bgColor: "#E4393C", // 背景颜色
        textMsg: "按住滑块，拖拽验证", // 提示文字
        successMsg: "验证通过了哦", // 验证成功提示文字
        successColor: "grend", // 滑块验证成功提示文字颜色
        time: 400, // 返回时间
        callback: function(result) { // 回调函数，true(成功),false(失败)
            //$("#result1").text(result);
            if(result && ok1){
                // $("#submit").removeClass("regsubno").addClass("regsub");

                $("#validateSubmit").html('<input type="submit" name="submit" class="regsub" value="下一步" " id="submit" >');

            }

        }
    });



    $(function(){



//邮箱验证
        $("#email").blur(function(){
            //获取id对应的元素的值，去掉其左右的空格
            var email = $.trim($('#email').val());
            //验证邮箱格式的js正则表达式
            var isEmail = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
            //清空显示层中的数据
            $("#emailMess").html("");
            if(email == ""){
                $("#emailMess").html("<img src='img/icon/error.ico'>"+"邮箱不能为空!");
            }
            else if(!(isEmail.test(email))){
                $("#emailMess").html("<img src='img/icon/error.ico'>"+"邮箱格式错误！");
            }
            else{
                //此处可以操作向后台发送json数据，然后返回验证结果
                $("#emailMess").html("<img src='img/icon/yes.ico'>");
                ok1=true;
            }
        });

//提交按钮,所有验证通过方可提交



    });
    <!--邮箱验证-->
</script>

</body>
</html>



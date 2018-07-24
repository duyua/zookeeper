<%--
  Created by IntelliJ IDEA.
  User: 李若男
  Date: 2018/7/16
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/easyui/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap3/js/bootstrap.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap3/css/bootstrap.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap3/css/bootstrap-theme.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap-table/bootstrap-table.min.css"/>

    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-table/bootstrap-table.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>

</head>
<style>
    body {
        height: 10%;width: 10%;
        background: url('<%=request.getContextPath()%>/imged/top.jpg');
        background-size:cover;
    }
</style>

<style>
    #mid{
       position:absolute;
        top:50%;
        left:50%;
       margin:-150px 0 0 -150px;
        width:500px;
        height:300px;
        border:1px solid ;
        background-color:#FEFFF6;

    }
</style>


<body>
<div id=mid>
<div class="body">
    <h4 class="text-center"><b>欢迎回来！请登录</b></h4>
    <!-- 导航标签 -->
    <ul class="nav nav-tabs" role="tablist">
        <!-- 默认标签 -->
        <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab" >普通登陆</a></li>
        <li role="presentation"><a href="#profile" role="tab" data-toggle="tab" >手机动态登陆</a></li>
    </ul>

    <!-- 选项卡内容 -->
    <div class="tab-content">
        <!-- 默认显示内容 -->
        <div role="tabpanel" class="tab-pane active" id="home">
            <form id="login-form">
            <br><p class="text-center content"><input type="text"  style="width:100%"  name="memberbasicphone" placeholder="请输入手机号码/邮箱地址"></p>
            <p class="text-center content"><input type="text"   style="width:100%"  name="memberbasicmima" placeholder="请输入密码"></p>
            <p class="text-center content"><input type="text" style="width:55%"  name="validataCode" placeholder="请输入验证码">
            <span id="validateMes"></span>
            <a href="javascript:changeValidataImg()">
                <img alt="" id="ValidataImg" src="<%=request.getContextPath() %>/attribute/validateCode.do" /></a>
            <a href="javascript:changeValidataImg()">看不清，换一张</a>
         </p>
            </form>
            <p class="text-center content"><button type="button" class="btn btn-primary" style="width:100%" onclick="loginmeberbasic()">登陆</button></p>
            <p class="text-right right"><a href="<%=request.getContextPath() %>/register.jsp"><font >我要注册</font ></a></p>
        </div>
        <div role="tabpanel" class="tab-pane" id="profile">
            <br><p class="text-center content"><input type="text" id="dyyuserphoneid"  class="form-control" style="width:100%"  name="attributename" placeholder="请输入手机号码"><span id="spanshoujiid"></span></p>
            <input type="text" class="input input_white first_child" id="yanzhengid" name="yanzhengma" style="width:50%" id="yanzhengid" placeholder="请输入验证码" data-required="required" autocomplete="off">
            <input type="button" id="getCode" class="btn btn_active last_child" onclick="huoquyanzhengma()" value="获取验证码" ><span id="spanduanxinid"></span><span id="spanyanzheng"></span>
            <p class="text-center content"><button type="button" class="btn btn-primary" style="width:100%" onclick="yanzhengmadenglu()">登陆</button></p>
            <p class="text-right right"><a href="<%=request.getContextPath() %>/register.jsp">我要注册</a></p>

        </div>

    </div>

</div>
</div>


<script>
    function yanzhengmadenglu(){
        var zhi1=$("#dyyuserphoneid").val();
        var zhi2=$("#yanzhengid").val();


        $.ajax({
            url:"<%=request.getContextPath()%>/attribute/dyyselectusersphone.do",
            type:"post",
            data:{memberbasicphone:zhi1,yanzheng:zhi2},
            dataType:"json",
            success:function(data) {
                if (data.minyan == 5) {
                    location.href = "<%=request.getContextPath()%>/heji/missSixty.jsp"

                } else {
                    $("#spanshoujiid").html("<font color='red'>手机号未注册,请先注册！</font>");
                }

            }

        });
    }
    function huoquyanzhengma(){
        var zhi=$("#dyyuserphoneid").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/attribute/dyyphonenumber.do",
            type:"post",
            data:{'phone':zhi},
            success:function(data){

                $("#spanduanxinid").html(data.result);
                time(this);

            },
            error:function(){

            },
        });
    }
    //验证码倒计时
    var wait = 120;
    function time(obj) {
        if(wait==0) {
            $("#getCode").removeAttr("disabled");
            $("#getCode").val("获取验证码");
            wait = 120;
        }else {
            $("#getCode").attr("disabled","true");
            $("#getCode").val(wait+"秒后重试");
            wait--;
            setTimeout(function() {     //倒计时方法
                time(obj);
            },1000);    //间隔为1s
        }
    }
    function loginmeberbasic(){
        $.ajax({
            type:"post",
            data:$("#login-form").serialize(),
            url:"<%=request.getContextPath()%>/attribute/selectname.do",
            success:function(msg){
                //0:用户名不存在 1：密码错误 2：登录成功

                if(msg == 0){
                    $.messager.show({
                        title:'你有一个新消息',
                        msg:"用户名不存在",
                        timeout:2000,// 单位：毫秒
                        showType:'slide'
                    });
                }
                if(msg == 1){
                    $.messager.show({
                        title:'你有一个新消息',
                        msg:"密码错误",
                        timeout:2000,// 单位：毫秒
                        showType:'slide'
                    });

                }
                if(msg == 4){
                    $.messager.show({
                        title:'你有一个新消息',
                        msg:"验证码错误",
                        timeout:2000,// 单位：毫秒
                        showType:'slide'
                    });

                }

                if(msg == 2){

                    location.href="<%=request.getContextPath()%>/heji/missSixty.jsp"
                }

            }
        })

    }
    function changeValidataImg(){

        //获取图片路径
        var imgSrc = $("#ValidataImg").attr("src");

        //在图片路径后面拼接时间戳参数
        imgSrc += "?timestamp="+(new Date().valueOf());

        //将拼接好的连接重新赋值给img src属性
        $("#ValidataImg").attr("src", imgSrc);

    }

    $.fn.drag = function(options) {
        var x, drag = this, isMove = false, defaults = {
        };
        var options = $.extend(defaults, options);
        var handler = drag.find('.handler');
        var drag_bg = drag.find('.drag_bg');
        var text = drag.find('.drag_text');
        var maxWidth = drag.width() - handler.width();  //能滑动的最大间距

        //鼠标按下时候的x轴的位置
        handler.mousedown(function(e) {
            isMove = true;
            x = e.pageX - parseInt(handler.css('left'), 10);
        });

        //鼠标指针在上下文移动时，移动距离大于0小于最大间距，滑块x轴位置等于鼠标移动距离
        $(document).mousemove(function(e) {
            var _x = e.pageX - x;// _x = e.pageX - (e.pageX - parseInt(handler.css('left'), 10)) = x
            if (isMove) {
                if (_x > 0 && _x <= maxWidth) {
                    handler.css({'left': _x});
                    drag_bg.css({'width': _x});
                } else if (_x > maxWidth) {  //鼠标指针移动距离达到最大时清空事件
                    dragOk();
                }
            }
        }).mouseup(function(e) {
            isMove = false;
            var _x = e.pageX - x;
            if (_x < maxWidth) { //鼠标松开时，如果没有达到最大距离位置，滑块就返回初始位置
                handler.css({'left': 0});
                drag_bg.css({'width': 0});
            }
        });

        //清空事件
        function dragOk() {
            handler.removeClass('handler_bg').addClass('handler_ok_bg');
            text.removeClass('slidetounlock').text('验证通过').css({'color':'#fff'});       //modify
            // drag.css({'color': '#fff !important'});

            handler.css({'left': maxWidth});                   // add
            drag_bg.css({'width': maxWidth});                  // add

            handler.unbind('mousedown');
            $(document).unbind('mousemove');
            $(document).unbind('mouseup');

        }
    };
</script>
</body>
</html>

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
    <title>用户注册</title>
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
    #registerid{
        position:absolute;
        top:50%;
        left:40%;
        margin:-150px 0 0 -150px;
        width:400px;
        height:330px;
        border:1px solid ;
        background-color:#FEFFF6;

    }
</style>


<body>
<div id="registerid">
     <h3  class="text-center">新用户注册</h3>
    <form id="zhuciid">
    <p class="text-center content"> <input type="text" style="width:70%"  class="text" name="memberbasicphone" placeholder="请输入手机号码" id="phonezhuceid" value="" autocomplete="off" data-verify="mobile" /></p>
    <p class="text-center content"><input type="text"   style="width:20%"  name="validataCode" placeholder="请输入验证码">
    <span id="validateMess"></span>
        <a href="javascript:changeValidataImg()">
            <img alt="" id="ValidataImgg" src="<%=request.getContextPath() %>/attribute/validateCode.do" /></a>
        <a href="javascript:changeValidataImg()">看不清，换一张</a>
    </p>
    <p class="text-center content"> <input type="password" style="width:70%"  name="memberbasicmima" placeholder="密码" id="zhucimima" value="" autocomplete="off" data-verify="mobile" /></p>
    <p class="text-center content"> <input type="password" style="width:70%"  name="memberbasicpassword"   placeholder="确定密码" value="" id="zhucimimaid" autocomplete="off" data-verify="mobile" /></p>
    <p class="text-center content"><input type="text" class="input input_white first_child" id="yanzhengid" name="yanzhengma" style="width:45%" id="yanzhengid" placeholder="请输入验证码" data-required="required" autocomplete="off">
    <input type="button" id="getCoded" class="btn btn_active last_child" onclick="huoquyanzhengmazhuce()" value="获取验证码" ><span id="spanduanxinidd"></span><span id="spanyanzhengd"></span></p>
    </form>
    <p class="text-center content"><button type="button" class="btn btn-primary" style="width:70%" onclick="yanzhengmadenglu()">注册</button></p>
    <p class="text-right right"><a href="<%=request.getContextPath() %>/login.jsp">已注册,直接登陆</a></p>
</div>

<script>
    function yanzhengmadenglu(){
       var mima= $("#zhucimima").val();
        var mimaid= $("#zhucimimaid").val();
        if(mima!=mimaid){
            $.messager.show({
                title:'你有一个新消息',
                msg:"密码不一致,请重新输入",
                timeout:2000,// 单位：毫秒
                showType:'slide'
            });
        }else{
            $.ajax({
                type:"post",
                data:$("#zhuciid").serialize(),
                url:"<%=request.getContextPath()%>/attribute/saveMemberbasic.do",
                success:function(msg){
                          if(msg==1){
                              location.href="<%=request.getContextPath()%>/login.jsp"
                          }

                }
            })

        }
    }
    function huoquyanzhengmazhuce(){
        var zhi=$("#phonezhuceid").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/attribute/dyyphonenumberzhuce.do",
            type:"post",
            data:{'phone':zhi},
            success:function(data){

                $("#spanduanxinidd").html(data.result);
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
            $("#getCoded").removeAttr("disabled");
            $("#getCoded").val("获取验证码");
            wait = 120;
        }else {
            $("#getCoded").attr("disabled","true");
            $("#getCoded").val(wait+"秒后重试");
            wait--;
            setTimeout(function() {     //倒计时方法
                time(obj);
            },1000);    //间隔为1s
        }
    }
    function changeValidataImg(){

        //获取图片路径
        var imgSrc = $("#ValidataImgg").attr("src");

        //在图片路径后面拼接时间戳参数
        imgSrc += "?timestamp="+(new Date().valueOf());

        //将拼接好的连接重新赋值给img src属性
        $("#ValidataImgg").attr("src", imgSrc);

    }


</script>
</body>
</html>

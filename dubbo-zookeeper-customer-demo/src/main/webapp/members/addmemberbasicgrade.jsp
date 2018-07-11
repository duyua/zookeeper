<%--
  Created by IntelliJ IDEA.
  User: 邱峰
  Date: 2018/7/10
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
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
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<body>
<form id="savememberbasicgrades" class="form col-md-10 center-block">
    <table class="table table-bordered">
        <tr>
            <td style="width: 30%;">名称</td>
            <td><input type="text" class="form-control" name="gradename" id="gradename"></td>
        </tr>
        <tr>
            <td>优惠比例</td>
            <td><input type="text" class="form-control" name="gradediscounts" id="gradediscounts "></td>
        </tr>
        <tr>
            <td>消费金额</td>
            <td><input type="text" class="form-control" name="grademonetary" id="grademonetary"> </td>
        </tr>
        <tr>
            <td>设置</td>
            <td>
                <input type="checkbox" name="gradestatus" id="gradestatus" value="1">是否默认
                <input type="checkbox" name="gradestatus" id="gradestatu" value="2" onclick="cha(this.checked)">是否特殊
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="submit" class="btn btn-default" onclick="adds()">确定</button>
                &nbsp;&nbsp;&nbsp;
                <a class="btn btn-default" href="../userController/getmemberbasicgrade.do" target="iframe" role="button">
                    返回
                </a>
            </td>
        </tr>
    </table>


</form>
<script>
    function cha(checked) {
        if(checked){
            $("#grademonetary").attr('disabled', 'disabled');
            $("#grademonetary").css('background', '#CCCCCC');
        }else {
            $("#grademonetary").get(0).disabled = "";
            $("#grademonetary").css('background','url(../images/time.gif) #ffffdc no-repeat right top');
        }

    }

    function adds(){
        $.ajax({
            url:"<%=request.getContextPath()%>/userController/savememberbasicgrade.do",
            type:"post",
            data:$("#savememberbasicgrades").serialize(),
            dataType:"json",
            success:function(result){
                if(result==1){
                    location.reload();
                }
            }
        });
    }
</script>
</body>
</html>

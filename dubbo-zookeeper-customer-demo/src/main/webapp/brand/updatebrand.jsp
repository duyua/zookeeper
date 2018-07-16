<%--
  Created by IntelliJ IDEA.
  User: 李若男
  Date: 2018/7/12
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<body>
<form id="upadtebrand">
    <input type="hidden" name="brandid" value="${list.brandid}">
名称:<input type="text" class="form-control" name="brandname" placeholder="请输入名称" value="${list.brandname}">
网址:<input type="text" class="form-control" name="url" placeholder="请输入网址" value="${list.url}">
    <button type="button" class="btn btn-primary" onclick="updateattrbrand()">保存</button>
</form>
<script>
    function updateattrbrand(){
    $.ajax({
        url:'<%=request.getContextPath()%>/attribute/updateatbrand.do',
        type:'post',
        data:$("#upadtebrand").serialize(),
        dataType:'json',
        success:function(data){
            if(data==1){
                location.href="<%=request.getContextPath()%>/attribute/selectbrand.do";
            }

        }
    });
    }
</script>
</body>
</html>

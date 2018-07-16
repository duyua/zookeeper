<%--
  Created by IntelliJ IDEA.
  User: 李若男
  Date: 2018/7/11
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<br><br>
<form id="updatearout">
    <input type="hidden" name="attributeid" value="${list.attributeid}">
    <input type="hidden" name="genreid" value="${list.genreid}">
<div class="main">
绑定分类:<span class="input-xlarge uneditable-input">${list.name}</span><br>
名称:<input type="text"  class="form-control" style="width:30%"  name="attributename" placeholder="请输入名称" value="${list.attributename}">
<button class="btn btn-primary" type="button" onclick="appanedapp()">

    添加可选项
</button><br>
    可选项:
<c:forEach items="${listt}" var="p">
<input type="text" class="form-control" style="width:30%" name="attrname" placeholder="请输入可选项" value="${p.attrname}">
</c:forEach>
<div id="updateappen"></div>
    <button type="button" class="btn btn-primary" onclick="updatetattr()">保存</button>
</div>
</form>
<script>
    function appanedapp(){
        var app = $("#updateappen");
        app.append("<input type='text' class='form-control' style='width:30%' name='attrname' placeholder='请输入可选项'>");

    }
    function updatetattr(){
    $.ajax({
        url:'<%=request.getContextPath()%>/attribute/updateattribute.do',
        type:'post',
        data:$("#updatearout").serialize(),
        dataType:'json',
        success:function(data){
            if(data==1){
            location.href="<%=request.getContextPath()%>/attribute/selectattribute.do";

            }

        }
    });
    }
</script>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 杜源源
  Date: 2018/07/12
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
</head>
<!-- 引入EasyUI的样式文件-->
<link rel="stylesheet"
      href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css" type="text/css"/>
<!-- 引入EasyUI的图标样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 引入JQuery -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.min.js"></script>
<!-- 引入EasyUI -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<!--              引入树的工具js文件 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/util-js.js"></script>
<body>

<form id="classupdateformid">
    <input type="hidden"  id="idid" value="${id}">
    <div class="form-group">
        名称
        <input type="text" class="form-control" id="nameid"
               value="${name}">
    </div>
    <div class="form-group">
        上级分类
        <select class="easyui-combobox" id="pid"  data-options="valueField:'id',textField:'name',url:'<%=request.getContextPath()%>/basicController/typelist.do'" style="width: 100px;">
            <option value="${pid}"></option></select>

    </div>

    <div class="checkbox">
       筛选品牌
        <div>

        <c:forEach items="${list}" var="p">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="classbrandid" value="${p.brandid}" <c:forEach items="${brandlist}" var="bs"> <c:if test="${bs.brandid==p.brandid}">checked</c:if></c:forEach> >${p.brandname}

        </c:forEach>
        </div>
    </div>
    <div class="form-group">
        排序
        <input type="text" class="form-control" id="classsort"
               value="${classsort}">
    </div>
    <button type="button" onclick="classupdatetijiao()" class="btn btn-default">提交</button>
</form>
<script>
       function classupdatetijiao() {
           var check=$("[name='classbrandid']:checked").map(function (index,mm) {
                 return $(mm).val();
           }).get().toString();

        var zhi=$("#idid").val();
        var zhi1=$("#nameid").val();
        var zhi2=$("#pid").combobox('getValue');
        var zhi3=$("#classsort").val();
           $.ajax({
               url: "<%=request.getContextPath()%>/basicController/classsupdate.do",
               type: "post",
               data: {"id":zhi,"name":zhi1,"pid":zhi2,"classsort":zhi3,"fu":check},
               dataType:"json",
               success: function (str) {
                   if(str==1){

                       $.messager.alert('温馨提示', '修改成功');
                   }else{
                       $.messager.alert('警告', '修改失败');
                   }


               },
               error: function () {

                   $.messager.alert('警告', '系统错误！');
               }

           });
       }
</script>
</body>
</html>

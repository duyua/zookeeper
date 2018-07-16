<%--
  Created by IntelliJ IDEA.
  User: 杜源源
  Date: 2018/07/15
  Time: 14:47
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
<form id="parameterformid">
    绑定分类:<select class="easyui-combobox" id="typessid" name="typeid"  data-options="valueField:'id',textField:'name',url:'<%=request.getContextPath()%>/basicController/typelist.do'" style="width: 100px;">
</select><br>
    名称:<input type="text" class="form-control" id="nameid" name="parametername" >
    排序:<input type="text" class="form-control" id="paiid" name="parametersort" >
    <button class="btn btn-primary" type="button" onclick="appanedd()">
        增加参数
    </button><br>

    名称&nbsp;<input type="text"  style="size: 5px" name="minutename">排序&nbsp;<input type="text" style="size: 5px"  name="detailedsort">
    <div id="showappenn">

    </div>
    <button type="button" onclick="parameteraddtijiao()" class="btn btn-default">提交</button>
</form>
<script>
    function appanedd(){
        var app = $("#showappenn");
        app.append("名称&nbsp;<input type='text'  style='size: 5px' name='minutename'>排序&nbsp;<input type='text' style='size: 5px'  name='detailedsort'><br/>");

    }
  function parameteraddtijiao() {
        var ss= [];
      $("[name='minutename']").each(function(){
          ss.push($(this).val());
      })
      var st="";
      for (var i=0;i<ss.length;i++){
          st+=","+ss[i];
      }
      var st=st.substring(1);
      var qw=[];
      $("[name='detailedsort']").each(function(){
          qw.push($(this).val());
      })
      var we="";
      for (var i=0;i<qw.length;i++){
          we+=","+qw[i];
      }
      var we=we.substring(1);
      var zhi=$("#typessid").combobox('getValue');;
      var zhi1=$("#nameid").val();
      var zhi2=$("#paiid").val();

   $.ajax({
          url: "<%=request.getContextPath()%>/basicController/parameteradd.do",
          type: "post",
          data: {'parametername':zhi1,'typeid':zhi,'parametersort':zhi2,'minutename':st,'paixu':we},
          dataType:"json",
          success: function (str) {
              if(str==1){

                  $.messager.alert('温馨提示', '新增成功');
              }else{
                  $.messager.alert('警告', '新增失败');
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

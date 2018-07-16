<%--
  Created by IntelliJ IDEA.
  User: 李若男
  Date: 2018/7/10
  Time: 19:33
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

    <!-- include summernote -->



    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-table/bootstrap-table.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>

</head>
<body>
<button type="button"  class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"></i>
    添加
</button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="ModalLabel">添加品牌</h4>
            </div>
            <div class="modal-body">
                <form id="adddrand">

                    名称:<input type="text" class="form-control" name="brandname" placeholder="请输入名称">
                    网址:<input type="text" class="form-control" name="url" placeholder="请输入网址">


                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="insertattrbrand()">保存</button>
            </div>
        </div>
    </div>
</div>
<button class="btn btn-danger" type="button" id="btnnn_delete" onclick="deletebrand()">
    <i class="glyphicon glyphicon-trash"></i>
    删除
</button>
   <table id="brandid"></table>

     <script>

         function deletebrand(){
             var ids="";
             var app= $("#brandid").bootstrapTable('getSelections');
             if(app.length<=0){
                 alert("请选中一行")
             }else{

                 for(var i=0;i<app.length;i++){
                     ids+=",'"+app[i]['brandid']+"'";
                 }
                 ids=ids.substring(1);
                 $.messager.confirm('提示', '是否删除选中数据?', function (r) {

                     if (!r) {
                         return;
                     }
                     $.ajax({
                         url:'<%=request.getContextPath()%>/attribute/deletebrandall.do',
                         dataType: "json",
                         traditional:true,//这使json格式的字符不会被转码
                         data: {"ids":ids},
                         type: 'post',
                         success : function (data) {
                             if(data==1){
                                 $('#brandid').bootstrapTable('refresh');
                                 tableapapp()
                             }
                         }
                     });
                 });
             }
         }
             function insertattrbrand(){
                 $.ajax({
                     url:'<%=request.getContextPath()%>/attribute/saveatbrand.do',
                     type:'post',
                     data:$("#adddrand").serialize(),
                     dataType:'json',
                     success:function(data){
                         if(data==1){
                             $('#brandid').bootstrapTable('refresh');
                             tableapapp()
                         }

                     }
                 });
             }

         $(function(){
             tableapapp()


         });
         function  tableapapp(){
             //列表展示
             $('#brandid').bootstrapTable({
                 toolbar:'#toolbar',
                 url:'<%=request.getContextPath()%>/attribute/selectbrandshow.do',//获取数据地址
                 striped:true,
                 search:true,
                 searchOnEnterKey:true,

                 showHeader:true,
                 showColumns:true,
                 showRefresh:true,
                 showToggle:true,
                 showPaginationSwitch:true,

                 paginationHAlign:"right",
                 pagination: true,		   //开启分页
                 pageNumber:1,              //初始化加载第几页,默认第1页
                 pageSize: 3,               //每页几条数据,超过总条数右下角将没分页
                 pageList: [2, 4, 6, 8],    //每页条数,设置为All将展示全部记录,超过总条数底部将不显示条数下拉框
                 columns:[
                     {checkbox:true},
                     {field:'brandname',title:'品牌名称',width:100,align:'center'},
                     {field:'url',title:'品牌地址',width:100,align:'center'},
                     {field:'name',title:'操作',width:100,align:'center',
                         formatter: function(value,row,index){
                             var set="";
                             set+="<a  href='<%=request.getContextPath()%>/attribute/selecttbandupdate.do?ids="+row.brandid+"' target='iframe'>编辑</a>";
                             return set;
                         }
                     }
                 ]
             });

         }

     </script>
</body>
</html>

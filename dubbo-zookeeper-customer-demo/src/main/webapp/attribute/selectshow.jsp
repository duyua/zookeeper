<%--
  Created by IntelliJ IDEA.
  User: 李若男
  Date: 2018/7/9
  Time: 14:58
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
<div id="toolbar">
    <button type="button"  class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"></i>
        添加
    </button>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">添加属性</h4>
                </div>
                <div class="modal-body">
                    <form id="addForm">
                    绑定分类:<select id="slpk" class="selectpicker" name="genreid"></select><br>
                    名称:<input type="text" class="form-control" name="attributename" placeholder="请输入名称">
                        <button class="btn btn-primary" type="button" onclick="appaned()">

                            添加可选项
                        </button><br>

                    可选项<input type="text" class="form-control" name="attrname" placeholder="请输入可选项">
                        <div id="showappen">

                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="insertattr()">保存</button>
                </div>
            </div>
        </div>
    </div>
    <button class="btn btn-danger" type="button" id="btn_delete" onclick="deleteattrid()">
        <i class="glyphicon glyphicon-trash"></i>
        删除
    </button>


</div>
    <table id="arrid"></table>
    <div id="attrshow"></div>
<script>

    function deleteattrid(){

        var ids="";
        var app= $("#arrid").bootstrapTable('getSelections');
        if(app.length<=0){
            alert("请选中一行")
        }else{

            for(var i=0;i<app.length;i++){
                ids+=",'"+app[i]['attributeid']+"'";
            }
            ids=ids.substring(1);
            $.messager.confirm('提示', '是否删除选中数据?', function (r) {

                if (!r) {
                    return;
                }
                $.ajax({
             url:'<%=request.getContextPath()%>/attribute/deleteall.do',
                dataType: "json",
                traditional:true,//这使json格式的字符不会被转码
                data: {"ids":ids},
                type: 'post',
                success : function (data) {
                    if(data==1){
                        $('#arrid').bootstrapTable('refresh');
                        tableap()
                    }
                }
            });
            });
        }
    }
    function appaned(){
        var app = $("#showappen");
        app.append("<input type='text' class='form-control' name='attrname' placeholder='请输入可选项'>");

    }
     function insertattr(){
         $.ajax({
             url:'<%=request.getContextPath()%>/attribute/saveattribute.do',
             type:'post',
             data:$("#addForm").serialize(),
             dataType:'json',
             success:function(data){
                 if(data==1){
                     $('#arrid').bootstrapTable('refresh');
                     tableap()
                 }

             }
         });
     }
    $(function(){
       $.ajax({
           type : 'post',
           url :  "<%=request.getContextPath()%>/attribute/selectclass.do",

           dataType : 'json',

           success : function(datas) {//返回list数据并循环获取

               var select = $("#slpk");

               for (var i = 0; i < datas.length; i++) {

                   select.append("<option value='"+datas[i].id+"'>"

                       + datas[i].name + "</option>");

               }
           }

       });
    });





    $(function(){
          tableap()


    });
    function  tableap(){
        //列表展示
        $('#arrid').bootstrapTable({
            toolbar:'#toolbar',
            url:'<%=request.getContextPath()%>/attribute/selectattributeshow.do',//获取数据地址
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
            queryParams:function(){

                return {
                    page: this.pageNumber,
                    rows: this.pageSize,

                };
            },
            columns:[
                {checkbox:true},
                {field:'attributename',title:'名称',width:100,align:'center'},
                {field:'name',title:'绑定的分类',width:100,align:'center'

                },
                {field:'attributegenrename',title:'可选项',width:100,align:'center'},
                {field:'pname',title:'操作',width:100,align:'center',
                    formatter: function(value,row,index){
                        var set="";
                        set+="<a  href='<%=request.getContextPath()%>/attribute/selectattributeupdate.do?ids="+row.attributeid+"' target='iframe'>编辑</a>";
                        return set;
                    }
                }
            ]
        });

    }
</script>
</body>
</html>

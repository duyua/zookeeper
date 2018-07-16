<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
    <title>商品参数</title>
</head>

<body>

<div id="toolbarhg" class="btn-group">
    <a href="<%=request.getContextPath()%>/merchandise/parameteradd.jsp" target="iframe">
        <button id="btn_add" type="button" class="btn btn-default">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
        </button></a>
    <button id="btn_deletee" type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
    </button>
</div>

<table id="parametertableid"></table>



<script type="text/javascript">

    $(function () {
        parameterchushihua();


        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();

    });



    //初始化Table
    function parameterchushihua() {
        $('#parametertableid').bootstrapTable({
            url: '../basicController/parameterlist.do',         //请求后台的URL（*）
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
            columns:[[
                {field:'ck',checkbox:true},
                {field:'parametername',title:'名称',width:200,},
                {field:'parameterclassname',title:'绑定分类',width:200,},
                {field:'minutename',title:'参数',width:200,},
                {field:'parametersort',title:'排序',width:200,},
                {field:'ck',title:'操作',width:200,
                    formatter: function(value,row,index){
                        return "<a href='<%=request.getContextPath()%>/basicController/parameterupdateye.do?id="+row.parameterid+"' target='iframe'>[编辑]</a>"

                    },

                }
            ]]
        });
    };




    var ButtonInit = function () {
        var oInit = new Object();
        var postdata = {};

        oInit.Init = function () {
            //初始化页面上面的按钮事件
        };

        return oInit;
    };
    /*  商品信息修改查询方法 */
    function shangpinchaxunid(id) {
        alert(id)
    }

    /*  商品信息删除的方法 */
    $("#btn_deletee").click(function () {
        var zq=$("#parametertableid").bootstrapTable('getSelections');
        if(zq!=null&&zq!=""){
            sg="";
            for(var i=0;i<zq.length;i++){

                sg+=",'"+zq[i]['parameterid']+"'";
            }
            var gx=sg.substring(1);
            var msg = "您真的确定要删除吗？";
            if (confirm(msg) == true) {

                $.ajax({
                    url: "<%=request.getContextPath()%>/basicController/parameterdelete.do",
                    type: "post",
                    data: {parameterid: gx},
                    success: function (str) {
                        if (str > 0) {

                            $("#parametertableid").bootstrapTable("refresh");
                        } else {
                            $.messager.alert('警告', '删除失败');
                        }
                    },
                    error: function () {
                        $.messager.alert('警告', '系统错误！');
                    }
                });

            }

        }else{
            $.messager.alert('警告','请选择要删除的数据');
        }

    })



</script>

</body>
</html>
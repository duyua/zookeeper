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
    <title>Insert title here</title>
</head>

<body>

<a href="<%=request.getContextPath()%>/basicController/classaddye.do" target="iframe">
    <button id="btn_add" type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
    </button></a>
<table id="classtableid"></table>



<script type="text/javascript">

    $(function () {
        chushihua();



    });



    //初始化Table
    function chushihua() {
        $('#classtableid').bootstrapTable({
            url: '../basicController/typelist.do',         //请求后台的URL（*）
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
                {field:'name',title:'名称',width:200,},
                {field:'classsort',title:'排序',width:200,},
                {field:'ck',title:'操作',width:200,
                    formatter: function(value,row,index){
                        return "<a href='<%=request.getContextPath()%>/basicController/merchandisupdateye.do?id="+row.id+"' target='iframe'>[查看]</a>&nbsp;<a href='<%=request.getContextPath()%>/basicController/classupdateye.do?id="+row.id+"&name="+row.name+"&classsort="+row.classsort+"&pid="+row.pid+"' target='iframe'>[编辑]</a>&nbsp;<a href='javascript:fenleishanchu("+row.id+")'>[删除]</a>"


                    },

                }
            ]]
        });
    };


    /*  分类信息删除的方法 */
    function fenleishanchu(id) {
        var msg = "您真的确定要删除吗？";
        if (confirm(msg) == true) {
            $.ajax({
                url: "<%=request.getContextPath()%>/basicController/classdelete.do",
                type: "post",
                data: {'id': id},
                success: function (str) {
                    if (str == 1) {

                        $("#classtableid").bootstrapTable("refresh");
                    } else {
                        $.messager.alert('警告', '删除失败');
                    }
                },
                error: function () {
                    $.messager.alert('警告', '系统错误！');
                }
            });
        }
    }
</script>

</body>
</html>
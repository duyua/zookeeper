<%--
  Created by IntelliJ IDEA.
  User: 邱峰
  Date: 2018/7/10
  Time: 16:52
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
<div id="button">
    <div class="btn-group">
        <a class="btn btn-default" href="javascript:deleteMemberbasiccomment()" target="iframe" role="button">
            <span class="glyphicon glyphicon-trash"></span>删除
        </a>
        <button class="btn btn-default" onclick="location.reload()">
            <span class="glyphicon glyphicon-repeat"></span>刷新
        </button>
       <%-- <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                下拉
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="#">下拉链接 1</a></li>
                <li><a href="#">下拉链接 2</a></li>
            </ul>
        </div>--%>
    </div>
</div>
<table class="table table-striped" id="memberbasiccomment"></table>
<script>
    $("#memberbasiccomment").bootstrapTable({
        url:"<%=request.getContextPath()%>/userController/queryMemberbasiccomment.do",
        toolbar:"#button",
        striped:true,
        search:true,
        searchOnEnterKey:true,
        height:'650',
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
            {field:'',title:'',checkbox:true},
            {field:'commentbasrcname',title:'商品',width:400},
            {field:'commentgrade',title:'评分',width:100},
            {field:'commentcount',title:'内容',width:400},
            {field:'commentmemberbasicname',title:'会员',width:100},
            {field:'commentstatus',title:'是否显示',width:100,formatter:function(value,row,index){
                if(row.gradestatus==1){
                    return "是";
                }else{
                    return "否";
                }
            }
            },
            {field:'commentcreatdate',title:'创建日期',width:200},
            {field:'s',title:'操作 ',width:200,formatter:function(value,row,index){
                return '<a href="javascript:editRole('+row.memberbasicid+')" class="easyui-linkbutton">[编辑]</a>'+
                    '<a href="javascript:yonghu('+row.memberbasicid+')" class="easyui-linkbutton">[查看]</a>';
             }
            },
        ]],

    })

    function deleteMemberbasiccomment(id){
        var ids = "";
        if(id!=null){
            ids=id;
        }else{
            var arr = $("#memberbasiccomment").bootstrapTable("getSelections");
            for (var i = 0; i < arr.length; i++) {

                ids+=",'"+arr[i].commentid+"'";
            }
            ids=ids.substr(1);
            if(ids <=0){
                alert("请选择你要删除的数据!")
                return;
            }

        }
        alert(ids)
        $.ajax({
            url:"<%=request.getContextPath()%>/userController/deletememberbasiccomment.do",
            type:"post",
            data:{"ids":ids},
            dataType:"json",
            success:function(data){
                location.reload();
            }
        })
    }

</script>
</body>
</html>

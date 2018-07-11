<%--
  Created by IntelliJ IDEA.
  User: 邱峰
  Date: 2018/7/7
  Time: 18:07
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
<div id="butt">
    <a class="btn btn-info" href="../userController/addmembers.do" target="iframe" role="button">
        <span class="glyphicon glyphicon-plus"></span>添加
    </a>
    <div class="btn-group">
        <a class="btn btn-danger" href="javascript:deleteMember()" target="iframe" role="button">
            <span class="glyphicon glyphicon-remove"></span>删除
        </a>
        <button class="btn btn-success" onclick="location.reload()">
            <span class="glyphicon glyphicon-refresh"></span>刷新
        </button>
        <%--<div class="btn-group">
            <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
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

<table class="table table-striped" id="member"></table>
<script type="text/javascript">
    $("#member").bootstrapTable({
        url:"<%=request.getContextPath()%>/userController/querymemberlist.do",
        toolbar:"#butt",
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
            {field:'memberbasiclogname',title:'用户名',width:100},
            {field:'gradename',title:'会员等级',width:100},
            {field:'memberbasicemail',title:'E-mail',width:100},
            {field:'memberbasiccreatdate',title:'创建日期',width:100},
            {field:'memberbasicstatus',title:'状态',width:100,formatter:function(value,row,index){
                if(row.memberbasicstatus==1){
                    return "正常";
                }else{
                    return "<font color='red'>禁用</font>";
                }
              }
            },
            {field:'s',title:'操作 ',width:'30%',formatter:function(value,row,index){
                return "<a href=javascript:yonghu('"+row.memberbasicid+"') class='easyui-linkbutton'>[查看]</a>"+
                        "<a href=javascript:editbasic('"+row.memberbasicid+"') class='easyui-linkbutton'>[编辑]</a>";


            }
            },
        ]],

    })

    function deleteMember(id){
        var ids = "";
        if(id!=null){
            ids=id;
        }else{
            var arr = $("#member").bootstrapTable("getSelections");
            for (var i = 0; i < arr.length; i++) {

                ids+=",'"+arr[i].memberbasicid+"'";
            }
            ids=ids.substr(1);
            if(ids <=0){
                alert("请选择你要删除的数据!")
                return;
            }

        }
        $.ajax({
            url:"<%=request.getContextPath()%>/userController/deletemember.do",
            type:"post",
            data:{"ids":ids},
            dataType:"json",
            success:function(data){
                location.reload();
            }
        })
    }

    function yonghu(id) {
        window.location.href = "${pageContext.request.contextPath}/userController/chakanxinxi.do?id="+id;
    }

    function editbasic(id){

        alert(id)
    }

  function fff() {
    alert(1)
  }
</script>
</body>
</html>

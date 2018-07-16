<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/7/11
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../jquery/base.jsp" />
<html>
<head>
    <title>Title</title>
</head>
<body>

    <div class="panel panel-primary">
        <div id="returnDiv">
            <button class="btn btn-primary" data-toggle="modal"   onclick="deleteReturn(/*'+row.DELIVERYID+'*/)">删除</button>
        </div>
        <table class="table" id="return-tables" ></table>

        <div id="return-dialog"></div>
    </div>

<script>
    $("#return-tables").bootstrapTable({
        url:"<%=request.getContextPath()%>/payMent/queryReturn.do",
        striped: true,//隔行变色gyc
        toolbar:"#returnDiv",
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        search:true,//是否显示搜索框
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
        pagination: true,                   //是否显示分页（*）
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        silent: true,
        pagination:true,//开启分页
        paginationLoop:true,//开启分页无限循环
        pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
        pageSize: 5,                     //每页的记录行数（*）
        pageList: [5, 10],        //可供选择的每页的行数（*）
        search: true,                      //是否显示表格搜索
        showColumns: true,                  //是否显示所有的列（选择显示的列）
        showRefresh: true,                  //是否显示刷新按钮
        clickToSelect: true,                //是否启用点击选中行
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        //sidePagination:"server",//
        method:'post',//发送请求的方式
        contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        columns:[
            {field:'',title:'',checkbox:true},
            {field:'RETURNID',title:'编号', width:100},
            {field:'DELIVERYNAME',title:'配送方式',width:100},
            {field:'LOGISTICSNAME',title:'物流公司',width:100},
            {field:'RETURNWAYBILL',title:'运单号',width:100},
            {field:'RETURNSHIPPER',title:'发货人', width:100},
            {field:'RETURNCREATDATE',title:'创建日期',width:100},
            {field:'del',
                title:'操作',
                width:100,formatter: function(value,row,index){
                return '';
            }
            }
        ]
    })


    function  deleteReturn(){
        var options=$("#refund-tables").bootstrapTable("getSelections");
        if(options!=null && options.length>0){
            BootstrapDialog.confirm({
                type : BootstrapDialog.TYPE_WARNING, // <-- Default value is
                title : '确认',
                message : "你确认删除吗？",
                size : BootstrapDialog.SIZE_SMALL,//size为小，默认的对话框比较宽
                closable : true, // <-- Default value is false，点击对话框以外的页面内容可关闭
                draggable : true, // <-- Default value is false，可拖拽
                btnCancelLabel : '取消', // <-- Default value is 'Cancel',
                btnOKLabel : '确定', // <-- Default value is 'OK',
                callback : function(result) {
                    // 点击确定按钮时，result为true
                    if (result) {
                        // 执行方法
                        var ids ="";
                        for (var i = 0; i < options.length; i++) {
                            ids+=",'"+options[i].RETURNID+"'";
                        }

                        ids = ids.substring(1);
                        alert(ids);
                        $.ajax({
                            url:"<%=request.getContextPath()%>/payMent/deleteReturn.do",
                            type:"post",
                            data:{"ids":ids},
                            dataType:"text",
                            success:function(){
                                $("#return-tables").bootstrapTable("refresh");
                            }
                        })
                    }
                }
            });
        }else{
            BootstrapDialog.show({
                type : BootstrapDialog.TYPE_DANGER,
                title : '错误 ',
                message : "请选择要删除的项",
                size : BootstrapDialog.SIZE_SMALL,//size为小，默认的对话框比较宽
                buttons : [ {// 设置关闭按钮
                    label : '关闭',
                    action : function(dialogItself) {
                        dialogItself.close();
                    }
                } ],
            });
        }

    }


</script>

</body>
</html>

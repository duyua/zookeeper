<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/7/9
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../jquery/base.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="panel panel-primary">
        <table class="table" id="payment-tables" ></table>
        <div id="payment-dialog"></div>
    </div>

    <script>
        $("#payment-tables").bootstrapTable({
            url:"<%=request.getContextPath()%>/payMent/queryPayMent.do",
            striped: true,//隔行变色gyc
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
                {field:'GATHERINGID',title:'编号', width:100},
                {field:'GATHERINGNUMBER',title:'类型',width:100},
                {field:'PAYMENTTYPE',title:'支付方式',width:100,formatter: function(value,row,index){
                    if(row.PAYMENTTYPE==1){
                        return "线上";
                    }else  if(row.PAYMENTTYPE==2){
                        return "线下";
                    }
                }
                },
                {field:'GATHERINGMONEY',title:'付款金额',width:100},
                {field:'GATHERINGMEMBERBASICID',title:'会员编号', width:100},
                {field:'GATHERINGMANAGEMENTNUMBERID',title:'订单编号',width:100},
                {field:'GATHERINGSTATUS', title:'状态',width:100,formatter: function(value,row,index){
                    if(row.GATHERINGSTATUS==1){
                        return "收款成功";
                    }else  if(row.GATHERINGSTATUS==2){
                        return "未收款";
                    }
                }},
                {field:'GATHERINGCREATDATE',title:'创建日期',width:100},
                {field:'GATHERINGPAYMENTDATE',title:'付款日期',width:100},
                {field:'del',
                    title:'操作',
                    width:100,formatter: function(value,row,index){
                        return '<button class="btn btn-primary" data-toggle="modal"   onclick="deletePayMent('+row.GATHERINGID+')">删除</button>';
                }
                }
            ]

        })


      function  deletePayMent(id){
          $.ajax({
              url:"<%=request.getContextPath()%>/payMent/deletePayMent.do",
              type:"post",
              data:{id:id},
              dataType:"text",
              async:false,
              success:function(success){
                  $("#payment-tables").bootstrapTable('refresh');
              },
              error:function(){
                  $.messager.alert('警告','删除失败！');
              }
          });
        }


    </script>

</body>
</html>

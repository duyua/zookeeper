<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <!-- 引入EasyUI的样式文件-->
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css" type="text/css"/>
    <!-- 引入EasyUI的图标样式文件-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css" type="text/css"/>

</head>
<body>

<div id="cc" class="easyui-layout" data-options="fit:true">
    <div data-options="region:'north',title:'上部',split:true" style="height:100px;">
        <font  style="font-size:65px">欢迎！欢迎！</font>
    </div>

    <div data-options="region:'west',title:'导航菜单',split:true" style="width:200px;">
        <a href="javascript:user('/userController/operye.do','组织机构管理')">组织机构管理</a>
    </div>
    <div data-options="region:'center',title:''" style="padding:5px;">



        <div id="tt" class="easyui-tabs" data-options="fit:true">
            <div title="欢迎使用" style="padding:20px;display:none;">

            </div>

        </div>


    </div>
</div>










<!-- 引入JQuery -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.min.js"></script>
<!-- 引入EasyUI -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<!--              引入树的工具js文件 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/util-js.js"></script>


<script type="text/javascript">
    function user(str,ste){
        var zhi=$("#tt").tabs('exists',ste);
        if(zhi){
            $("#tt").tabs('select',ste);
        }else{
            $('#tt').tabs('add',{
                title:ste,
                //  content:'Tab Body',
                href:'<%=request.getContextPath()%>'+str,
                closable:true,
                tools:[{
                    iconCls:'icon-mini-refresh',
                    handler:function(){
                        location.reload();
                    }
                }]
            });

        }

    }
</script>
</body>
</html>
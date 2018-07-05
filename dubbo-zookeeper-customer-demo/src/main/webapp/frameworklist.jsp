<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div id="cc" class="easyui-layout" data-options="fit:true">
    <div data-options="region:'center',title:'组织机构列表'" style="padding:5px;">
        <table id="moduletableid"></table>

    </div>

</div>
<div id="moduleinsertdivid"></div>
<div id="moduleupdatedivid"></div>
<div id="rolemoduledivid"></div>
<div id="roleusermoduledivid"></div>
<script type="text/javascript">


    $(function(){
        modulesearch();
    })

    function modulesearch(){

        $("#moduletableid").treegrid({
            url:"<%=request.getContextPath()%>/userController/frameselectlist.do",
            //queryParams: {rolename:rolename},

            /* pagination:true,
              //pagePosition:'both',
              pageNumber:1,
              pageSize:3,
              pageList:[2,3,5,8],  */
            singleSelect:true,
            checkOnSelect:true,
            selectOnCheck:true,
            idField:'id',
            treeField:'text',
            toolbar: [{
                text: '刷新',
                iconCls: 'icon-reload',
                handler:function(){
                    $("#moduletableid").treegrid('reload')
                }

            },'-',{
                text: '新增',
                iconCls: 'icon-add',
                handler: function(){

                    moduleinsert();

                }
            },'-',{
                text: '删除',
                iconCls: 'icon-cancel',
                handler:function(){
                    moduledelete();
                }
            },'-',{
                text: '修改',
                iconCls: 'icon-save',
                handler:function(){
                    moduleupdate();
                }

            },'-',{
                text: '导出',
                handler:function(){
                    daochu();
                }
            }],
            columns:[[
                {field:'text',title:'组织机构名称',width:200,},
                {field:'coding',title:'编码',width:100,align:'center'},
                {field:'abbreviation',title:'简称',width:100,align:'center'},
                {field:'advocate',title:'主负责人',width:100,align:'center'},
                {field:'phone',title:'电话',width:100,align:'center'},
                {field:'fax',title:'传真',width:100,align:'center'},

                {field:'optionn',title:'有效',width:60,
                    formatter: function(value,row,index){
                        var st="";
                        if(row.optionn==1){
                            st="<input type='checkbox' checked='checked'/>";
                        }else{
                            st="<input type='checkbox'/>";
                        }

                        return st;
                    },align:'center'

                },
                {field:'ew',title:'排序',width:60,
                    formatter: function(value,row,index){
                        return index;
                    },align:'center'

                },
                {field:'describe',title:'备注',width:60,},
            ]]


        });

    }
    /*   用户模块权限方法 */
    function rolemoduleselect(){
        $("#rolemoduledivid").dialog({
            title: '用户操作权限批量设置',
            width: 600,
            height: 500,
            closed: false,
            cache: false,
            href:"<%=request.getContextPath()%>/module/rolemoduleye.do",
            modal: true,
            buttons:[{
                text:'保存',
                handler:function(){
                    var node = $('#userttmodule').tree('getChecked');
                    var row = $("#rolemoduletableid").datagrid("getSelected");

                    var useid="";
                    for(var i=0;i<node.length;i++){
                        useid+=","+node[i].id;
                    }
                    var moduleid=useid.substring(1);
                    $.ajax({
                        url:"<%=request.getContextPath()%>/module/usermoduleupdate.do",
                        type:"post",
                        data:{userid:row.userid,"moduleid":moduleid},
                        success:function(str){
                            if(str>0){
                                $.messager.alert('警告','权限修改成功');
                                $("#rolemoduledivid").dialog("close");
                            }else{
                                $.messager.alert('警告','权限修改失败');
                            }
                        },
                        error:function(){
                            $.messager.alert('警告','系统错误！');
                        }

                    });


                }
            },{
                text:'关闭',
                handler:function(){
                    $("#rolemoduledivid").dialog('close')
                }
            }]


        });

    }
    /*角色模块权限方法 */
    function roleusermoduleselect(){
        $("#roleusermoduledivid").dialog({
            title: '角色操作权限批量设置',
            width: 600,
            height: 500,
            closed: false,
            cache: false,
            href:"<%=request.getContextPath()%>/module/roleusermoduleye.do",
            modal: true,
            buttons:[{
                text:'保存',
                handler:function(){
                    var nosde = $('#roleuserttmodule').tree('getChecked');
                    var row = $("#roleusermoduletableid").datagrid("getSelected");

                    var id="";
                    for(var i=0;i<nosde.length;i++){
                        id+=","+nosde[i].id;
                    }
                    var moduleid=id.substring(1);
                    $.ajax({
                        url:"<%=request.getContextPath()%>/module/userrolemoduleupdate.do",
                        type:"post",
                        data:{roleid:row.roleid,"moduleid":moduleid},
                        success:function(str){
                            if(str>0){
                                $.messager.alert('警告','权限修改成功');
                                $("#roleusermoduledivid").dialog("close");
                            }else{
                                $.messager.alert('警告','权限修改失败');
                            }
                        },
                        error:function(){
                            $.messager.alert('警告','系统错误！');
                        }

                    });


                }
            },{
                text:'关闭',
                handler:function(){
                    $("#roleusermoduledivid").dialog('close')
                }
            }]


        });

    }
    /*   模块菜单修改方法 */
    function moduleupdate(){
        var zq=$("#moduletableid").treegrid("getChecked");

        if(zq!=null&&zq!=""){

                sg="";
                for(var i=0;i<zq.length;i++){
                    sg+=","+zq[i]["id"]+"";
                }

                $.messager.confirm('确认','您确认想要修改记录吗？',function(r){
                    if (r){
                        var gx=sg.substring(1);
                        $("#moduleupdatedivid").dialog({
                            title: '修改用户',
                            width: 850,
                            height: 500,
                            closed: false,
                            cache: false,
                            href:"<%=request.getContextPath()%>/userController/frameupdateselectye.do?id="+gx,
                            modal: true,
                            buttons:[{
                                text:'保存',
                                handler:function(){
                                    $.ajax({
                                        url:"<%=request.getContextPath()%>/userController/frameupdate.do",
                                        type:"post",
                                        data:$("#updateframeformid").serialize(),
                                        success:function(str){
                                            if(str==1){
                                                $("#moduleupdatedivid").dialog('close')
                                                $("#moduletableid").treegrid("reload");

                                            }else{
                                                $.messager.alert('警告','修改失败');
                                            }
                                        },
                                        error:function(){
                                            $.messager.alert('警告','系统错误！');
                                        }

                                    });



                                }
                            },{
                                text:'关闭',
                                handler:function(){
                                    $("#moduleupdatedivid").dialog('close')
                                }
                            }]


                        });
                    }
                });


        }else{
            $.messager.alert('警告','请选择要修改的数据');
        }


    }
    /*  模块菜单删除的方法 */
    function moduledelete(){
        var zq=$("#moduletableid").treegrid("getChecked");

        if(zq!=null&&zq!=""){

                sg="";
                for(var i=0;i<zq.length;i++){
                    sg+=","+zq[i]["id"]+"";
                }
                var gx=sg.substring(1);
                $.messager.confirm('确认','您确认想要删除记录吗？',function(r){
                    if (r){
                        $.ajax({
                            url:"<%=request.getContextPath()%>/userController/framedelete.do",
                            type:"post",
                            data:{id:gx},
                            success:function(str){
                                if(str>0){

                                    $("#moduletableid").treegrid("reload");
                                }else{
                                    $.messager.alert('警告','删除失败');
                                }
                            },
                            error:function(){
                                $.messager.alert('警告','系统错误！');
                            }
                        });
                    }
                });


        }else{
            $.messager.alert('警告','请选择要删除的数据');
        }

    }
    /* 模块菜单新增方法 */
    function moduleinsert(){
        $("#moduleinsertdivid").dialog({
            title: '新增组织机构',
            width: 900,
            height: 500,
            closed: false,
            cache: false,
            href:"<%=request.getContextPath()%>/userController/frameinsertselectye.do",
            modal: true,
            buttons:[{
                text:'保存',
                handler:function(){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/userController/frameinsert.do",
                        type:"post",
                        data:$("#insertframeformid").serialize(),
                        success:function(str){
                            if(str==1){
                                $("#moduleinsertdivid").dialog('close')
                                $("#moduletableid").treegrid('reload')

                            }else{
                                $.messager.alert('警告','新增失败');
                            }
                        },
                        error:function(){
                            $.messager.alert('警告','系统错误！');
                        }

                    });




                }
            },{
                text:'关闭',
                handler:function(){
                    $("#moduleinsertdivid").dialog('close')
                }
            }]


        });
    }

 function daochu() {
     location.href="<%=request.getContextPath()%>/userController/framepoi.do";

 }
</script>

</body>
</html>
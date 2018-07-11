<%--
  Created by IntelliJ IDEA.
  User: 杜源源
  Date: 2018/07/08
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改商品信息</title>
</head>
<!-- 引入EasyUI的样式文件-->
<link rel="stylesheet"
      href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css" type="text/css"/>
<!-- 引入EasyUI的图标样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css" type="text/css"/>
<body>

<div  class="easyui-tabs">
    <div title="基本信息" style="padding:20px;display:none;">
        <form id="jibenxiugaiid">
                  <input type="hidden" value="${bas.basicid}" name="basicid">
                  <input type="hidden" value="${bas.membersid}" name="memberid">
            <table cellpadding="0" border="1" >
                <tr>
                    <td>
                        商品分类：
                    </td>
                    <td>
                        <select class="easyui-combobox" name="typeid"  data-options="valueField:'classid',textField:'classname',url:'<%=request.getContextPath()%>/basicController/typelist.do'" >
                        <option value="${bas.typeid}"></option></select>
                    </td>
                    <td>
                        商品名称：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicname" value="${bas.basicname}"/>
                    </td>

                </tr>
                <tr>
                    <td>
                        商品编号：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicnumber" value="${bas.basicnumber}"/>
                    </td>
                    <td>
                        销售价格：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicprice" value="${bas.basicprice}">
                    </td>
                </tr>
                <tr>
                    <td>
                        会员价：<input type="checkbox" name="membered" value="1" onchange="huiyuandiv()"/>启用会员价
                    </td>
                    <td colspan="3">
                        <span id="spanhuiyuan"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        成本价：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basiccost" value="${bas.basiccost}">
                    </td>
                    <td>
                        市场价：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicmarket" value="${bas.basicmarket}">
                    </td>
                </tr>
                <tr>
                    <td>
                        展示图片:
                    </td>
                    <td>
                        <input type="file" name="shid" value="${bas.shid}">
                    </td>
                    <td>
                        单位：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicdanjia" value="${bas.basicdanjia}">
                    </td>
                </tr>
                <tr>
                    <td>
                        重量:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicweight" value="${bas.basicweight}">
                    </td>
                    <td>
                        库存：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicinventory" value="${bas.basicinventory}">
                    </td>
                </tr>
                <tr>
                    <td>
                        库存备注:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="kucunbeizhu" value="${bas.kucunbeizhu}">
                    </td>
                    <td>
                        赠送积分:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="zengsongjifen" value="${bas.zengsongjifen}">
                    </td>
                </tr>
                <tr>
                    <td>
                        品牌：
                    </td>
                    <td>
                        <select  class="easyui-combobox" name="brandid"  data-options="valueField:'brandid',textField:'brandname',url:'<%=request.getContextPath()%>/basicController/pinpailist.do'"><option value="${bas.brandid}"></option></select>
                    </td>
                    <td>
                        标签：
                    </td>
                    <td>
                        <input type="checkbox" name="thelabel" value="1" >热卖<input type="checkbox" name="thelabel" value="2" >最新
                    </td>
                </tr>
                <tr>
                    <td>
                        设置：
                    </td>
                    <td>
                        <input type="checkbox" name="setupthe" value="1">是否上架
                        <input type="checkbox" name="setupthe" value="2">是否列出
                        <input type="checkbox" name="setupthe" value="3">是否置顶
                        <input type="checkbox" name="setupthe" value="4">是否为赠品
                    </td>
                    <td>
                        备注:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicnote" value="${bas.basicnote}">
                    </td>
                </tr>
                <tr>
                    <td>
                        搜索关键词:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicsearch" value="${bas.basicsearch}" >
                    </td>
                    <td>
                        页面标题:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="pagetitle" value="${bas.pagetitle}" >
                    </td>
                </tr>
                <tr>
                    <td>
                        页面关键词:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicpage" value="${bas.basicpage}" >
                    </td>
                    <td>
                        页面描述：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="pagedescription" value="${bas.pagedescription}">
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <input type="button" onclick="jibenxiugaitijiao()" value="提交"/>
                        <input type="reset" value="返回"/>
                    </td>
                </tr>
            </table>
        </form>

    </div>
    <div title="商品介绍"  style="overflow:auto;padding:20px;display:none;">
        <form>
            <textarea id="editor_id" name="introducename"></textarea >
        </form>

    </div>
    <div title="商品图片"  style="padding:20px;display:none;">
        tab3
    </div>
    <div title="商品参数" style="padding:20px;display:none;">
        tab3
    </div>
    <div title="商品属性" style="padding:20px;display:none;">
        tab3
    </div>
    <div title="商品规格"  style="padding:20px;display:none;">
        tab3
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

<script>
    function huiyuandiv() {
        var sy=$("[name='membered']").is(':checked');
        if(sy){
            $("#spanhuiyuan").html( '贵宾会员<input class="easyui-textbox" size="5px" name="vipmember"/>' +
                ' 白金会员<input class="easyui-textbox" size="5px" name="platinummember"/>'+
                ' 金牌会员<input class="easyui-textbox" size="5px" name="goidmembers"/>'+
                ' 银牌会员<input class="easyui-textbox" size="5px" name="silvermember"/>'+
                '普通会员<input class="easyui-textbox" size="5px" name="regularmembers"/><br/>')
        }else{
            $("#spanhuiyuan").html("");
        }


    }

    $.getScript('<%=request.getContextPath()%>/js/kindeditor/kindeditor-all-min.js',
        function() {
            KindEditor.basePath = '<%=request.getContextPath()%>/js/kindeditor/';
            editor = KindEditor.create('#editor_id', {
                cssPath : '<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.css',
                uploadJson : '<%=request.getContextPath()%>/js/kindeditor/jsp/upload_json.jsp',
                fileManagerJson : '<%=request.getContextPath()%>/js/kindeditor/jsp/file_manager_json.jsp',
                afterBlur:function(){this.sync();}//和ajax同步


            });
        })
    /**
     * 商品基本信息修改提交
     */
    function jibenxiugaitijiao() {
        $.ajax({
            url: "<%=request.getContextPath()%>/basicController/basicupdate.do",
            type: "post",
            data: $("#jibenxiugaiid").serialize(),
            success: function (str) {

                $.messager.alert('警告', '修改成功');

            },
            error: function () {
                $.messager.alert('警告', '系统错误！');
            }

        });
    }

</script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 杜源源
  Date: 2018/07/08
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增商品信息</title>
</head>
<!-- 引入EasyUI的样式文件-->
<link rel="stylesheet"
      href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css" type="text/css"/>
<!-- 引入EasyUI的图标样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css" type="text/css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap3/js/bootstrap.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap3/css/bootstrap.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap3/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap-table/bootstrap-table.min.css"/>

<!-- include summernote -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/summernote-master/dist/summernote.css" />
<!-- 引入JQuery -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.min.js"></script>
<!-- 引入EasyUI -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<!--              引入树的工具js文件 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/util-js.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-table/bootstrap-table.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/summernote-master/dist/summernote.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/summernote-master/dist/lang/summernote-zh-CN.js"></script>
<script type="text/javascript">
    $('div.summernote').each(function() {
        var $this = $(this);
        var placeholder = $this.attr("placeholder") || '';
        var url = $this.attr("action") || '';
        $this.summernote({
            lang : 'zh-CN',
            placeholder : placeholder,
            minHeight : 300,
            dialogsFade : true,// Add fade effect on dialogs
            dialogsInBody : true,// Dialogs can be placed in body, not in
            // summernote.
            disableDragAndDrop : false,// default false You can disable drag
            // and drop
            callbacks : {
                onImageUpload : function(files) {
                    var $files = $(files);
                    $files.each(function() {
                        var file = this;
                        var data = new FormData();
                        data.append("file", file);

                        $.ajax({
                            data : data,
                            type : "POST",
                            url : url,
                            cache : false,
                            contentType : false,
                            processData : false,
                            success : function(response) {
                                var json = YUNM.jsonEval(response);
                                YUNM.debug(json);
                                YUNM.ajaxDone(json);

                                if (json[YUNM.keys.statusCode] == YUNM.statusCode.ok) {
                                    // 文件不为空
                                    if (json[YUNM.keys.result]) {
                                        var imageUrl = json[YUNM.keys.result].completeSavePath;
                                        $this.summernote('insertImage', imageUrl, function($image) {

                                        });
                                    }
                                }

                            },
                            error : YUNM.ajaxError
                        });
                    });
                }
            }
        });
    });
</script>

<body>
<div  class="easyui-tabs">
    <div title="基本信息" style="padding:20px;display:none;">
        <form id="jibenxinzengid">
            <table cellpadding="0" border="1" >
                <tr>
                    <td>
                        商品分类：
                    </td>
                    <td>
                        <input id="cc" class="easyui-combobox" name="typeid"  data-options="valueField:'id',textField:'name',url:'<%=request.getContextPath()%>/basicController/typelist.do'" />
                    </td>
                    <td>
                        商品名称：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicname"/>
                    </td>

                </tr>
                <tr>
                    <td>
                        商品编号：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicnumber"/>
                    </td>
                    <td>
                        销售价格：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicprice">
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
                        <input class="easyui-textbox"  name="basiccost">
                    </td>
                    <td>
                        市场价：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicmarket">
                    </td>
                </tr>
                <tr>
                    <td>
                        展示图片:
                    </td>
                    <td>
                        <input type="file" name="shid">
                    </td>
                    <td>
                        单位：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicdanjia">
                    </td>
                </tr>
                <tr>
                    <td>
                        重量:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicweight">
                    </td>
                    <td>
                        库存：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicinventory">
                    </td>
                </tr>
                <tr>
                    <td>
                        库存备注:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="kucunbeizhu">
                    </td>
                    <td>
                        赠送积分:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="zengsongjifen">
                    </td>
                </tr>
                <tr>
                    <td>
                        品牌：
                    </td>
                    <td>
                        <input  class="easyui-combobox" name="brandid"  data-options="valueField:'brandid',textField:'brandname',url:'<%=request.getContextPath()%>/basicController/pinpailist.do'" />
                    </td>
                    <td>
                        标签：
                    </td>
                    <td>
                        <input type="checkbox" name="thelabel" value="1">热卖<input type="checkbox" name="thelabel" value="2">最新
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
                        <input class="easyui-textbox"  name="basicnote">
                    </td>
                </tr>
                <tr>
                    <td>
                        搜索关键词:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicsearch">
                    </td>
                    <td>
                        页面标题:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="pagetitle">
                    </td>
                </tr>
                <tr>
                    <td>
                        页面关键词:
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="basicpage">
                    </td>
                    <td>
                        页面描述：
                    </td>
                    <td>
                        <input class="easyui-textbox"  name="pagedescription">
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <input type="button" onclick="jibenxinzengtijiao()" value="提交"/>
                        <input type="reset" value="返回"/>
                    </td>
                </tr>
            </table>
        </form>

    </div>
    <div title="商品介绍"  style="overflow:auto;padding:20px;display:none;">
        <form id="jieshaoformid">
            <div class="form-group">

                <div class="col-md-8">
                    <div class="summernote" name="description" placeholder="请对项目进行详细的描述，使更多的人了解你的" action="${ctx}/file"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="jianjietijiao()">保存</button>
            </div>
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


<script>
    $('div.summernote').each(function() {
        var $this = $(this);
        var placeholder = $this.attr("placeholder") || '';
        var url = $this.attr("action") || '';
        $this.summernote({
            lang : 'zh-CN',
            placeholder : placeholder,
            minHeight : 300,
            dialogsFade : true,// Add fade effect on dialogs
            dialogsInBody : true,// Dialogs can be placed in body, not in
            // summernote.
            disableDragAndDrop : false,// default false You can disable drag
            // and drop
        });
    });
    $(function(){
        function initToolbarBootstrapBindings() {
            var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
                    'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
                    'Times New Roman', 'Verdana'],
                fontTarget = $('[title=Font]').siblings('.dropdown-menu');
            $.each(fonts, function (idx, fontName) {
                fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
            });
            $('a[title]').tooltip({container:'body'});
            $('.dropdown-menu input').click(function() {return false;})
                .change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
                .keydown('esc', function () {this.value='';$(this).change();});

            $('[data-role=magic-overlay]').each(function () {
                var overlay = $(this), target = $(overlay.data('target'));
                overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
            });
            $('#voiceBtn').hide();
            if ("onwebkitspeechchange"  in document.createElement("input")) {
                var editorOffset = $('#editor').offset();
                $('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#editor').innerWidth()-35});
            } else {
                $('#voiceBtn').hide();
            }
        };
        function showErrorAlert (reason, detail) {
            var msg='';
            if (reason==='unsupported-file-type') {
                msg = "Unsupported format " +detail;
            } else {
                console.log("error uploading file", reason, detail);
            }
            $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">×</button>'+
                '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
        };
        initToolbarBootstrapBindings();
        $('#editor').wysiwyg({ fileUploadError: showErrorAlert} );
    });

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
      /**
       * 商品基本信息新增提交
       */
      function jibenxinzengtijiao() {
          $.ajax({
              url: "<%=request.getContextPath()%>/basicController/basicinsert.do",
              type: "post",
              data: $("#jibenxinzengid").serialize(),
              success: function (str) {
                $("#jibenxinzengid").form('reset');
                  $.messager.alert('警告', '新增成功');

              },
              error: function () {
                  $.messager.alert('警告', '系统错误！');
              }

          });
      }

    /**
     * 商品介绍提交
     */
    function jianjietijiao() {
        var zhi=$(".summernote").html();
        var zhi1=$(".summernote").text();
        alert(zhi)
        alert(zhi1)
       /* $.ajax({

            type: "post",
            data: $("#jieshaoformid").serialize(),
            success: function (str) {
                $("#jieshaoformid").form('reset');
                $.messager.alert('警告', '新增成功');

            },
            error: function () {
                $.messager.alert('警告', '系统错误！');
            }

        });*/


    }
</script>
</body>
</html>

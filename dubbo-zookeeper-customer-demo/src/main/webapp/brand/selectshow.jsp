<%--
  Created by IntelliJ IDEA.
  User: 李若男
  Date: 2018/7/10
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/easyui/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap3/js/bootstrap.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap3/css/bootstrap.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap3/css/bootstrap-theme.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap-table/bootstrap-table.min.css"/>

    <!-- include summernote -->
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/summernote-master/dist/summernote.css" />



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

</head>
<body>
<button type="button"  class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"></i>
    添加
</button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="ModalLabel">添加品牌</h4>
            </div>
            <div class="modal-body">
                <form id="adddrand">

                    名称:<input type="text" class="form-control" name="brandname" placeholder="请输入名称">
                    网址:<input type="text" class="form-control" name="url" placeholder="请输入网址">
                    介绍:

                    <div class="form-group">
                        <label for="" class="col-md-2 control-label">项目详情</label>
                        <div class="col-md-8">
                            <div class="summernote" name="description" placeholder="请对项目进行详细的描述，使更多的人了解你的" action="${ctx}/file">${deal.description}</div>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="insertattrbrand()">保存</button>
            </div>
        </div>
    </div>
</div>
   <table id="brandid"></table>

     <script>
             function insertattrbrand(){
                 $.ajax({
                     url:'<%=request.getContextPath()%>/attribute/saveatbrand.do',
                     type:'post',
                     data:$("#adddrand").serialize(),
                     dataType:'json',
                     success:function(data){
                         if(data==1){
                             $('#brandid').bootstrapTable('refresh');
                             tableapapp()
                         }

                     }
                 });
             }
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
             tableapapp()


         });
         function  tableapapp(){
             //列表展示
             $('#brandid').bootstrapTable({
                 toolbar:'#toolbar',
                 url:'<%=request.getContextPath()%>/attribute/selectbrandshow.do',//获取数据地址
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
                 columns:[
                     {checkbox:true},
                     {field:'brandname',title:'品牌名称',width:100,align:'center'},
                     {field:'url',title:'品牌地址',width:100,align:'center'},
                     {field:'name',title:'操作',width:100,align:'center'}
                 ]
             });

         }
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
     </script>
</body>
</html>

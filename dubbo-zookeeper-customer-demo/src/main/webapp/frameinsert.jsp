<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

<form id="insertframeformid">
    <table border="1px soild" bordercolor="#95B8E7" cellspacing="0" width="500px" height="300px">
        <tr>
            <td>编码</td>
            <td><input class="easyui-textbox"  name="coding"  style="width:300px"></td>
            <td>名称</td>
            <td><input class="easyui-textbox"  name="text"  style="width:300px"></td>

        </tr>
        <tr>
            <td>简介</td>
            <td><input class="easyui-textbox"  name="abbreviation"  style="width:300px"></td>
            <td>父节点</td>
            <td><select class="easyui-combotree" name="pid" style="width:200px;"data-options="url:'<%=request.getContextPath()%>/userController/frameselectlist.do',required:true"></select></td>

        </tr>
        <tr>
            <td>分类</td>
            <td>
                <select class="easyui-combobox"  name="classify" style="width:300px">
                    <option value="">请选择</option>
                    <option value="1">子部门</option>
                    <option value="2">本部</option>
            </select>
            </td>
            <td>主负责人</td>
            <td><input class="easyui-textbox"  name="advocate" style="width:300px"></td>
        </tr>
        <tr>
            <td>副主管</td>
            <td><input class="easyui-textbox"  name="assistant" style="width:300px"></td>
            <td>电话</td>
            <td><input class="easyui-textbox"  name="phone" style="width:300px"></td>
        </tr>
        <tr>
        <td>内线</td>
        <td><input class="easyui-textbox"  name="interior" style="width:300px"></td>
        <td>传真</td>
        <td><input class="easyui-textbox"  name="fax" style="width:300px"></td>
      </tr>
        <tr>
            <td>邮编</td>
            <td><input class="easyui-textbox"  name="postcode" style="width:300px"></td>
            <td>网址</td>
            <td><input class="easyui-textbox"  name="urll" style="width:300px"></td>
        </tr>
        <tr>
            <td>地址</td>
            <td colspan="3"><input class="easyui-textbox"  name="site" style="width:300px"></td>
        </tr>

        <tr>
            <td>选项</td>
            <td colspan="3">
                <input type="radio"  name="optionn" value="1" >有效
                <input type="radio"  name="optionn" value="2" >内部组织
            </td>

        </tr>

        <tr>
            <td>描述</td>
            <td><textarea name="describes" style="width: 400px;height: 100px"></textarea></td>

        </tr>
    </table>
</form>
</body>
</html>
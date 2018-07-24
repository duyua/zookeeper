<%--
  Created by IntelliJ IDEA.
  User: 杜源源
  Date: 2018/07/23
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>封装头部</title>
</head>
<body>
<p id="tip520" class="top_tip">全场1399包邮<span onclick="this.parentNode.style.display = 'none';">x</span></p>
<div class="header">
    <div class="top_link_box">
        <div class="header_content">
            <div class="header_count">
                <span id="xianshiid" style="display:none">${user.memberbasiclogname}&nbsp;<a href='javascript:tuichu()'>退出</a></span>
                <span id="paramLogin"><em id="emUserName"></em><a  href="../login.jsp">登陆</a><em>|</em><a href="../register.jsp" id="linkReg">注册</a></span>
                <a id="linkAccount" href="<%=request.getContextPath()%>/basicController/mehost.do" title="我的账户">我的账户</a><em>|</em>
                <a id="linkWishlist" class="link_Wishlist" href="#" title="我的收藏">我的收藏</a><em>|</em>
                <a id="linkCart" class="link_bag" href="<%=request.getContextPath()%>/basicController/querygwlist.do" title="购物袋"></a><em>|</em>
                <a href="javascript:;" class="linkServiceOnlineTop">在线客服</a>
                    <input type="text"  value="搜索您感兴趣的内容" id="name">
                    <button type="button" onclick="search()">搜索</button>
            </div>
        </div>
    </div>
    <div class="header_content">
        <h1 id="logoOch" class="logo ochirly_logo">
            <a href="../heji/missSixty.jsp">MISS SIXTY</a>
        </h1>
    </div>
</div>
<script language="JavaScript">
    var myName="<%=session.getAttribute("userid")%>";
    if(myName!="null") {
        $("#paramLogin").hide();
        $("#xianshiid").show();
    }else{
        $("#paramLogin").show();
        $("#xianshiid").hide();
    }
    function tuichu() {
        location.href="<%=request.getContextPath()%>/basicController/tuichu.do";
    }
</script>

</body>
</html>

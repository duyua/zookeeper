<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>选择支付方式</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="https://img2.fiveplus.com/rs/common/v1/web/css/my.min.css?1" />

    <script src="https://img2.fiveplus.com/rs/lib/js/jquery.js"></script>
    <script src="https://img2.fiveplus.com/rs/common/v1/web/js/my.min.js?13"></script>
    <script src="https://img2s.ochirly.com.cn/rs/lib/js/vue.min.js" ></script>
    <link rel="stylesheet" href="http://img2.misssixty.com.cn/rs/misssixty/v1/www/css/m60_base.css" />

    <script src="http://img2.misssixty.com.cn/rs/lib/js/jquery.js"></script>
    <script src="http://img2.misssixty.com.cn/rs/misssixty/v1/www/js/m60_www_global.min.js"></script>
</head>
<body>
<script>
    te$.setMyStyle();
</script>


<p id="tip520" class="top_tip">全场1399包邮<span onclick="this.parentNode.style.display = 'none';">x</span></p>
<div class="header">
    <div class="top_link_box">
        <div class="header_content">
            <div class="header_count">
                <span id="paramLogin"><em id="emUserName"></em><a id="linkLogin" href="#"></a><em>|</em><a href="#" id="linkReg">注册</a></span>
                <a id="linkAccount" href="<%=request.getContextPath()%>/basicController/mehost.do" title="我的账户">我的账户</a><em>|</em>
                <a id="linkWishlist" class="link_Wishlist" href="#" title="我的收藏">我的收藏</a><em>|</em>
                <a id="linkCart" class="link_bag" href="<%=request.getContextPath()%>/basicController/querygwlist.do" title="购物袋"></a><em>|</em>


            </div>
        </div>
    </div>
    <div class="header_content">
        <h1 id="logoOch" class="logo ochirly_logo">
            <a href="../heji/missSixty.jsp">MISS SIXTY</a>
        </h1>
    </div>
</div>

<script>
    var _mvq = _mvq || [];
    var _gaSkuItem = _gaSkuItem || [];
    _mvq.push(['$setGeneral', 'ordercreate', '', '', '']);
    _mvq.push(['$addOrder','50736681', '864.00']);
</script>
<div class="cart_container">
    <div class="edge">
        <div class="checkout_step">
            <div class="pay_tip col_6">
                <h2>订单已生成，请继续完成支付！</h2>
                <p><span>订单编号：${bianhao}</span> <span>支付金额：<b>￥${jine}</b></span></p>
            </div>
        </div>

        <div class="checkout row">
            <!--支付信息|支付Id: 240447 ;appId:3-->
            <!-- <div>显示渠道|渠道公司数目：1  </div> -->
            <p class="pay_tip_fallow">你需要支付：<b>￥${jine}元</b>，请选择：</p>



            <div class="pay_total col_13">
                <div>

                    支付 <b>￥${jine}</b>
                </div>
                <p>
                    <button class="col_3" type="button" onclick="zhifu()">支付</button>
                </p>
            </div>

        </div>
    </div>
</div>
<input type="hidden" id="bianhaoid" value="${bianhao}">
<input type="hidden" id="userid" value="${userid}">
<input type="hidden" id="shangpinid" value="${shangpinid}">
<input type="hidden" id="jine" value="${jine}">
<script>
    var _gaOrderInfo = {
        'shop' : te$.getCurrBrand(),
        'total': 864.00,
        'ship': 0.00000,
        'id' : 5585244
    }
    var _gaViewPoint1 = 'beforePay';
    te$.business.pay.initPayChannel();
</script>

<div class="copyright">
    <div class="copyright_inner" id="myFooter">
        <p class="copyright_links" id="myCopyrightLinks">
            <a href="#">隐私申明</a>
            <a href="#">联系我们</a>
        </p>
        <p class="copyright_links copyright_txt">Copyright @ 2010-<em id="copyrightYear"></em> 广州赫基信息科技有限公司版权所有  增值电信业务经营许可证 <a href="http://www.miibeian.gov.cn/" id="linkIcp" target="_blank">粤B2-20100553 粤ICP备10229258-<span id="icpNum">1</span>号</a></p>
    </div>
</div>
<script>
    te$.system.setMyHeadAndFooter();
    te$.system.hasLoad();
</script>
<script >
    function zhifu() {
        var zhi=$("#bianhaoid").val();
        var zhi1=$("#userid").val();
        var zhi2=$("#shangpinid").val();
        var zhi3=$("#jine").val();
        location.href="<%=request.getContextPath()%>/basicController/chenggongupdate.do?bianhao="+zhi+"&userid="+zhi1+"&shangpinid="+zhi2+"&jine="+zhi3;
    }
</script>
</body>
</html>
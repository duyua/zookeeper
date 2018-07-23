<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>确认订单</title>
    <!--{}-->

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
    var _gaSkuItem = [];
    var _mvq = _mvq || [];
    _mvq.push(['$setGeneral', 'checkout', '', /*uname*/ '', /*uid*/ '']);
</script>
<div class="cart_container">
    <div class="edge">
        <div class="order_info">
            <div class="checkout_step">
                <p class="step2">step 2 : 确认订单</p>
                <h3>订单确认</h3>
            </div>
        </div>
        <div class="checkout row">
            <div class="checkout_cart col_9 cell">
                <h2 class="col_8_7">确定收货地址<a href="">[地址管理]</a></h2>
                <div >
                    <div  class="address_item">
                        <h3>
                            <span>姓名：</span><b>${dizhi.get(0).receiver}</b>
                        </h3>
                        <p><span>电话：</span><b>${dizhi.get(0).mobile}</b></p>
                        <p><span>地址：</span><b>${dizhi.get(0).sheng}${dizhi.get(0).shi}${dizhi.get(0).address}<!-- ,  --></b></p>
                    </div>

                </div>



                <script>
                    te$.address.initPca('addressDetail', 'pcaSelect');
                </script>

                <h2 class="col_8_7">购买商品明细</h2>
                <div class="checkout_list">
                    <table class="col_6_5">
                        <tbody>

                        <script>
                            _gaSkuItem.push(['681SJ3230000A03', '天使之翼印花短袖T恤', '890.00', '1.0']);
                            //order check
                            _mvq.push(['$addCartGoods',/*sku*/ '681SJ3230000A03',/*p_name*/ '天使之翼印花短袖T恤', /*p_price*/ '890.00', /*p_number*/ '1.0']);
                        </script>

                        <tr>
                            <td class="col_5_1">
                                <a href="//www.misssixty.com.cn/p/681SJ3230000A03.shtml">
                                    <img src="//img1.ochirly.com.cn/wcsstore/TrendyCatalogAssetStore/images/trendy/m60/2018/a/681SJ3230000A03/681SJ3230000A03_s_5.jpg" style="width:80%;">
                                </a>
                            </td>
                            <td class="col_5_4">
                                <div class="checkout_item">
                                    <p class="p_link"><a href="//www.misssixty.com.cn/p/681SJ3230000A03.shtml" target="_blank">${list.get(0).basicname}</a></p>
                                    <p class="p_text">货号：${list.get(0).basicnumber}</p>
                                    <div class="checkout_item_detail">
                                        <dl class="checkout_item_detail_1 col_4_1 cell">
                                            <dt>颜色/尺码</dt>
                                            <dd>${list.get(0).basiccolor}/${list.get(0).basicsize}</dd>
                                        </dl>
                                        <dl class="checkout_item_detail_2 col_4_1 cell">
                                            <dt>

                                                售价

                                            </dt>
                                            <dd>

                                                ￥${list.get(0).basicprice}
                                            </dd>
                                        </dl>
                                        <dl class="checkout_item_detail_2 col_4_1 cell">
                                            <dt>数量</dt>
                                            <dd>${jianshu}</dd>
                                        </dl>
                                        <dl class="checkout_item_detail_3 col_4_1 cell">
                                            <dt>小计</dt>

                                            <dd>￥${jiage}</dd>

                                        </dl>
                                    </div>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>



            </div>

            <div class="checkout_total col_4 cell">
                <div class="order_sum">
                    <h3>订单汇总</h3>

                    <p><span>商品总额：</span><b>￥${jiage}</b></p>
                    <p><span>邮费：</span><b>￥20.00</b></p>

                    <p class="order_sum_coupon"><span>优惠金额：</span><span id="youhuispanid"></span></p>
                    <div class="coupon">

                        <ul class="coupon_select">
                            <li class="coupon_input">
									<span class="col_full cell" id="couponSelect">
										<input type="text" name="userCouponCode" id="userCouponCode" placeholder="输入优惠券" autocomplete="off" value="" />
									</span>
                                <!-- <a href="javascript:;" class="link_public_coupon" data-input-id="userCouponCode">使用</a> -->
                            </li>
                            <li class="coupon_input">
									<span class="col_9_5 cell">
										<input type="text" name="couponPassword" id="userCouponPassword" placeholder="输入优惠券密码" autocomplete="off" value="" />
									</span>
                                <button class="col_3_1" id="btnUseCoupon">使用优惠券</button>
                            </li>
                        </ul>

                    </div>
                    <p class="last"><span>实付金额：</span><span id="shifuspanid"></span></p>

                </div>

                <button class="btn_checkout" onclick="tijiaodingdan()">提交订单</button>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="shangpinid" value="${shangid}">
<input type="hidden" id="gouwucheid" value="${gouwuid}">
<input type="hidden" id="zonge" value="${jiage}">
<input type="hidden" id="jianshu" value="${jianshu}">
<input type="hidden" id="shouid" value="${dizhi.get(0).receiver}">
<script>
    var _gaOrderInfo = {
        'shop' : te$.getCurrBrand(),
        'total': 910.00,
        'ship': 20.00
    }
    te$.business.cart.initCheckout();
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
    var jine=$("#zonge").val();
    jine=parseFloat(jine);

    if(jine<1399){
        jine=jine+20;
        $("#shifuspanid").html("<b>"+jine+"</b>")
        $("#zonge").val(jine);
    }else{
        $("#youhuispanid").html("<b>-20</b>")
        $("#shifuspanid").html("<b>"+jine+"</b>")
        $("#zonge").val(jine);
    }
    function tijiaodingdan() {
        var shangpinid=$("#shangpinid").val();
        var gouwuid=$("#gouwucheid").val();
        var shouname=$("#shouid").val();
        var jine=$("#zonge").val();
         jine=parseFloat(jine);

        var jianshu=$("#jianshu").val();
        location.href="<%=request.getContextPath()%>/basicController/adddingdan.do?shangpinid="+shangpinid+"&gouwuid="+gouwuid+"&jine="+jine+"&jianshu="+jianshu+"&shouname="+shouname

    }
</script>
</body>
</html>
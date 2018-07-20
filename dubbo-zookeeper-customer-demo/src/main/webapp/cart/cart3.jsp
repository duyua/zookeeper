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
</head>
<body>
<script>
    te$.setMyStyle();
</script>

<div class="header">
    <h1 class="logo" id="myLogo"></h1>

    <div class="top_link_box">
        <!-- <a href="#" class="link_langu"><span>中国</span></a> -->
        <span id="paramLogin"><a href="" id="linkLogin">登录│注册</a></span>
        <a href="#" id="linkAccount">我的账户</a>
        <a href="javascript:;" class="link_Wishlist"  id="linkWishlist">我的收藏</a>
        <a href="#" class="link_bag" id="linkCart">购物袋(<span id="cartNum">0</span>)</a>
    </div>
    <div class="search2013" id="navSearch" style="display:none;">
        <input type="text" value="搜索您感兴趣的内容" id="navIntSearch">
        <button type="button">搜索</button>
    </div>
</div>
<script>
    var _mvq = _mvq || [];
    var _gaSkuItem = _gaSkuItem || [];
    _mvq.push(['$setGeneral', 'ordercreate', '', '', '']);
    _mvq.push(['$addOrder','50736098', '1890.00']);
</script>
<div class="cart_container">
    <div class="edge">
        <div class="checkout_step">
            <div class="pay_tip col_6">
                <h2>订单已生成，请继续完成支付！</h2>
                <p><span>订单编号：50736098</span> <span>支付金额：<b>￥1890.00</b></span></p>
            </div>
        </div>

        <div class="checkout row">
            <!--支付信息|支付Id: 240317 ;appId:3-->
            <!-- <div>显示渠道|渠道公司数目：1  </div> -->
            <p class="pay_tip_fallow">你需要支付：<b>￥1890.00元</b>，请选择：</p>
            <form action="PayRedirect.do" id="payForm">
                <input type="hidden" name="payId" value="240317" />
                <input type="hidden" name="channelId" value="" />
            </form>
            <div class="pay_choose col_13">
                <div class="pay_choose_content" id="payChannelChoose">
                    <ul class="tab order_list_tab" id="orderListTab" data-config="{'target':'payWayList', 'tab':'li', 'content':'div', 'activeTabClass':'active', 'activeContentClass':''}">
                        <li class="active col_4_1 cell"><span>网上银行支付</span></li>
                        <li class="col_4_1 cell"><span>网上支付平台</span></li>
                    </ul>
                    <div id="payWayList">

                        <div class="pay_bank_list">

                            <!--银行-->

                            <p>
                                <label for="raBank2">
                                    <input type="radio" name="payChannel" value="2" id="raBank2" />
                                    <img src="http://img2.misssixty.com.cn/rs/common/images/bank/bank_alipay.png" />
                                    <span>*</span>
                                </label>
                            </p>

                            <p>
                                <label for="raBank25">
                                    <input type="radio" name="payChannel" value="25" id="raBank25" />
                                    <img src="http://img2.misssixty.com.cn/rs/common/images/bank/bank_wecharscan.png" />
                                    <span>*</span>
                                </label>
                            </p>

                        </div>

                    </div>
                </div>
            </div>
            <script>
                te$.ui.switching.init('orderListTab');
            </script>
            <div class="pay_total col_13">
                <div>
                    <em>
                        使用
                        <span>
								<img id="imgPayChannel" src="" />
								<i>*</i>
							</span>
                    </em>
                    支付 <b>￥1890.00</b>
                </div>
                <p>
                    <button class="col_3" type="button" id="btnGotoPay">支付</button>
                </p>
            </div>

        </div>
    </div>
</div>
<script>
    var _gaOrderInfo = {
        'shop' : te$.getCurrBrand(),
        'total': 1890.00,
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
</body>
</html>
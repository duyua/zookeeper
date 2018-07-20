<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>我的账户</title>

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

<div class="my_container">
    <div class="my_content row">

        <div class="my_side_nav col_2 cell">
            <div class="my_aside">
                <div class="my_name">
                    <h3>17695400936</h3>
                    <div class="my_qrcode_frame">
                        <span class="my_qrcode" id="navQrcode">qrcode</span>
                        <div class="my_qrcode_img">
                            <img src="https://passport.misssixty.com.cn/qrcode/GenerateQRContent.do?width=150&height=150&content=https%3A%2F%2Fpassport.misssixty.com.cn%2Fpassport%2Foauth.do%3FsiteId%3Dweixin%26target%3Dhttp%3A%2F%2Fmy.misssixty.com.cn%2Fuser%2FHome.do%26appId%3D40">
                            <p>扫描二维码，<br />进入微信会员中心</p>
                        </div>
                    </div>
                    <p>普通会员</p>
                    <p><a href="#" id="linkSideMember">了解会员福利</a></p>
                </div>

                <dl>
                    <dt class="my_i_order">订单管理</dt>
                    <dd>
                        <!-- <p><a href="/order/list.do?type=0">待付款</a></p>
                        <p><a href="/order/list.do?type=1">已付款</a></p> -->
                        <p><a href="//my.misssixty.com.cn/order/list.do" id="linkSideOrderInfo">订单信息</a></p>
                        <p><a href="https://passport.misssixty.com.cn/order/orderList.do" id="linkSideShopOrderInfo">门店订单</a></p>
                        <!-- <p>售后处理</p> -->
                    </dd>

                    <dt class="my_i_interaction">交互中心</dt>
                    <dd>
                        <!-- <p><a href="/order/favorite.do">我的收藏*</a></p> -->
                        <p><a href="//act.misssixty.com.cn/applets/UserReviewInfoList.do" id="linkSideReviewInfo">我的评论</a></p>
                        <p><a href="//act.misssixty.com.cn/applets/UserMessageInfoList.do" id="linkSideMessageInfo">我的消息</a></p>
                    </dd>

                    <dt class="my_i_right">我的特权</dt>
                    <dd>
                        <!-- <p>我的专属活动</p> -->
                        <p><a href="https://passport.misssixty.com.cn/user/UserScoreList.do?changeScore=Positive" id="linkSideMyScore">我的积分</a></p><!--/user/UserScoreLogList.do-->
                        <p><a href="//my.misssixty.com.cn/order/ScoreExchange.do" id="linkSideScoreChange">积分兑换</a></p>
                        <p><a href="//my.misssixty.com.cn/coupon/list.do" id="linkSideCoupon">我的优惠券</a></p>
                    </dd>

                    <dt class="my_i_profile">我的账号</dt>
                    <dd>
                        <!-- <p><a href="//passport.misssixty.com.cn/user/UserProfileList.do">会员账户</a></p> -->
                        <p><a href="https://passport.misssixty.com.cn/user/UserInfoManage.do" id="linkSideMyInfo">个人信息</a></p>
                        <p><a href="https://passport.misssixty.com.cn/user/UserIposBinding.do" id="linkSideBindVip">绑定VIP</a></p>
                        <!-- <p><a href="//passport.misssixty.com.cn/user/UserGradeLogList.do">等级</a></p> -->
                        <p><a href="https://passport.misssixty.com.cn/user/UserAddressManage.do" id="linkSideAddressManage">地址管理</a></p>
                        <p><a href="https://passport.misssixty.com.cn/user/UserMobileBinding.do" id="linkSideChangeMobile">更换手机绑定</a></p>
                        <p><a href="https://passport.misssixty.com.cn/user/UserPasswordChange.do" id="linkSideChangePassword">修改密码</a></p>
                    </dd>

                    <dt class="my_i_faq">FAQ</dt>
                    <dd>
                        <p><a href="#" id="linkSideShoppingInfo">购物</a></p>
                        <p><a href="#" id="linkSidePayInfo">支付</a></p>
                        <p><a href="#" id="linkSideShipInfo">配送</a></p>
                        <p><a href="#" id="linkSideChangeInfo">退换货</a></p>
                    </dd>
                </dl>
            </div>
        </div>

        <div class="my_main col_12 cell">
            <div class="my_message_tip" id="myMessageTip">

            </div>

            <div class="my_score">
                <dl class="my_score_1 col_3_1 cell">
                    <dt>积分<a href="#" id="linkUserScoreRule">了解积分规则</a></dt>
                    <dd id="txUserScore">0</dd>
                </dl>
                <dl class="my_score_2 col_4_1 cell">
                    <dt>优惠券</dt>
                    <dd id="txUserCouponNum">0</dd>
                </dl>
                <div class="my_score_vip col_3_1 cell">
                    <p id="txUserVipLevel">vip会员：<a href="https://passport.misssixty.com.cn/user/UserIposBinding.do">立即绑定</a></p>
                    <div>
                        资料完善度：
                        <span class="progress_bar" id="txProgress">
								<span>&nbsp;</span>
								<b></b>
							</span>
                        <a href="https://passport.misssixty.com.cn/user/UserInfoManage.do">立即完善</a>
                    </div>
                </div>
            </div>

            <div class="my_item">
                <h3 class="my_title">我的订单<a href="//my.misssixty.com.cn/order/list.do">more</a></h3>
                <div class="loading" id="myHomeOrderList">
                    <div class="blank_tip blank_tip_short" id="myOrderListBlank">
                        <p><b class="blank_tip_no">no</b>没有订单，<a href="//www.misssixty.com.cn">快去挑选心仪的衣服吧~</a></p>
                    </div>
                    <div class="my_item_content col_12_11" id="myOrderItem">

                    </div>
                </div>
                <script>
                    $('#myOrderListBlank, #myOrderItem').hide();
                </script>
            </div>

            <div class="my_item">
                <h3 class="my_title">新款推荐</h3>
                <div class="my_item_content col_12_11 loading" id="newInList"></div>
            </div>
        </div>
    </div>
</div>

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
<script>
    te$.business.login.getUserScore();
</script>
</body>
</html>

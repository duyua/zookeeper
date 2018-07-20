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

<form action="/order/confirm.do" method="get" name="checkoutModify" id="checkoutModify">
    <input type="hidden" name="orderItemStr" id="orderItemStrModify" value="630497,1" />
    <input type="hidden" name="couponCodeStr" id="couponCodeStrModify" value="" />
    <input type="hidden" name="userComment" id="userCommentModify" value="" />
    <input type="hidden" name="addressId" id="addressId" value="0" />
    <input type="hidden" name="country" id="countryModify" value="" />
    <input type="hidden" name="province" id="provinceModify" value="" />
    <input type="hidden" name="city" id="cityModify" value="" />
</form>
<form action="/order/buy.do" method="post" name="orderInfo" id="orderInfo">
    <input type="hidden" name="country" id="country" value="" />
    <input type="hidden" name="province" id="province" value="" />
    <input type="hidden" name="city" id="city" value="" />
    <input type="hidden" name="region" id="region" value="" />
    <input type="hidden" name="address" id="address" value="" />
    <input type="hidden" name="mobile" id="mobile" value="" />
    <input type="hidden" name="zipCode" id="zipCode" value="" />
    <input type="hidden" name="receiverName" id="receiverName" value="" />
    <input type="hidden" name="orderItemStr" id="orderItemStr" value="630497,1" />
    <input type="hidden" name="couponCodeStr" id="couponCodeStr" value="" />
    <input type="hidden" name="userComment" id="userComment" value="" />
    <input type="hidden" name="CSRFToken" id="csrfToken" value="8345c317-7a6f-4bfa-b897-923f4fc79bc5"/>
    <input type="hidden" name="tradeSource" id="tradeSource" value="web"/>
    <input type="hidden" name="outerOrderId" id="outerOrderId" value=""/>
    <input type="hidden" name="giveawayIdStr" id="giveawayIdStr" value=""/>
</form>
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
                <h2 class="col_8_7">确定收货地址<a href="https://passport.misssixty.com.cn/user/UserAddressManage.do">[地址管理]</a></h2>
                <div class="checkout_address col_3_2">


                    <!-- <div class="clear"><button class="col_6_1">添加新地址</button></div> -->
                </div>

                <div class="address_add" id="addressEditForm">
                    <input type="hidden" name="userId" id="userId" value="34651175"/>
                    <input type="hidden" name="addressId" id="addressId" value=""/>
                    <input type="hidden" name="csrfToken" id="addressCsrfToken" value="8345c317-7a6f-4bfa-b897-923f4fc79bc5"/>
                    <div>
                        <p>
                            <label for="userName" class="col_8_1 cell">姓名：</label>
                            <span class="col_8_5 cell">
									<input type="text" id="userName" name="receiver" autocomplete="off" data-verify="name" />
								</span>
                            <i class="col_4_1 cell"><b>*</b></i>
                        </p>
                        <p>
                            <label for="userPhone" class="col_8_1 cell">电话：</label>
                            <span class="col_8_5 cell">
									<input type="text" name="mobile" id="userPhone" autocomplete="off" data-verify="mobile" />
								</span>
                            <i class="col_4_1 cell"><b>*</b></i>
                        </p>
                        <div class="address_add_pca">
                            <em class="col_8_1 cell">城市：</em>
                            <div class="col_8_5 cell">
                                <input type="hidden" name="province" id="newAddProvince" autocomplete="off" data-verify="city"  />
                                <input type="hidden" name="city" id="newAddCity" autocomplete="off" data-verify="city" />
                                <input type="hidden" name="region" id="newAddRegion" autocomplete="off" data-verify="city" />
                                <div class="address_detail" id="addressDetail">
                                    <p class="col_4_1 cell">
											<span class="col_12_11 cell">
												<input type="text" name="country" placeholder="国家/地区" value="中国" autocomplete="off" readonly />
											</span>
                                    </p>
                                    <p class="col_4_3 cell">
											<span class="col_full cell">
												<input type="text" name="location" id="newAddLocation" placeholder="省/直辖市 - 市 - 区县" autocomplete="off" data-verify="pca" readonly  />
											</span>
                                    </p>
                                </div>
                                <dl class="pca_select" id="pcaSelect">
                                    <dt>
                                        <!-- <span>国家/地区</span> -->
                                        <b class="selected col_3_1 cell" data-content="pcaSelectProvince">省/直辖市</b>
                                        <b class="col_3_1 cell" data-content="pcaSelectCity">市</b>
                                        <b class="col_3_1 cell" data-content="pcaSelectRegion">区/县</b>
                                    </dt>
                                    <dd>
                                        <div id="pcaSelectProvince"></div>
                                        <div id="pcaSelectCity"></div>
                                        <div id="pcaSelectRegion"></div>
                                        <p><button type="button" class="col_6_1">关闭</button></p>
                                    </dd>
                                </dl>
                            </div>
                            <i class="col_4_1 cell"><b>*</b></i>
                        </div>
                        <p class="clear">
                            <label class="col_8_1 cell">地址：</label>
                            <span class="col_8_5 cell">
									<input type="text" name="address" autocomplete="off" data-verify="address" value="">
								</span>
                            <i class="col_4_1 cell"><b>*</b></i>
                        </p>
                        <p>
                            <em class="col_8_1 cell">&nbsp;</em>
                            <span class="col_8_5 cell no_border">
									<label for="isDefault">设置默认地址</label>
									<input type="checkbox" class="ip_checkbox" id="isDefault" name="isDefault"  autocomplete="off" />
									<span style="display:none;">
										<label for="status">设置可用</label>
										<input type="checkbox" class="ip_checkbox" id="status" name="status" autocomplete="off" readonly="true" checked/>
									</span>
								</span>
                        </p>
                        <p>
                            <em class="col_8_1 cell">&nbsp;</em>
                            <button type="submit" class="col_8_1" id="btnAddressEdit">添加</button>
                            <button type="button" class="col_8_1" id="btnCancelEdit" style="display:none;">取消修改</button>
                        </p>
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
                                    <p class="p_link"><a href="//www.misssixty.com.cn/p/681SJ3230000A03.shtml" target="_blank">天使之翼印花短袖T恤</a></p>
                                    <p class="p_text">货号：681SJ3230000A03</p>
                                    <div class="checkout_item_detail">
                                        <dl class="checkout_item_detail_1 col_4_1 cell">
                                            <dt>颜色/尺码</dt>
                                            <dd>漂白/M</dd>
                                        </dl>
                                        <dl class="checkout_item_detail_2 col_4_1 cell">
                                            <dt>

                                                售价

                                            </dt>
                                            <dd>

                                                ￥890.00
                                            </dd>
                                        </dl>
                                        <dl class="checkout_item_detail_2 col_4_1 cell">
                                            <dt>数量</dt>
                                            <dd>1</dd>
                                        </dl>
                                        <dl class="checkout_item_detail_3 col_4_1 cell">
                                            <dt>小计</dt>

                                            <dd>￥910.00</dd>

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

                    <p><span>商品总额：</span><b>￥890.00</b></p>
                    <p><span>邮费：</span><b>￥20.00</b></p>

                    <p class="order_sum_coupon"><span>优惠金额：</span><b>0</b></p>
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
                    <p class="last"><span>实付金额：</span><b>￥910.00</b></p>

                </div>
                <div class="order_message_frame">
                    <div class="order_message">
                        <div>
                            <textarea id="userMessage" placeholder="订单备注"></textarea>
                        </div>
                    </div>
                </div>
                <button class="btn_checkout" id="btnCheckout" data-type="1">提交订单</button>
            </div>
        </div>
    </div>
</div>
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

<script>

</script>
</body>
</html>	
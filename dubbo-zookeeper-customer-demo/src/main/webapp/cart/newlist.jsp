<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>我的购物袋</title>

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
        <a href="" id="linkAccount">我的账户</a>
        <a href="javascript:;" class="link_Wishlist"  id="linkWishlist">我的收藏</a>
        <a href="" class="link_bag" id="linkCart">购物袋(<span id="cartNum">0</span>)</a>
    </div>
    <div class="search2013" id="navSearch" style="display:none;">
        <input type="text" value="搜索您感兴趣的内容" id="navIntSearch">
        <button type="button">搜索</button>
    </div>
</div>


<div class="cart_container">
    <div class="edge">

        <div class="checkout_step">
            <p class="step1">step 1 : 查看购物袋</p>
            <h3>购物袋</h3>
        </div>

        <div class="cart">
            <div class="cart_tip">优惠：单笔消费，满699元免邮</div>
            <div class="cart_content col_13">
                <script>
                    var _mvq = _mvq || [];
                    _mvq.push(['$setGeneral', 'cartview', '', '', '']);
                    te$.business.cart.cartData = {};
                    te$.business.cart.cartData.storeId = '23';
                </script>
                <table id="myBag" class="cart_table">
                    <thead>
                    <tr>
                        <th>&nbsp;</th>
                        <th class="col_12_1">&nbsp;</th>
                        <th class="col_4_1 align_left">商品名称</th>
                        <th class="col_12_1">颜色/尺码</th>
                        <th class="col_6_1">单价</th>
                        <th class="col_6_1">数量</th>
                        <th class="col_6_1">小计</th>
                    </tr>
                    </thead>

                    <tbody>

                    <!--itemId,sku,listPrice,orderPrice,quantity-->
                    <script>
                        _mvq.push(['$addItem', '', '681SJ3230000A03', '','']);
                        te$.business.cart.cartData['630497'] = {
                            'sku' : '681SJ3230000A03',
                            'commodityId' : '68189',
                            'listPrice' : 890.0,
                            'price' : 890.0,
                            'quantity' : 1,
                            'cartId' : '7e52df0a7d7143549571435b8d263d66',
                            'itemId' : '630497'
                        }
                    </script>
                    <c:forEach items="${car}" var="cc">
                        <tr id="item630497" data-param="630497,681SJ3230000A03,890.0,890.0,1,7e52df0a7d7143549571435b8d263d66">
                            <td>
                                <input type="checkbox" id="selectItem630497" value="${cc.basicprice}" class="ck_select_item" checked  />
                            </td>
                            <td>
                                <a href="//www.misssixty.com.cn/p/681SJ3230000A03.shtml" target="_blank">
                                    <img src="//img1.ochirly.com.cn/wcsstore/TrendyCatalogAssetStore/images/trendy/m60/2018/a/681SJ3230000A03/681SJ3230000A03_s_5.jpg">
                                </a>
                            </td>
                            <td>
                                <div class="align_left" id="proName630497">
                                    <p>MISS SIXTY</p>
                                    <p><a href="//www.misssixty.com.cn/p/681SJ3230000A03.shtml" target="_blank">${cc.basicname}</a></p>
                                    <p>货号：${cc.basicnumber}</p>
                                </div>
                            </td>
                            <td >
                               ${cc.basiccolor}/${cc.basicsize}
                            </td>
                            <td>
                                <span id="displayPrice630497">${cc.basicprice}</span>
                            </td>
                            <td>
                                <div class="qty_num_edit">
                                    <em class="btn_num_cut" data-item-id="630497" data-product-id="137759" data-cart-id="7e52df0a7d7143549571435b8d263d66" onclick="suanfaj()">-</em>
                                    <input type="text" readonly value="${cc.basiccount}" defaultvalue="1"  id="qty630497" class="tx_edit" autocomplete="off"/>
                                    <em class="btn_num_plus" data-item-id="630497" data-product-id="137759" data-cart-id="7e52df0a7d7143549571435b8d263d66" onclick="suanfa()">+</em>
                                </div>
                                <a href="javascript:;" class="link_add_fav" data-action-param="137759">收藏</a>&nbsp;/&nbsp;<a href="<%=request.getContextPath()%>/basicController/deleteList.do?id=${cc.cartid}" class="link_del_cart_item" data-action-param="630497">删除</a>
                            </td>
                            <td>
                                <span class="price" id="spPrice630497"></span>
                            </td>
                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
            </div>
        </div>


        <div class="page_num">
            <div class="page_num_line">

                <span>1</span>

            </div>
        </div>


        <div class="order_total">
            <div class="order_total_action">
                <p>
                    <label for="ckSelectAll"><input type="checkbox" id="ckSelectAll" checked autocomplete="off" />全选</label>
                    <a href="javascript:;" id="btnDeleteSelected">删除已选</a>
                    <a href="javascript:;" id="btnFavoriteSelected">收藏已选</a>
                </p>
            </div>
            <div class="order_total_sum">
                <p>
                    已选：<span id="cartItemCount"></span>件<br />
                    总计金额（不含运费）：￥<span id="cartTotalPrice"></span>
                </p>
                <a href=""> <button class="btn_my" type="button" >马上结算</button></a>
            </div>
        </div>
        <script>
            te$.business.cart.initCart();
        </script>

        <div onmouseover="javascript:_setRechooseHide();" id="rechooseSize" class="rechoose_size">
            <div id="rechooseSizeList"></div>
            <input type="hidden" id="rechooseQty" name="rechooseQty" value="1">
        </div>

        <div class="rechoose">
            <h3>选择颜色及尺码</h3>
            <div class="rechoose_area" id="rechoose">
                <!--<div class="rechoose_item">
                    <P><img src="_s_1.jpg" /></P>
                    <div>
                        <a>XS</a>
                        <a>S</a>
                        <a>M</a>
                        <a>L</a>
                        <a>XL</a>
                    </div>
                </div>-->
            </div>
            <div class="rechoose_btn">
                <button id="btnRechooseYes">确定</button>
                <button id="btnRechooseNo">取消</button>
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
        <p class="copyright_links copyright_txt">Copyright @ 2010-<em id="copyrightYear"></em> 广州赫基信息科技有限公司版权所有  增值电信业务经营许可证 <a href="" id="linkIcp" target="_blank">粤B2-20100553 粤ICP备10229258-<span id="icpNum">1</span>号</a></p>
    </div>
</div>
<script>
    te$.system.setMyHeadAndFooter();
    te$.system.hasLoad();
</script>
<script >
    var r=$("#qty630497").val();
    $("#cartItemCount").text(r);
    var zhi=$("#displayPrice630497").text();
    $("#spPrice630497").html("￥"+zhi)
    $("#cartTotalPrice").html("￥"+zhi)



    function suanfa(id) {

        var zhi=$("#displayPrice630497").text();
        var z=$("#qty630497").val();
          var s=parseInt(z)+1;
          var zz=parseInt(zhi);
          var zong=zhi*s;
        $("#cartItemCount").text(s);

        $("#spPrice630497").html("￥"+zong)
        $("#cartTotalPrice").html("￥"+zong)
    }
    function suanfaj(id) {
        var zhi=$("#displayPrice630497").text();
        var z=$("#qty630497").val();

        var s=parseInt(z);
        var zz=parseInt(zhi);
        if(z==1){
            var zong=zhi*s;
            $("#cartItemCount").text(s);

            $("#spPrice630497").html("￥"+zong)
            $("#cartTotalPrice").html("￥"+zong)
        }else{
              var shu=s-1;
            $("#cartItemCount").text(shu);
            var zong=zhi*shu;

            $("#spPrice630497").html("￥"+zong)
            $("#cartTotalPrice").html("￥"+zong)
        }

    }
    function jiesuan() {


    }
</script>
</body>
</html>

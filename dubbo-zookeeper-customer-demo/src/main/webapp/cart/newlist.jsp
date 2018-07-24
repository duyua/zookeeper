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

    <link rel="stylesheet" href="http://img2.misssixty.com.cn/rs/misssixty/v1/www/css/m60_base.css" />

    <script src="http://img2.misssixty.com.cn/rs/lib/js/jquery.js"></script>
    <script src="http://img2.misssixty.com.cn/rs/misssixty/v1/www/js/m60_www_global.min.js"></script>
</head>
<body>
<jsp:include page="../incolud.jsp"></jsp:include>

<div class="cart_container">
    <div class="edge">

        <div class="checkout_step">
            <p class="step1">step 1 : 查看购物袋</p>
            <h3>购物袋</h3>
        </div>

        <div class="cart">
            <div class="cart_tip">优惠：全场消费，满1399元免邮</div>
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
                                <input type="checkbox" id="selectItem630497" value="${cc.basicprice}" class="ck_select_item" checked />
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
                                <span id="shou">
                                <a href="javascript:shoucang('${cc.cartbasicid}')" class="link_add_fav" data-action-param="137759">收藏</a>&nbsp;/&nbsp;</span><a href="<%=request.getContextPath()%>/basicController/deleteList.do?id=${cc.cartid}" class="link_del_cart_item" data-action-param="630497">删除</a>
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

        <div class="order_total">

            <div class="order_total_sum">
                <p>
                    已选：<span id="cartItemCount"></span>件<br />
                    总计金额（不含运费）：￥<span id="cartTotalPrice"></span>
                </p>
             <button class="btn_my" type="button" onclick="jiesuan()" >马上结算</button>
            </div>
        </div>

    </div>
</div>

<div class="copyright">
    <div class="copyright_inner" id="myFooter">
        <p class="copyright_links" id="myCopyrightLinks">
            <a href="">隐私申明</a>
            <a href="">联系我们</a>
        </p>
        <p class="copyright_links copyright_txt">Copyright @ 2010-<em id="copyrightYear"></em> 广州赫基信息科技有限公司版权所有  增值电信业务经营许可证 <a href="" id="linkIcp" target="_blank">粤B2-20100553 粤ICP备10229258-<span id="icpNum">1</span>号</a></p>
    </div>
</div>
<input type="hidden" id="zongjia"/>
<input type="hidden" id="zongjian"/>
<input type="hidden" id="shangpinid" value="${car.get(0).cartbasicid}"/>
<<input type="hidden" id="dingdanid" value="${car.get(0).cartid}">
<script>
    te$.system.setMyHeadAndFooter();
    te$.system.hasLoad();
</script>
<script >
    var r=$("#qty630497").val();

        $("#cartItemCount").text(r);

    $("#zongjian").val(r);
    var zhi=$("#displayPrice630497").text();
    var zz=parseInt(zhi);
    var zz=parseInt(r);
    var w=(zhi*r);
    $("#spPrice630497").html("￥"+w)

        $("#cartTotalPrice").html("￥"+w)


    $("#zongjia").val(w);


    function suanfa() {

        var zhi=$("#displayPrice630497").text();
           var ss=parseFloat(zhi)
        var z=$("#qty630497").val();
          var s=parseInt(z);
          var sss=s+1;
        $("#qty630497").val(sss);

        $("#cartItemCount").text(sss);

        var zong=ss*sss;
        $("#zongjian").val(s);
        $("#spPrice630497").html("￥"+zong)

        $("#zongjia").val(zong);

            $("#cartTotalPrice").html("￥"+zong)



    }
    function suanfaj() {
        var zhi=$("#displayPrice630497").text();
        var z=$("#qty630497").val();

        var s=parseInt(z);
        var ss=parseFloat(zhi)
        if(z<=1){
            var zong=ss*s-1;

                $("#cartItemCount").text(s);
                $("#cartTotalPrice").html("￥"+zong)





            $("#zongjian").val(1);
            $("#qty630497").val(1);
            $("#spPrice630497").html("￥"+zong)

            $("#zongjia").val(zong);
        }else{
              var shu=s-1;

                $("#cartItemCount").text(shu);






            $("#zongjian").val(shu);
            $("#qty630497").val(shu);
            var zon=ss*shu;


                $("#cartTotalPrice").html("￥"+zon)


            $("#spPrice630497").html("￥"+zon)

            $("#zongjia").val(zon);
        }

    }
    function jiesuan() {
       var jiage=$("#zongjia").val();
       var jian=$("#zongjian").val();
       var shangid=$("#shangpinid").val();
       var dingid=$("#dingdanid").val();
       location.href="<%=request.getContextPath()%>/basicController/jiesuan.do?jiage="+jiage+"&jianshu="+jian+"&shangid="+shangid+"&dingid="+dingid;
    }
    function shoucang(id) {
        $.ajax({
            url:"<%=request.getContextPath()%>/basicController/shoucang.do",
            type:"post",
            data:{id:id},
            success:function(str){
              if(str==1){
                  $("#shou").hide();
              }
            },
            error:function(){
                $.messager.alert('警告','系统错误！');
            }
        });
    }
</script>
</body>
</html>

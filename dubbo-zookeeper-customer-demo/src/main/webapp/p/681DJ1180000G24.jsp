<%--
  Created by IntelliJ IDEA.
  User: 李若男
  Date: 2018/7/12
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>透视真丝长袖连衣裙 - Miss Sixty 中国官网</title>

    <meta name="description" content="透视真丝长袖连衣裙,681DJ1180000G24,欢迎访问MissSixty官方中文网站。源自意大利的女性牛仔品牌，始于1991，一直为性感时尚的女性带来极具个性与创造力的牛仔设计。点击访问，轻松享受便捷的购物体验及获取最新牛仔潮流资讯。" />
    <meta name="keywords" content="MISS SIXTY | 意大利女性时尚牛仔品牌,透视真丝长袖连衣裙,miss sixty官网,miss sixty,misssixty,miss sixty官方购物网,Miss Sixty中文官网,Miss Sixty中国,Miss Sixty亚洲,Miss Sixty购物,Miss Sixty正品,潮流牛仔,M60,丹宁,女性牛仔,品牌女装,服装商城,意大利女装,意大利牛仔" />

    <link rel="stylesheet" href="http://img2.misssixty.com.cn/rs/misssixty/v1/www/css/m60_base.css" />

    <script src="http://img2.misssixty.com.cn/rs/lib/js/jquery.js"></script>
    <script src="http://img2.misssixty.com.cn/rs/misssixty/v1/www/js/m60_www_global.min.js"></script>
    <script src="http://img2.misssixty.com.cn/rs/lib/js/jquery.jqzoom.js"></script>
    <link rel="stylesheet" href="http://img2.misssixty.com.cn/rs/common/v1/web/css/jqzoom.css" />

    <script>
        var	proInfo = {
            storeId : '23',
            cId : '137465',
            ecsId : '#1242#1258#1271#1305#1449#1909#5171#1239#1246#',
            buyAble : 1, //1,
            sku : '681DJ1180000G24',
            proName : '透视真丝长袖连衣裙',
            brandInfo : 'misssixty',
            yearInfo : '', //准备去掉
            seasonInfo : '', //准备去掉
            inventoryTag : '正常', //准备去掉
            imgUrl : '', //准备去掉
            formatProName : '', //准备去掉
            price : 1495,
            listPrice : 2990,
            sizeItems : {},
            outOfStock : 0,
            payMode : '1', //2:积分PNT，1:正常
            salesMode : '1', //1正常，2预售
            productMode : '1' //1一般，2邮费，3赠品，4虚拟
        };

        proInfo.sizeItems['01'] = {};
        proInfo.sizeItems['01'].catEntryId = '629015';
        proInfo.sizeItems['01'].quantity = '4';
        proInfo.sizeItems['01'].sizeName = 'XS';
        proInfo.outOfStock += 4;
        proInfo.sizeItems['02'] = {};
        proInfo.sizeItems['02'].catEntryId = '629016';
        proInfo.sizeItems['02'].quantity = '1';
        proInfo.sizeItems['02'].sizeName = 'S';
        proInfo.outOfStock += 1;
        proInfo.sizeItems['03'] = {};
        proInfo.sizeItems['03'].catEntryId = '629017';
        proInfo.sizeItems['03'].quantity = '0';
        proInfo.sizeItems['03'].sizeName = 'M';
        proInfo.outOfStock += 0;
        proInfo.sizeItems['04'] = {};
        proInfo.sizeItems['04'].catEntryId = '629018';
        proInfo.sizeItems['04'].quantity = '0';
        proInfo.sizeItems['04'].sizeName = 'L';
        proInfo.outOfStock += 0;

        proInfo.sizeItems.loyaltyPoint = 0;
        proInfo.sizeItems.listprice = proInfo.listPrice;
        proInfo.sizeItems.offerPrice = proInfo.price;
        proInfo.sizeItems.isPointProduct = false;
        proInfo.sizeItems.exchangePoint = 0;
        proInfo.sizeItems.outOfStock = proInfo.outOfStock > 0 ? false : true;

        te$.business.stock.sku = proInfo.sku;
        te$.business.stock.cid = proInfo.cId;
        te$.cookie('proSize', null);
        te$.cookie('cid', null);

        proInfo.imgUrl = 'http://img1.ochirly.com.cn/wcsstore/TrendyCatalogAssetStore/images/trendy/misssixty/2018/a/681DJ1180000G24/681DJ1180000G24_s_2.jpg';

        proInfo.formatProName = 'MISS SIXTY';
        te$.system.footmark.trace();
    </script>
</head>
<body>
<p id="tip520" class="top_tip">全场1399包邮<span onclick="this.parentNode.style.display = 'none';">x</span></p>
<div class="header">
    <div class="top_link_box">
        <div class="header_content">
            <div class="header_count">
                <span id="paramLogin"><em id="emUserName"></em><a id="linkLogin" href="#"></a><em>|</em><a href="#" id="linkReg">注册</a></span>
                <a id="linkAccount" href="#" title="我的账户">我的账户</a><em>|</em>
                <a id="linkWishlist" class="link_Wishlist" href="#" title="我的收藏">我的收藏</a><em>|</em>
                <a id="linkCart" class="link_bag" href="#" title="购物袋"><span id="cartNum">0</span></a><em>|</em>
                <a href="javascript:;" class="linkServiceOnlineTop">在线客服</a>
                <p id="navSearch" class="search2013">
                    <input type="text" id="navIntSearch" value="搜索您感兴趣的内容">
                    <button type="button">搜索</button>
                </p>
            </div>
        </div>
    </div>
    <div class="header_content">
        <h1 id="logoOch" class="logo ochirly_logo">
            <a href="http://www.misssixty.com.cn/">MISS SIXTY</a>
        </h1>
    </div>
</div>
<script>
    var m60SetSubMenu = function(str, target) {
        var items;
        var outHtml = '<h5>最抢手单品推荐</h5>';
        var tmp = '<p><a href="http://www.misssixty.com.cn/p/{sku}.jsp" target="_blank"><img src="{url}" />{title}</a></p>'
        if (!str) {
            return false;
        }

        items = str.split('|');
        if (items.length > 1) {
            for (var i = 0; i < items.length; i++) {
                outHtml += te$.subStitute(tmp, {
                    sku: items[i].substr(0, 15).toUpperCase(),
                    title: items[i].substr(16),
                    url: te$.skuToImgUrl(items[i].substr(0, 15).toUpperCase(), 'n', 5)
                });
            }
        }

        if (target && t$(target)) {
            t$(target).innerHTML = outHtml;
        }
    }
</script>

<div id="nav2013" class="nav2013">
    <div class="nav2013_ul_box">
        <ul>
            <li class="first"><a href="/heji/missSixty.jsp" id="homeLink" >首页</a></li>

            <li>
                <a href="/Whats_New/list.jsp">最新上架</a>
            </li>
            <li>
                <a href="/Denim/list.jsp">牛仔风尚</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Denim/Jeans/list.jsp">牛仔裤</a>
                            <br />
                            <a href="/Denim/Dresses/list.jsp">连衣裙</a>
                            <br />
                            <a href="/Denim/Shirts/list.jsp">衬衫</a>
                            <br />
                            <a href="/Denim/Jackets/list.jsp">外套</a>
                            <br />
                            <a href="/Denim/Skirts/list.jsp">半截裙</a>
                            <br />
                            <a href="/Denim/Culottes/list.jsp">裙裤</a>
                            <br />
                            <a href="/Denim/Shorts/list.jsp">短裤</a>
                            <br />
                            <a href="/Denim/Jumpsuits/list.jsp">连体裤</a>
                        </div>
                        <div class="sub_menu_imgs" id="subMenuImgsDenim"></div>
                        <script>
                            m60SetSubMenu('682JJ1940000A06-蕾丝绣花紧身裤铅笔裤长裤|682JJ1850000F25-纯棉中腰钉珠破洞直筒裤九分裤|682JJ2080000F25-中腰绣花紧身牛仔长裤|682JJ0670000F25-棉质中腰开衩喇叭裤九分裤子', 'subMenuImgsDenim');
                        </script>
                    </div>
                </div>
            </li>
            <li>
                <a href="/Closes/list.jsp">服装</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Closes/suit/list.jsp">套装</a>
                            <br />
                            <a href="/Closes/Sweater/list.jsp">卫衣</a>
                            <br />
                            <a href="/Closes/Jeans/list.jsp">牛仔裤</a>
                            <br />
                            <a href="/Closes/Dresses/list.jsp">连衣裙</a>
                            <br />
                            <a href="/Closes/Shirts/list.jsp">衬衫</a>
                            <br />
                            <a href="/Closes/T_shirts/list.jsp">T恤</a>
                            <br />
                            <a href="/Closes/Pullovers/list.jsp">毛织</a>
                            <br />
                            <a href="/Closes/Jackets/list.jsp">外套</a>
                        </div>
                        <div class="sub_menu_items">
                            <a href="/Closes/Skirts/list.jsp">半截裙</a>
                            <br />
                            <a href="/Closes/Culottes/list.jsp">裙裤</a>
                            <br />
                            <a href="/Closes/Shorts/list.jsp">短裤</a>
                            <br />
                            <a href="/Closes/Trousers/list.jsp">中/长裤</a>
                            <br />
                            <a href="/Closes/Jumpsuits/list.jsp">连体裤</a>
                            <br />
                        </div>
                        <div class="sub_menu_imgs" id="subMenuImgsCloses"></div>
                        <script>
                            m60SetSubMenu('682SJ1230000A03-纯棉字母印花短袖T恤|682RJ2060000A28-纯棉镂空针织半身长裙|682DJ0570000T36-条纹无袖牛仔连衣裙|682JJ2390000F25-低腰破洞毛边牛仔短裤|682JJ1100000C27-纯棉低腰毛边牛仔短裤', 'subMenuImgsCloses');
                        </script>
                    </div>
                </div>
            </li>
            <li>
                <a href="/Angel_Collection/list.jsp">天使系列</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Angel_Collection/2018FW/list.jsp">2018FW</a>
                            <br />
                            <a href="/Angel_Collection/2018SS/list.jsp">2018SS</a>
                            <br />
                        </div>
                        <div class="sub_menu_imgs" id="subMenuImgsAngel_Collection"></div>
                        <script>
                            m60SetSubMenu('681SJ3230000A03-天使之翼印花短袖T恤|682WJ2480000F25-天使之翼绣花牛仔外套|682DJ2470000F25-天使之翼绣花连衣裙|682JJ0870000F25-天使之翼印花牛仔短裤|682JJ0900000F25-天使之翼九分牛仔裤', 'subMenuImgsAngel_Collection');
                        </script>
                    </div>
                </div>
            </li>
            <li>
                <a href="/Crossover/list.jsp">跨界合作系列</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Crossover/Disney/list.jsp">迪士尼系列</a>
                            <br />
                            <a href="/Crossover/Stylist/list.jsp">造型师系列</a>
                            <br />
                        </div>
                        <div class="sub_menu_imgs" id="subMenuImgsCrossover"></div>
                        <script>
                            m60SetSubMenu('682SJ3180000A03-纯棉米奇印花短袖T恤|682SJ3170000G24-纯棉印花宽松短袖T恤|682DJ3280000F25-牛仔短袖连衣裙|682KJ3430000F44-百褶网纱高腰半身长裙|682JJ4450000G24-纯棉高腰绣花牛仔短裤', 'subMenuImgsCrossover');
                        </script>
                    </div>
                </div>
            </li>
            <li>
                <a href="/Young_Line/list.jsp">年轻线系列</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Young_Line/2018AU/list.jsp">2018年秋季</a>
                            <br />
                            <a href="/Young_Line/2018SU/list.jsp">2018年夏季</a>
                            <br />
                            <a href="/Young_Line/2018SP/list.jsp">2018年春季</a>
                            <br />
                        </div>
                        <div class="sub_menu_imgs" id="subMenuImgsYoung_Line"></div>
                        <script>
                            m60SetSubMenu('682JJ3950000F25-牛仔连体短裤背带裤|682PJ2980000Z05-印花真丝吊带连体短裤|682JJ3690000F25-棉质紧身九分牛仔裤|682SJ2840000D08-字母印花系带短袖T恤|682DJ3820000F25-斜排扣无袖牛仔连衣裙', 'subMenuImgsYoung_Line');
                        </script>
                    </div>
                </div>
            </li>
            <li>
                <a href="/summer_sale/list.jsp" style="color:#ff0000;font-weight:bold;">2018春夏大减价</a>
            </li>

            <li>
                <a href="/a/w/b/list.jsp">时尚博客</a>
            </li>

            <li>
                <a href="/a/article/w/f/misssixty_member.jsp">会员权益</a>
            </li>

        </ul>
    </div>
</div>
<script>
    te$.topCatalog();
</script>
<!--1-->
<div id="proFrame">
    <div class="product_content">
        <div class="access">

            <div class="detail_box">
                <div class="detail_center">
                    <!--单品图-->
                    <div class="pro_img">
                        <div id="productImgTab" class="pro_smallpic_box">

                            <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif" data-sku="681DJ1180000G24,s,1" onclick="te$.ui.zoom.setSrc('681DJ1180000G24','1', 's')" alt="透视真丝长袖连衣裙"  class="active"  /><!-- http://img1.ochirly.com.cn/wcsstore/TrendyCatalogAssetStore/images/trendy/misssixty/2018/a/681DJ1180000G24/681DJ1180000G24_s_1.jpg -->

                            <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif" data-sku="681DJ1180000G24,s,2" onclick="te$.ui.zoom.setSrc('681DJ1180000G24','2', 's')" alt="透视真丝长袖连衣裙"  /><!-- http://img1.ochirly.com.cn/wcsstore/TrendyCatalogAssetStore/images/trendy/misssixty/2018/a/681DJ1180000G24/681DJ1180000G24_s_2.jpg -->

                            <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif" data-sku="681DJ1180000G24,s,3" onclick="te$.ui.zoom.setSrc('681DJ1180000G24','3', 's')" alt="透视真丝长袖连衣裙"  /><!-- http://img1.ochirly.com.cn/wcsstore/TrendyCatalogAssetStore/images/trendy/misssixty/2018/a/681DJ1180000G24/681DJ1180000G24_s_3.jpg -->

                            <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif" data-sku="681DJ1180000G24,s,4" onclick="te$.ui.zoom.setSrc('681DJ1180000G24','4', 's')" alt="透视真丝长袖连衣裙"  /><!-- http://img1.ochirly.com.cn/wcsstore/TrendyCatalogAssetStore/images/trendy/misssixty/2018/a/681DJ1180000G24/681DJ1180000G24_s_4.jpg -->

                            <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif" data-sku="681DJ1180000G24,s,5" onclick="te$.ui.zoom.setSrc('681DJ1180000G24','5', 's')" alt="透视真丝长袖连衣裙"  /><!-- http://img1.ochirly.com.cn/wcsstore/TrendyCatalogAssetStore/images/trendy/misssixty/2018/a/681DJ1180000G24/681DJ1180000G24_s_5.jpg -->
                        </div>

                        <div id="productImgShow" class="pro_bigpic_box">
                            <div id="jqzoom" class="product_img_show">
                                <!-- DisplayKit.getProductImageUrl(ProductBean.sku, "detail", "s", 1); -->
                                <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif" data-sku="681DJ1180000G24,m,1" alt="透视真丝长袖连衣裙" jqimg="">
                            </div>
                            <script>
                                (function(){
                                    t$('jqzoom').getElementsByTagName('img')[0].setAttribute('jqimg', te$.skuToImgUrl('681DJ1180000G24', 'b', 1));
                                })();
                            </script>
                            <!-- 视频播放按钮<div class="play_video">play...</div>-->
                            <div style="display: none;" class="product_img_big" id="pshowBigImg">
                                <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif" class="pshow_big_img_front">
                            </div>
                        </div>
                    </div>
                    <script>
                        $("#jqzoom").jqueryzoom({xzoom:505,yzoom:560,preload:0});
                        te$.ui.zoom.init('productImgShow', 'jqzoom', 'pshowBigImg');
                    </script>

                    <!--单品描述-->
                    <div class="pro_info">
                        <h2>
                            透视真丝长袖连衣裙

                            <span>春夏大减价</span>

                            <!--  -->
                        </h2>
                        <p id="proPriceNum" class="pro_price">
                            ￥1495
                            <del>￥2990</del>
                        </p>

                        <div id="proSellOut" class="pro_sell_out">
                            <!--正常-->
                            <a id="btnSellOut" target="_blank" href="/applets/ProductArrivalNoticeAdd.do?productItemId=681DJ1180000G24" class="btn_sell_out">到货通知</a>
                            <script>
                                (function(){
                                    var s = t$('btnSellOut');
                                    s.href = te$.trendySite.act + s.getAttribute('href');
                                })();
                            </script>
                        </div>

                        <div class="pro_msg">
                            <p><input type="text" value="请留下您的电话"></p>
                            <p><button type="button">提交</button><a href="#">取消</a></p>
                        </div>

                        <dl id="proColor" class="pro_option pro_color" style="display:none;">
                        </dl>

                        <dl id="proSizeChoose" class="pro_option pro_size" style="display: block;">
                            <dt>选择尺码</dt>
                            <dd id="groupChooseSize"></dd>
                        </dl>

                        <div class="pro_buy">
                            <p id="proBtnBox" class="pro_btnbox">
                                <button id="btnOrderBuy" class="btn_add_bag" type="button">添加到购物袋</button>
                                <button id="btnOrderOneKey" class="btn_one_key_buy" type="button">一键购买</button>
                                <button id="btnOrderWish" class="btn_favorites" type="button">添加到我的衣橱</button>
                                <script>
                                    (function(){
                                        if (proInfo.payMode == '2') {
                                            t$('btnOrderBuy').style.display = 'none';
                                            t$('btnOrderOneKey').innerHTML = '兑换';
                                        }
                                        if (proInfo.salesMode == '2') t$('btnOrderBuy').style.display = 'none';
                                    })();
                                </script>
                            </p>
                            <!--<p><a id="linkServiceOnlineProduct" href="#">联系客服</a></p>
                             <p id="proSizeNo" class="pro_tip">该商品即将售罄，马上购买！</p> -->
                        </div>

                        <dl id="proTab" class="pro_description">
                            <dt class="detail_content_tit active"><span>商品描述</span></dt>
                            <dd class="detail_content_box active">
                                <div class="detail_content_txt" id="productInfo"><!-- id="detailContent1" -->
                                    <dl>
                                        <dt>产品款号：681DJ1180000G24</dt>
                                    </dl>


                                    <dl>
                                        <dt><span>-</span> 设计</dt>
                                        <dd>
                                            选用轻盈飘逸的真丝面料打造，宽松长款廓形融合纯黑色调，巧妙包容和修饰身形；别致的压褶装饰，带来浪漫优雅之感，若隐若现的透视效果更添性感魅力；下半身加入雪纺内衬，避免走光的尴尬。
                                        </dd>
                                    </dl>

                                    <dl>
                                        <dt><span>-</span> 尺码指导</dt>
                                        <dd>
                                            ● <span id="btnSizeDesc">查看尺码表</span><br />
                                            ● 宽松剪裁<br>● 轻盈面料，无弹力<br>● 单品可分开上下两件穿着<br>● 模特身高 176 厘米，所穿尺码 s
                                        </dd>
                                        <script>
                                            (function(){
                                                var size = [["尺码","上身长/全长","肩宽","胸围","裤长/袖长","腰围","臀围","脚口围/摆围","适合身高","",""],["XS","134.0","38.0","91.0","60.0","75.0","-","225.0","154/159"],["S","136.0","39.0","94.0","61.0","78.0","-","230.0","160/165"],["M","138.0","40.0","97.0","62.0","81.0","-","235.0","166/171"],["L","140.0","41.0","101.0","62.0","85.0","-","241.0","172/175"]];
                                                if (size) {
                                                    t$('btnSizeDesc').addEventListener('click', function(){
                                                        te$.ui.sizeDesc.show(size);
                                                        te$.ui.sizeDesc.frame.style.top = $(this).offset().top + 'px';
                                                        te$.ui.sizeDesc.frame.style.left = $(this).offset().left + 'px';
                                                    }, false);
                                                }
                                            })();
                                        </script>
                                    </dl>

                                    <dl>
                                        <dt><span>-</span> 产品信息</dt>
                                        <dd>
                                            ● 面料:桑蚕丝100%<br>● 撞料:聚酯纤维100%<br>● 下身里料:聚酯纤维100%
                                        </dd>
                                    </dl>



                                    <dl>
                                        <dt><span>-</span> 洗涤方式</dt>
                                        <dd>不可水洗；不可漂白；不可翻转干燥；低温熨烫；专业干洗；不可曝晒</dd>
                                    </dl>

                                    <dl>
                                        <dt><span>-</span> 保养护理</dt>
                                        <dd>本产品采用纱支组织疏松型面料，风格时尚而独特，在使用过程中，纱支因摩擦会有少量抽出，此为正常现象；请注意避开尖利物品的勾刺、挂扯，使用网袋包裹洗涤，以防止纱支破损。本产品采用桑蚕丝制成，轻薄时尚，天然透气，飘逸亮丽，凸显华贵而舒适，面料因光滑度很好，在使用过程中切忌钩挂尖刺，以防纱支损伤;此天然蛋白质原料，只可使用干洗或单独轻柔手洗，切忌揉搓，务必使用丝毛专用洗涤剂，轻柔对待，以防脱色及活性被破坏；汗渍亦会对原料造成损伤，请小心避免；请与其它衣物分开储存，不可压折。本产品采用特殊纱支制作而成，风格时尚而优雅，穿着时请小心爱护，请勿用力拉扯面料，切不可揉搓及绞拧，以防对面料造成损坏。</dd>
                                    </dl>
                                </div>
                            </dd>
                        </dl>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="product_content" id="bundleList" style="display:none">
        <div class="access match_list">
            <h3 class="roll_tit">完美搭配</h3>
            <div class="roll_box_2013">
                <div id="roll2013">
                    <ul class="main_list">
                        <li>
                            <div class="chip">
                                <a target="_blank" href="/p/681WJ3840000F25.jsp">
                                    <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="681WJ3840000F25,n,5">
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="chip">
                                <a target="_blank" href="/p/681CJ0150000G05.jsp">
                                    <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="681CJ0150000G05,n,5">
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="chip">
                                <a target="_blank" href="/p/681WJ4290000G24.jsp">
                                    <img src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="681WJ4290000G24,n,5">
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script>(function(){if (3 > 0) t$('bundleList').style.display = 'block';})();</script>

</div>
<script>
    te$.ui.titleOpen('productInfo');
    te$.ui.lazy.init('proFrame');
    te$.business.stock.get(proInfo.cId);
    //te$.business.stock.showProSize();
    // te$.business.cart.sizeWriter(proInfo.sizeItems);
    // te$.business.stock.setBuyButton(proInfo.sizeItems);
</script>

<div class="footer">
    <div class="footer_links">
        <dl>
            <dt>服务信息</dt>
            <dd>
                <p><a href="/a/article/w/f/misssixty_shopping_process.jsp">购物流程</a></p>
                <p><a href="/a/article/w/f/misssixty_delivery.jsp">配送说明</a></p>
                <!-- <p><a href="/a/article/w/f/misssixty_pay.jsp">支付方式</a></p> -->
                <p><a href="/a/article/w/f/misssixty_return.jsp">退货流程 </a></p>
                <!-- <p><a href="#">订单查询联系我们</a></p> -->
            </dd>
        </dl>
        <dl>
            <dt>关于我们</dt>
            <dd>
                <!-- <p><a href="#">关于我们</a></p> -->
                <p><a href="/a/article/w/f/misssixty_brand_story.jsp">品牌介绍</a></p>
                <p><a href="/a/article/w/f/misssixty_member.jsp">会员权益</a></p>
                <!-- <p><a href="#">专属试衣间预约</a></p> -->
            </dd>
        </dl>
        <dl>
            <dt>联系我们</dt>
            <dd>
                <p><a href="javascript:;" id="linkOnlineServiceBottom">在线客服</a></p>
                <p>服务热线  400-886-3018</p>
            </dd>
        </dl>
    </div>
    <ul class="footer_sns">
        <li>
            <a href="javascript:;" class="sns_wechat" id="snsWechat">wechat</a>
            <p class="qcode_wechat">misssixty微信公众号</p>
        </li>
        <li><a href="https://www.facebook.com/MissSixty" class="sns_facebook" target="_blank">facebook</a></li>
        <li><a href="https://twitter.com/MissSixtyStyle" class="sns_twitter" target="_blank">twitter</a></li>
        <li><a href="https://www.youtube.com/user/MisssixtyTube" class="sns_youtube" target="_blank">youtube</a></li>
        <li><a href="https://instagram.com/misssixtyglobal/" class="sns_instagram" target="_blank">instagram</a></li>
        <li><a href="https://www.pinterest.com/misssixtystyle/" class="sns_pinterest" target="_blank">pinterest</a></li>
        <li><a href="http://weibo.com/lovemssixty" class="sns_weibo" target="_blank">weibo</a></li>
        <!-- <a href="#" class="sns_qq" target="_blank">qq</a> -->
    </ul>
    <script>
        (function(){
            $('#snsWechat').mouseenter(function(){
                this.parentNode.getElementsByTagName('p')[0].style.display = 'block';
            }).mouseleave(function(){
                this.parentNode.getElementsByTagName('p')[0].style.display = 'none';
            });
        })();
    </script>
    <div class="footer_copyright">&copy; 广州赫斯汀服饰有限公司<a href="http://www.miibeian.gov.cn/" target="_blank">粤ICP备16013978号-1</a><a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010502000396" target="_blank"><img src="http://img2.misssixty.com.cn/material/2016/10/31/20161031164826771.png" />粤公网安备 44010502000396号</a></div>
</div>
<script>
    te$.system.hasLoad();
</script>

<div id="sizeItems" class="size_des">
    <div id="filterKeywords" class="size_des_content"></div>
    <div class="size_des_footer">
        <button id="btnFilter">关闭</button>
    </div>
</div>


</body>
</html>

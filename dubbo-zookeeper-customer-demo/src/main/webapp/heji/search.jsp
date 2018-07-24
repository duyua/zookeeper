<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/7/23
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <title>Miss Sixty 中国官网 - 短裤</title>

    <meta name="description" content="欢迎访问MissSixty官方中文网站。源自意大利的女性牛仔品牌，始于1991，一直为性感时尚的女性带来极具个性与创造力的牛仔设计。点击访问，轻松享受便捷的购物体验及获取最新牛仔潮流资讯。" />
    <meta name="keywords" content="miss sixty官网,miss sixty,misssixty,miss sixty官方购物网,Miss Sixty中文官网,Miss Sixty中国,Miss Sixty亚洲,Miss Sixty购物,Miss Sixty正品,潮流牛仔,M60,丹宁,女性牛仔,品牌女装,服装商城,意大利女装,意大利牛仔" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="http://img2.misssixty.com.cn/rs/misssixty/v1/www/css/m60_base.css" />

    <script src="http://img2.misssixty.com.cn/rs/lib/js/jquery.js"></script>
    <script src="http://img2.misssixty.com.cn/rs/misssixty/v1/www/js/m60_www_global.min.js"></script>
    <script>
        var pageParams = {
                catelogId : '1239',
                pId : 0,
                pageIndex : 1,
                pageCount : ${result.pageCount},//没有
                pageShowCount : 6,
                pageSize : 24,
                beginPrice : '0',
                size : '',
                name : '${basicname}',
                orderBy : 'listedDate desc',
                color : '' ,
                firstDate : '',
                inventory : '',
                keyword :  '',
                brand : '',
                interpose : ''
            },
            sizeItems = [],
            tBtnLenght = [];

        sizeItems.push('01');
        sizeItems.push('02');
        sizeItems.push('03');
        sizeItems.push('04');
        sizeItems.push('05');
        sizeItems.push('06');
        sizeItems.push('07');
        sizeItems.push('08');

        te$.listShow.pages.init(pageParams);
        te$.listShow.filter.setSizeRange(sizeItems);
        te$.listShow.imgType = 2;
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

                    <input type="text"  value="${basicname}" id="name">
                    <button type="button" onclick="search()">搜索</button>

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
        var tmp = '<p><a href="http://www.misssixty.com.cn/p/{sku}.shtml" target="_blank"><img src="{url}" />{title}</a></p>'
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
            <li class="first"><a href="/" id="homeLink" >首页</a></li>

            <li>
                <a href="/Whats_New/list.shtml">最新上架</a>
            </li>
            <li>
                <a href="/Denim/list.shtml">牛仔风尚</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Denim/Jeans/list.shtml">牛仔裤</a>
                            <br />
                            <a href="/Denim/Dresses/list.shtml">连衣裙</a>
                            <br />
                            <a href="/Denim/Shirts/list.shtml">衬衫</a>
                            <br />
                            <a href="/Denim/Jackets/list.shtml">外套</a>
                            <br />
                            <a href="/Denim/Skirts/list.shtml">半截裙</a>
                            <br />
                            <a href="/Denim/Culottes/list.shtml">裙裤</a>
                            <br />
                            <a href="/Denim/Shorts/list.shtml">短裤</a>
                            <br />
                            <a href="/Denim/Jumpsuits/list.shtml">连体裤</a>
                        </div>
                        <div class="sub_menu_imgs" id="subMenuImgsDenim"></div>
                        <script>
                            m60SetSubMenu('682JJ1940000A06-蕾丝绣花紧身裤铅笔裤长裤|682JJ1850000F25-纯棉中腰钉珠破洞直筒裤九分裤|682JJ2080000F25-中腰绣花紧身牛仔长裤|682JJ0670000F25-棉质中腰开衩喇叭裤九分裤子', 'subMenuImgsDenim');
                        </script>
                    </div>
                </div>
            </li>
            <li>
                <a href="/Closes/list.shtml">服装</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Closes/suit/list.shtml">套装</a>
                            <br />
                            <a href="/Closes/Sweater/list.shtml">卫衣</a>
                            <br />
                            <a href="/Closes/Jeans/list.shtml">牛仔裤</a>
                            <br />
                            <a href="/Closes/Dresses/list.shtml">连衣裙</a>
                            <br />
                            <a href="/Closes/Shirts/list.shtml">衬衫</a>
                            <br />
                            <a href="/Closes/T_shirts/list.shtml">T恤</a>
                            <br />
                            <a href="/Closes/Pullovers/list.shtml">毛织</a>
                            <br />
                            <a href="/Closes/Jackets/list.shtml">外套</a>
                        </div>
                        <div class="sub_menu_items">
                            <a href="/Closes/Skirts/list.shtml">半截裙</a>
                            <br />
                            <a href="/Closes/Culottes/list.shtml">裙裤</a>
                            <br />
                            <a href="/Closes/Shorts/list.shtml">短裤</a>
                            <br />
                            <a href="/Closes/Trousers/list.shtml">中/长裤</a>
                            <br />
                            <a href="/Closes/Jumpsuits/list.shtml">连体裤</a>
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
                <a href="/Angel_Collection/list.shtml">天使系列</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Angel_Collection/2018FW/list.shtml">2018FW</a>
                            <br />
                            <a href="/Angel_Collection/2018SS/list.shtml">2018SS</a>
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
                <a href="/Crossover/list.shtml">跨界合作系列</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Crossover/Disney/list.shtml">迪士尼系列</a>
                            <br />
                            <a href="/Crossover/Stylist/list.shtml">造型师系列</a>
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
                <a href="/Young_Line/list.shtml">年轻线系列</a>
                <div class="sub_menu">
                    <div class="sub_menu_mask">-</div>
                    <div class="sub_menu_cont">
                        <h5>按种类选购</h5>
                        <div class="sub_menu_items">
                            <a href="/Young_Line/2018AU/list.shtml">2018年秋季</a>
                            <br />
                            <a href="/Young_Line/2018SU/list.shtml">2018年夏季</a>
                            <br />
                            <a href="/Young_Line/2018SP/list.shtml">2018年春季</a>
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
                <a href="/summer_sale/list.shtml" style="color:#ff0000;font-weight:bold;">2018春夏大减价</a>
            </li>

            <li>
                <a href="/a/w/b/list.shtml">时尚博客</a>
            </li>

            <li>
                <a href="/a/article/w/f/misssixty_member.shtml">会员权益</a>
            </li>

        </ul>
    </div>
</div>
<script>
    te$.topCatalog();
</script>

<div class="product_list">
    <div class="access">
        <div class="list_title">
            <h3>
                搜索：${basicname}
            </h3>
            <p><span>51 items</span></p>

        </div>

        <!--left-->
        <div class="aside_left">
            <!-- CatalogInfoKit.getCatalogInfoListByParentCatalogId(CatalogId) test:269 1239-->


            <div id="filterKeyword">
            </div>

            <!-- <div id="filterKeyword">
                <div class="filter_style">
                    <div class="filter_title">风格</div>
                    <div id="orderTitle0" class="filter_link filter_link_space">
                        <em id="title欧美" href="##">欧美</em>
                        <em id="title百搭" href="##">百搭</em>
                        <em id="title休闲" href="##">休闲</em>
                        <em id="title优雅" href="##">优雅</em>
                        <em id="title简约" href="##">简约</em>
                        <em id="title浪漫" href="##">浪漫</em>
                        <em id="title华丽" href="##">华丽</em>
                        <em id="title甜美" href="##">甜美</em>
                    </div>
                    <div class="filter_action">
                        <span onclick="te$.listShow.filter.clearSelect('t')" id="tBtnFilterClear0" class="btn_filter_clear">清除</span>
                        <span onclick="te$.listShow.filter.goFilter()" id="tBtnFilterSub0" class="btn_filter_sub">提交</span>
                    </div>
                </div>
            </div> -->

            <div id="orderSizeBox" class="filter_size">
                <div class="filter_title">尺寸筛选</div>
                <dl id="orderSize">
                    <!-- <dt>服装类</dt> -->
                    <dd>
                        <div class="filter_link"><!-- <em id="sizeOption_1">XS</em> --></div>
                    </dd>
                </dl>
                <div class="filter_action">
                    <span onclick="te$.listShow.filter.clearSelect('s')" id="sBtnFilterClear" class="btn_filter_clear">清除</span>
                    <span onclick="te$.listShow.filter.goFilter()" id="sBtnFilterSub" class="btn_filter_sub">提交</span>
                </div>
            </div>
        </div>

        <!--right-->
        <div class="list_right">
            <div class="order_page">
                <div id="brandOrder" class="order">
                    <div class="btn_order_match"><span id="btnChangeListImgType">单品</span></div>
                    <div class="order_item_content" id="btnChangeSortType">
                            <div>
                           排序方式
                           最佳推荐
                           最新上架
                           价格由高到低
                           价格由低到高
                        </div>
                    </div>
                    <!-- <b>排序:</b>
                    <a id="sortPriority" href="##" class=" active">默认</a>
                    <a id="sortDate" href="##">进店</a>
                    <div id="sortPrice" class="btn_price_order">
                        <font>价格</font><em class="price_arrow" id="sortPriceArrow">↑</em><span class="price_init_box" id="priceInit"><a class="price_asc_init" id="priceAsc">↑</a><a class="price_desc_init" id="priceDesc">↓</a></span>
                    </div> -->
                </div>

                <div class="page">
                    <!-- <div class="list_num">
                        <b> 显示:</b>
                        <a id="listNum40" onclick="te$.listShow.filter.setPageSize('40')" href="##">40</a>
                        <a id="listNum80" onclick="te$.listShow.filter.setPageSize('80')" href="##">80</a>
                    </div> -->
                    <div id="pageNumberT" class="page_number"></div>
                </div>
            </div>

            <ul id="list" class="main_list">
                <c:forEach items="${result.productList}" var="re">
                    <li>
                        <div class="chip">
                            <a data-sku="682JJ8210000F13" target="_blank" href="/p/682JJ8210000F13.shtml">
                                <img alt="纯棉毛边牛仔背带裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="682JJ8210000F13" data-rollover="sku,list-1">
                                <span class="chip_name">
                                        ${re.basicname}
                                </span>
                            </a>
                            <p class="chip_price">
                                <span>￥${re.basicprice}</span>
                                <del>￥${re.basicmarket}</del>
                            </p>
                            <p class="chip_tip"><span>春夏大减价</span></p>
                        </div>
                    </li>
                </c:forEach>
            </ul>
            <div class="page_number_box">
                <div id="pageNumber" class="page_number"></div>
            </div>
            <script>
                te$.ui.lazy.init('list');
                t$('btnChangeListImgType').addEventListener('click', function(){
                    te$.changeListImgType(this, '#list');
                }, false);
                te$.ui.imgRollover('list');
                te$.listShow.pages.showPage();
            </script>
        </div>
    </div>
    <script>
        te$.listShow.makeSizeFilter();//勾选url中尺寸参数
        //te$.listShow.makeBrandFilter();//勾选url中品牌参数
        te$.listShow.makeTitFilter();//勾选url中主题、风格参数
        te$.listShow.makeSort();
    </script>
</div>

<div class="footer">
    <div class="footer_links">
        <dl>
            <dt>服务信息</dt>
            <dd>
                <p><a href="/a/article/w/f/misssixty_shopping_process.shtml">购物流程</a></p>
                <p><a href="/a/article/w/f/misssixty_delivery.shtml">配送说明</a></p>
                <!-- <p><a href="/a/article/w/f/misssixty_pay.shtml">支付方式</a></p> -->
                <p><a href="/a/article/w/f/misssixty_return.shtml">退货流程 </a></p>
                <!-- <p><a href="#">订单查询联系我们</a></p> -->
            </dd>
        </dl>
        <dl>
            <dt>关于我们</dt>
            <dd>
                <!-- <p><a href="#">关于我们</a></p> -->
                <p><a href="/a/article/w/f/misssixty_brand_story.shtml">品牌介绍</a></p>
                <p><a href="/a/article/w/f/misssixty_member.shtml">会员权益</a></p>
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

    function search() {
        alert($("#name").val())
        window.location.href="<%=request.getContextPath()%>/solr/list.do?name="+encodeURI(encodeURI($("#name").val()))

    }
</script>

</body>
</html>

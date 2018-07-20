<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <title>Miss Sixty 中国官网 - 牛仔风尚</title>

    <meta name="description" content="MISS SIXTY致力于为广大摩登女性带来充满个性品位及艺术感的丹宁时尚。欢迎访问MISS SIXTY中国官方网站，即刻了解最新服饰和前沿潮流资讯，享受轻松便捷的购物体验。" />
    <meta name="keywords" content="miss sixty官网，miss sixty，misssixty, miss sixty官方购物网，潮流牛仔，丹宁，女性牛仔，品牌女装，服装商城 " />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="http://img2.misssixty.com.cn/rs/misssixty/v1/www/css/m60_base.css" />

    <script src="<%=request.getContextPath()%>/img2.misssixty.com.cn/rs/lib/js/jquery.js"></script>
    <script src="http://img2.misssixty.com.cn/rs/misssixty/v1/www/js/m60_www_global.min.js"></script>
    <script>
        var pageParams = {
                catelogId : '1241',
                pId : 0,
                pageIndex : 1,
                pageCount : 8,//没有
                pageShowCount : 6,
                pageSize : 24,
                beginPrice : '0',
                size : '',
                name : '',
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

        sizeItems.push('02');
        sizeItems.push('03');
        sizeItems.push('04');
        sizeItems.push('05');
        sizeItems.push('06');
        sizeItems.push('01');
        sizeItems.push('07');

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
            <li class="first"><a href="/" id="homeLink" >首页</a></li>

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

<div class="product_list">
    <div class="access">
        <div class="list_title">
            <h3>
                牛仔风尚
            </h3>
            <p><span>192 items</span></p>

        </div>

        <!--left-->
        <div class="aside_left">
            <!-- CatalogInfoKit.getCatalogInfoListByParentCatalogId(CatalogId) test:269 1239-->


            <dl class="catalog">

                <dt><a href="/Denim/Jeans/list.jsp">牛仔裤</a></dt>
                <dd>
                    <a href="/Denim/Jeans/EVERYDAY/list.jsp" >EVERYDAY</a>
                    <a href="/Denim/Jeans/HIGH_WAIST/list.jsp" >HIGH WAIST 高腰</a>
                    <a href="/Denim/Jeans/FLARE/list.jsp" >FLARE 喇叭</a>
                    <a href="/Denim/Jeans/SLIM/list.jsp" >SLIM 紧身</a>
                    <a href="/Denim/Jeans/REGULAR/list.jsp" >REGULAR 合体</a>
                    <a href="/Denim/Jeans/BOY_FIT/list.jsp" >BOY FIT 男友风</a>
                    <a href="/Denim/Jeans/SKINNY_NON_PUSH_UP/list.jsp" >SKINNY NON PUSH UP 超紧身</a>
                    <a href="/Denim/Jeans/SKINNY_PUSH_UP/list.jsp" >SKINNY PUSH UP 超紧身提臀</a>
                </dd>

                <dt><a href="/Denim/Dresses/list.jsp">连衣裙</a></dt>
                <dd>
                    <a href="/Denim/Dresses/Sleeveless_Dresses/list.jsp" >无袖连衣裙</a>
                    <a href="/Denim/Dresses/Short_Sleeved_Dresses/list.jsp" >短袖连衣裙</a>
                    <a href="/Denim/Dresses/Mid_Long_Sleeved_Dresses/list.jsp" >中/长袖连衣裙</a>
                </dd>

                <dt><a href="/Denim/Shirts/list.jsp">衬衫</a></dt>
                <dd>
                    <a href="/Denim/Shirts/Sleeveless_Shirts/list.jsp" >无袖衬衫</a>
                    <a href="/Denim/Shirts/Short_Sleeved_Shirts/list.jsp" >短袖衬衫</a>
                    <a href="/Denim/Shirts/Mid_Long_Sleeved_Shirts/list.jsp" >中/长袖衬衫</a>
                </dd>

                <dt><a href="/Denim/Jackets/list.jsp">外套</a></dt>
                <dd>
                    <a href="/Denim/Jackets/Mid_Long_Jackets/list.jsp" >中/长外套</a>
                    <a href="/Denim/Jackets/Short_Jackets/list.jsp" >短外套</a>
                </dd>

                <dt><a href="/Denim/Skirts/list.jsp">半截裙</a></dt>
                <dd>
                    <a href="/Denim/Skirts/Sweat_Skirts/list.jsp" >短裙</a>
                    <a href="/Denim/Skirts/Mid_Skirts/list.jsp" >中裙</a>
                    <a href="/Denim/Skirts/L_Skirts/list.jsp" >长裙</a>
                </dd>

                <dt class="nobg"><a href="/Denim/Culottes/list.jsp">裙裤</a></dt>

                <dt class="nobg"><a href="/Denim/Shorts/list.jsp">短裤</a></dt>

                <dt class="nobg"><a href="/Denim/Jumpsuits/list.jsp">连体裤</a></dt>
            </dl>

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
                            <p class="order_item_first">排序方式</p>
                            <p data-sort-type="priority,2">最佳推荐</p>
                            <p data-sort-type="listedDate,2">最新上架</p>
                            <p data-sort-type="price,2">价格由高到低</p>
                            <p data-sort-type="price,1">价格由低到高</p>
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
                <li>
                    <div class="chip">
                        <a data-sku="683JJ3800000G11" target="_blank" href="/p/683JJ3800000G11.jsp">
                            <img alt="FLARE<br />低腰喇叭九分牛仔裤" src="<%=request.getContextPath()%>/img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ3800000G11" data-rollover="sku,list-1">
                            <span class="chip_name">
									FLARE<br />低腰喇叭九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1490</span>
                        </p>

                        <p class="chip_tip"><span>即将发售</span></p>

                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ6950000F25" target="_blank" href="/p/683JJ6950000F25.jsp">
                            <img alt="FLARE<br />纯棉破洞喇叭牛仔长裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ6950000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									FLARE<br />纯棉破洞喇叭牛仔长裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1490</span>
                        </p>

                        <p class="chip_tip"><span>即将发售</span></p>

                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ7480000G11" target="_blank" href="/p/683JJ7480000G11.jsp">
                            <img alt="FLARE<br />天使之翼绣花牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ7480000G11" data-rollover="sku,list-1">
                            <span class="chip_name">
									FLARE<br />天使之翼绣花牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1990</span>
                        </p>

                        <p class="chip_tip"><span>即将发售</span></p>

                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="682JJ4960000G24" target="_blank" href="/p/682JJ4960000G24.jsp">
                            <img alt="天使之翼印花牛仔短裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="682JJ4960000G24" data-rollover="sku,list-1">
                            <span class="chip_name">
									天使之翼印花牛仔短裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1490</span>
                        </p>

                        <p class="chip_tip"><span>即将发售</span></p>

                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ0700000G24" target="_blank" href="/p/683JJ0700000G24.jsp">
                            <img alt="BOY FIT<br />男友风破洞牛仔长裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ0700000G24" data-rollover="sku,list-1">
                            <span class="chip_name">
									BOY FIT<br />男友风破洞牛仔长裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1690</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ0710000F25" target="_blank" href="/p/683JJ0710000F25.jsp">
                            <img alt="FLARE<br />纯棉毛边喇叭牛仔长裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ0710000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									FLARE<br />纯棉毛边喇叭牛仔长裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1690</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ0760000F25" target="_blank" href="/p/683JJ0760000F25.jsp">
                            <img alt="REGULAR<br />纯棉钉珠直筒牛仔长裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ0760000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									REGULAR<br />纯棉钉珠直筒牛仔长裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1990</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ0800000F25" target="_blank" href="/p/683JJ0800000F25.jsp">
                            <img alt="BOY FIT<br />纯棉低腰直筒牛仔长裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ0800000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									BOY FIT<br />纯棉低腰直筒牛仔长裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1690</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ1050000F25" target="_blank" href="/p/683JJ1050000F25.jsp">
                            <img alt="FLARE<br />低腰喇叭裤牛仔长裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ1050000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									FLARE<br />低腰喇叭裤牛仔长裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1690</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ2450000F25" target="_blank" href="/p/683JJ2450000F25.jsp">
                            <img alt="抹胸修身牛仔连体长裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ2450000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									抹胸修身牛仔连体长裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1990</span>
                        </p>

                        <p class="chip_tip"><span>库存紧张</span></p>

                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ6790000F25" target="_blank" href="/p/683JJ6790000F25.jsp">
                            <img alt="SKINNY PUSH UP<br />紧身提臀九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ6790000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									SKINNY PUSH UP<br />紧身提臀九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1290</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ6810000G24" target="_blank" href="/p/683JJ6810000G24.jsp">
                            <img alt="SKINNY PUSH UP<br />紧身提臀九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ6810000G24" data-rollover="sku,list-1">
                            <span class="chip_name">
									SKINNY PUSH UP<br />紧身提臀九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥990</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ6820000F25" target="_blank" href="/p/683JJ6820000F25.jsp">
                            <img alt="SKINNY PUSH UP<br />紧身提臀九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ6820000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									SKINNY PUSH UP<br />紧身提臀九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1290</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ6840000F25" target="_blank" href="/p/683JJ6840000F25.jsp">
                            <img alt="HIGH WAIST<br />高腰紧身九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ6840000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									HIGH WAIST<br />高腰紧身九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1290</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ6880000G07" target="_blank" href="/p/683JJ6880000G07.jsp">
                            <img alt="HIGH WAIST<br />高腰紧身九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ6880000G07" data-rollover="sku,list-1">
                            <span class="chip_name">
									HIGH WAIST<br />高腰紧身九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1290</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ6900000F25" target="_blank" href="/p/683JJ6900000F25.jsp">
                            <img alt="HIGH WAIST<br />高腰紧身九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ6900000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									HIGH WAIST<br />高腰紧身九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1290</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ6920000F25" target="_blank" href="/p/683JJ6920000F25.jsp">
                            <img alt="HIGH WAIST<br />高腰紧身九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ6920000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									HIGH WAIST<br />高腰紧身九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1290</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ6980000F25" target="_blank" href="/p/683JJ6980000F25.jsp">
                            <img alt="EVERYDAY<br />纯棉破洞直筒牛仔长裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ6980000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									EVERYDAY<br />纯棉破洞直筒牛仔长裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1290</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ7010000F25" target="_blank" href="/p/683JJ7010000F25.jsp">
                            <img alt="SKINNY PUSH UP<br />提臀紧身九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ7010000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									SKINNY PUSH UP<br />提臀紧身九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥990</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ7030000F25" target="_blank" href="/p/683JJ7030000F25.jsp">
                            <img alt="SKINNY PUSH UP<br />紧身提臀九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ7030000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									SKINNY PUSH UP<br />紧身提臀九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1290</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ7060000G24" target="_blank" href="/p/683JJ7060000G24.jsp">
                            <img alt="SKINNY PUSH UP<br />提臀紧身九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ7060000G24" data-rollover="sku,list-1">
                            <span class="chip_name">
									SKINNY PUSH UP<br />提臀紧身九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥990</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683JJ7080000G11" target="_blank" href="/p/683JJ7080000G11.jsp">
                            <img alt="SKINNY PUSH UP<br />提臀紧身九分牛仔裤" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683JJ7080000G11" data-rollover="sku,list-1">
                            <span class="chip_name">
									SKINNY PUSH UP<br />提臀紧身九分牛仔裤
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥990</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683WJ0720000F25" target="_blank" href="/p/683WJ0720000F25.jsp">
                            <img alt="钉珠亮片宽松牛仔外套" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683WJ0720000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									钉珠亮片宽松牛仔外套
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥2990</span>
                        </p>


                    </div>
                </li>
                <li>
                    <div class="chip">
                        <a data-sku="683WJ0930000F25" target="_blank" href="/p/683WJ0930000F25.jsp">
                            <img alt="纯棉翻领洗水牛仔外套" src="http://img2.misssixty.com.cn/rs/common/v1/web/css/blank.gif"  data-sku="683WJ0930000F25" data-rollover="sku,list-1">
                            <span class="chip_name">
									纯棉翻领洗水牛仔外套
								</span>
                        </a>

                        <p class="chip_price">
                            <span>￥1690</span>
                        </p>


                    </div>
                </li>
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
</body>
</html>
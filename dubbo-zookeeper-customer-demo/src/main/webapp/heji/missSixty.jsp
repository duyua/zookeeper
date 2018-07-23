<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script>
        (function(){
            if (window.navigator.userAgent.toLowerCase().indexOf('mobile') >= 0) {
                window.location.href = '/mobile/index.jsp';
            }
        })();
    </script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <title>Miss Sixty 中国官网</title>
    <meta name="description" content="欢迎访问MissSixty官方中文网站。源自意大利的女性牛仔品牌，始于1991，一直为性感时尚的女性带来极具个性与创造力的牛仔设计。点击访问，轻松享受便捷的购物体验及获取最新牛仔潮流资讯。" />
    <meta name="keywords" content="miss sixty官网,miss sixty,misssixty,miss sixty官方购物网,Miss Sixty中文官网,Miss Sixty中国,Miss Sixty亚洲,Miss Sixty购物,Miss Sixty正品,潮流牛仔,M60,丹宁,女性牛仔,品牌女装,服装商城,意大利女装,意大利牛仔" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="http://img2.misssixty.com.cn/rs/misssixty/v1/www/css/m60_base.css" />

    <script src="http://img2.misssixty.com.cn/rs/lib/js/jquery.js"></script>
    <script src="http://img2.misssixty.com.cn/rs/misssixty/v1/www/js/m60_www_global.min.js"></script>
    <script>
        var _m60Index = true;
    </script>
</head>
<body>
<p id="tip520" class="top_tip">全场139包邮<span onclick="this.parentNode.style.display = 'none';">x</span></p>
<div class="header">
    <div class="top_link_box">
        <div class="header_content">
            <div class="header_count">
                <span id="paramLogin"><em id="emUserName"></em><a id="linkLogin" href="#"></a><em>|</em><a href="#" id="linkReg">注册</a></span>
                <a id="linkAccount" href="<%=request.getContextPath()%>/basicController/mehost.do" title="我的账户">我的账户</a><em>|</em>
                <a id="linkWishlist" class="link_Wishlist" href="#" title="我的收藏">我的收藏</a><em>|</em>
                <a id="linkCart" class="link_bag" href="<%=request.getContextPath()%>/basicController/querygwlist.do" title="购物袋"></a><em>|</em>
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
            <a href="">MISS SIXTY</a>
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
            <li class="first"><a href="missSixty.jsp" id="homeLink" >首页</a></li>

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

<div class="access" id="indexContent">
    <div class="index_access">
        <div class="m_fix_video" data-fix-h="155" data-fix-r="20|11" id="mFixVideo">
            <div class="shape_wrap"><a href="http://www.misssixty.com.cn/a/article/w/s/misssixty_18F_angelcollection_pc.jsp" target="_bkank"><img src="http://img2.misssixty.com.cn/rs/common/images/blank.gif" data-src="http://img2.ochirly.com.cn/material/2018/07/04/20180704181810648.jpg" /> </a></div>
        </div>
        <script>
            /*(function(){
                t$('mFixVideo').getElementsByTagName('img')[0].onload = function() {
                    if (this.src.indexOf('blank.gif') == -1) {
                        te$.ui.fixImg('mFixVideo');
                        $(window).bind('resize', function(){
                            te$.ui.fixImg('mFixVideo');
                        })
                    }
                }
            })();*/
        </script>
        <div class="shape">
            <div class="shape_wrap">
                <a href="http://www.misssixty.com.cn/summer_sale/list.jsp">
                    <img src="http://img2.misssixty.com.cn/rs/common/images/blank.gif" data-src="http://img2.ochirly.com.cn/material/2018/07/04/20180704181810662.jpg" />
                </a></div>
        </div>
        <div class="shape">
            <div class="shape_wrap">
                <img src="http://img2.misssixty.com.cn/rs/common/images/blank.gif" data-src="http://img2.ochirly.com.cn/material/2018/07/04/20180704181810724.jpg" width="1920" height="1733" usemap="#官网7页首页02" border="0" />
                <map name="官网7页首页02" id="官网7页首页02">
                    <area shape="rect" coords="308,34,1624,542" href="http://www.misssixty.com.cn/a/article/w/s/misssixty_disney.jsp" target="_blank" />
                    <area shape="rect" coords="304,588,945,1151" href="http://www.misssixty.com.cn/Whats_New/Newest/list.jsp" target="_blank" />
                    <area shape="rect" coords="971,590,1629,1150" href="http://www.misssixty.com.cn/Young_Line/list.jsp" target="_blank" />
                    <area shape="rect" coords="305,1196,1597,2055" href="http://www.misssixty.com.cn/Denim/list.jsp" target="_blank" />
                </map>
            </div>
        </div>
        <div class="shape">
            <img src="http://img2.misssixty.com.cn/rs/common/images/blank.gif" data-src="http://img2.ochirly.com.cn/material/2018/07/04/20180704181811383.jpg" width="1920" height="676" usemap="#官网7月首页03" border="0" />
            <map name="官网7月首页03" id="官网7月首页03">
                <area shape="rect" coords="303,236,636,669" href="http://www.misssixty.com.cn/Dresses/Dress/list.jsp" target="_blank" />
                <area shape="rect" coords="643,236,960,675" href="http://www.misssixty.com.cn/Tops/T_shirts/list.jsp" target="_blank" />
                <area shape="rect" coords="967,237,1274,681" href="http://www.misssixty.com.cn/Tops/Shirts/list.jsp" target="_blank" />
                <area shape="rect" coords="1282,238,1612,699" href="http://www.misssixty.com.cn/Dresses/Skirts/list.jsp" target="_blank" />
            </map>
        </div>
    </div>

    <div class="access_blog">
        <div class="shape">
            <h3>RECENTLY ON THE BLOG</h3>
            <div class="access_blog_list">
                <!--每博客内容，需要修改博客链接、图片链接、博客标题和博客的内容提示，博客标题中断行的地方用<br />-->
                <div class="access_blog_item">
                    <a href="/a/article/w/b/fallangel.jsp"><img data-src="http://img2.misssixty.com.cn/material/2018/07/03/20180703184158569.jpg" src="http://img2.misssixty.com.cn/rs/common/images/blank.gif"></a>
                    <h4>天使秘境神秘来袭 | 2018 MISS SIXTY秋季天使系列</h4>
                    <p>从热情沙漠到潮流街头，此次秋季天使来到 丛林秘境 ，再次把创始人钟爱的天使之翼提升至全新境界。富于变化且做工精细的天使羽翼随着人体律动而轻轻摇摆，呼唤出原始神秘的自然冒险精神，穿着它如同置身 斑斓迷彩 的自然梦境。</p>
                    <a class="btn_view_blog" href="/a/article/w/b/fallangel.jsp">浏览详情 &gt;</a>
                </div>
                <!--每博客内容，需要修改博客链接、图片链接、博客标题和博客的内容提示，博客标题中断行的地方用<br />-->
                <div class="access_blog_item">
                    <a href="/a/article/w/b/july.jsp"><img data-src="http://img2.misssixty.com.cn/material/2018/07/03/20180703181200340.jpg" src="http://img2.misssixty.com.cn/rs/common/images/blank.gif"></a>
                    <h4>像纽约客一样，把小周末过成别人羡慕的样子</h4>
                    <p>七月阳光耀眼的盛夏街头，就是展现你风格的最好舞台。当浪漫的紫罗兰色变幻为点点的印花，攀爬上裙摆的荷叶边褶皱，一览无余地展现出柔美的气质。</p>
                    <a class="btn_view_blog" href="/a/article/w/b/july.jsp">浏览详情 &gt;</a>
                </div>
                <!--每博客内容，需要修改博客链接、图片链接、博客标题和博客的内容提示，博客标题中断行的地方用<br />-->
                <div class="access_blog_item">
                    <a href="/a/article/w/b/INSINS.jsp"><img data-src="http://img2.misssixty.com.cn/material/2018/07/03/20180703172319300.jpg" src="http://img2.misssixty.com.cn/rs/common/images/blank.gif"></a>
                    <h4>超红INS博主都穿这件，一件T恤治愈你的穿搭困难症</h4>
                    <p>在每个人的衣橱里面，都会有一件这样的T恤——在你不知道穿什么的时候，它永远是你的第一选择。穿了100次，还是可以给你100+1的时髦灵感。</p>
                    <a class="btn_view_blog" href="/a/article/w/b/INSINS.jsp">浏览详情 &gt;</a>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
<script>
    te$.ui.lazy.init('indexContent');
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
</body>
</html>
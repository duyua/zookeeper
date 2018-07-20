<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script>
        (function(){
            var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
            var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器
            var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera;; //判断是否IE浏览器
            var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //判断是否IE的Edge浏览器
            if (userAgent.toLowerCase().indexOf('ipad') >= 0) {
                location.href='http://www.trendy-global.com/pad/index.jsp';
                return;
            }
            else if (userAgent.toLowerCase().indexOf('mobile') >= 0) {
                location.href='http://www.trendy-global.com/m/';
                return;
            }
            if(isIE)
            {
                var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
                reIE.test(userAgent);
                var IEVersion = parseFloat(RegExp["$1"]);
                if(IEVersion < 10)
                {
                    location.href='http://www.trendy-global.com/a/article/public/info/compatibility_tip.jsp';
                }
            }
        })();
    </script>
    <meta name="baidu-site-verification" content="EJ7VJYdZ2f" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta charset="utf-8">
    <title>赫基集团Trendy Group官方网站</title>
    <meta name="keywords" content="赫基集团,Trendy Group,徐宇,李珊瑚,Jacky Xu,Coral Li,赫基老板,赫基CEO,欧时力,ochirly,TRENDY GROUP,MISS SIXTY,Five Plus,TRENDIANO,COVEN GARDEN,Killah,ENERGIE">
    <meta name="description" content="赫基集团（Trendy Group）始于1999年，徐宇（Jacky Xu）和其夫人李珊瑚（Coral Li）创立时尚品牌欧时力（ochirly），目前在集团主席徐宇的带领下，已成为旗下拥有多品牌的国际时尚集团，旗下知名时尚品牌包括欧时力（ochirly）、Five Plus、COVEN GARDEN、TRENDIANO及意大利SIXTY GROUP旗下品牌MISS SIXTY、Killah、ENERGIE等。">
    <meta name="baidu-site-verification" content="0mR02kTRKt" />
    <script>
        var lang_version = 'cn';
    </script>

    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui">
    <meta name="format-detection" content="telephone=no, email=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <link href="http://img2.ochirly.com.cn/rs/trendy/css/trendy_base.css" rel="stylesheet">
    <link href="http://img2.ochirly.com.cn/rs/trendy/css/trendy_magic.css" rel="stylesheet">
    <link href="http://img2.ochirly.com.cn/rs/trendy/css/style.css" rel="stylesheet">
    <link href="http://img2.ochirly.com.cn/rs/trendy/css/color.css" rel="stylesheet">

    <script src="http://img2.ochirly.com.cn/rs/trendy/js/jquery.3.0.0.min.js"></script>
    <script src="http://img2.ochirly.com.cn/rs/trendy/js/jquery.easing.min.js"></script>
    <script src="http://img2.ochirly.com.cn/rs/trendy/js/TweenMax.min.js"></script>

    <script src="http://img2.ochirly.com.cn/rs/trendy/js/ScrollMagic.min.js"></script>
    <script src="http://img2.ochirly.com.cn/rs/trendy/js/debug.addIndicators.min.js"></script>
    <script src="http://img2.ochirly.com.cn/rs/trendy/js/animation.gsap.min.js"></script>
    <script src="http://img2.ochirly.com.cn/rs/trendy/js/iscroll.min.js"></script>
    <script src="http://img2.ochirly.com.cn/rs/trendy/js/ScrollToPlugin.min.js"></script>

    <!--[if lte IE 9]>
    <link href="http://img2.ochirly.com.cn/rs/trendy/css/trendy_iefixed.css" rel="stylesheet">
    <script src="http://img2.ochirly.com.cn/rs/trendy/js/html5shiv.js"></script>
    <![endif]-->
    <!-- <script src="http://img2.ochirly.com.cn/rs/trendy/js/trendy_iefixed.js"></script> -->
    <base target="_self">
</head>
<body style="overflow:hidden;">

<div class="cover"><div class="inner-cover"></div></div>
<div class="preloader">
    <div class="preloader-top"></div>
    <div class="preloader-bot"></div>
    <span><b>0</b>%</span>
    <div class="preloader_line"></div>
    <div class="preloader_gif"></div>
</div>

<!-- 模块1 -->
<div class="box" id="m1">
    <!-- video -->
    <div class="video">
        <video id="video1" src="http://img2.ochirly.com.cn/rs/trendy/video/2018summer/index_2018_summer.mp4" poster="http://img2.ochirly.com.cn/rs/trendy/video/video_teaser.jpg" width="100%" heigt="100%" preload loop ></video>
        <dl class="video-text">
            <dt>trendy<br>international group</dt>
            <dd>Established in 1999, <br>we are a corporation devoting all intelligence and passion to fashion creativity and innovation</dd>
        </dl>
    </div>
    <!-- video end -->
    <!--顶部nav-->
    <div class="home">
        <div class="wrap clearfix">
            <ul class="share">
                <li><a class="icon-wechat" href="javascript:;"></a></li>
                <li><a class="icon-sina" href="http://weibo.com/trendyglobal" target="_blank" rel="nofollow"></a></li>
                <li><a class="icon-youku" href="http://i.youku.com/i/UMzE4MzM0ODAxNg== " target="_blank" rel="nofollow"></a></li>
            </ul>
            <ul class="links">
                <li><a href="#contact" class="contact_link">联系我们</a></li>
                <li><a href="#mob" class="mob_link">手机版</a></li>
                <li><a href="#law" class="law_link">法律声明</a></li>
                <li><a href="#privacy" class="privacy_link">隐私权政策</a></li>
                <li><a href="../heji/missSixty.jsp" class="shop_link_top">线上购物</a></li>
            </ul>
            <%--<div class="pop_online_shop_top">
                <a target="_blank" href="http://www.ochirly.com.cn/" rel="nofollow">ochirly官方购物网</a>
                <a target="_blank" href="http://www.fiveplus.com/" rel="nofollow">FivePlus官方购物网</a>
                <a target="_blank" href="https://trendiano.tmall.com/" rel="nofollow">TRENDIANO官方购物网</a>
                <a target="_blank" href="http://www.misssixty.com.cn/" rel="nofollow">MISS SIXTY官方购物网</a>
                <a target="_blank" href="http://10cc.mobiwind.cn/" rel="nofollow">10 corso como官方购物网</a>
                <a target="_blank" href="http://www.superdry.com/" rel="nofollow">Superdry官方购物网</a>
            </div>--%>
        </div>
    </div>
    <!--顶部nav end-->
</div>
<!-- 模块1 end -->

<!-- 模块2 -->
<div class="box" id="m2">

    <!-- 模块2 part1 -->
    <div class="wrap">
        <div class="fullwin" id="m2-1">
            <div class="intro" id="intro">
                <h3>一家拥有多元时尚生活形态的公司</h3>
                <div class="line"></div>
                <div class="quot">“</div>
                <div class="text">致力于艺术与商业的完美融合，为消费者打造充满时尚品味与艺术气息的品牌， 提供全渠道的时尚服务，打造全新的数字化时尚体验</div>
                <div class="text"></div><div class="text"></div>
                <div class="ceo"><strong>赫基集团</strong> - 董事长暨总经理 徐宇 JACKY XU</div>
                <div class="sign"><img src="http://img2.ochirly.com.cn/rs/trendy/images/sign.gif"></div>
                <ul class="count clearfix">
                    <li><b>9<em></em></b><i>个时尚品牌</i></li>
                    <li><b>290<em></em></b><i>多个城市</i></li>
                    <li><b>3<span class="sub">,</span>000<em></em></b><i>多家独立精品店</i></li>
                    <li><b>8<span class="sub">,</span>000<!-- <span class="sup">+</span> --><em></em></b><i>多个工作伙伴</i></li>
                </ul>
                <div class="arrow-down"></div>
            </div>

        </div>
    </div>
    <!-- 模块2 part1 end -->

    <!-- 模块2 part2 -->
    <div class="wrap">
        <div class="fullwin" id="m2-2" style="margin-top:100%;">
            <div class="about" id="about">
                <div class="fl50 fullwin">
                    <dl class="about-con">
                        <dt>关于赫基</dt>
                        <dd class="line"></dd>
                        <dd>赫基集团逐步向多元时尚生活形态延伸; 2013年联手源自意大利米兰、全球最具权威性的集前沿时尚、设计、艺术与美食为一体的概念圣殿 10 Corso Como，在中国打造潮流生活体验馆；2015年与英国SuperGroup Plc集团合资，将风靡全球的都市时尚品牌Superdry引入中国。2017年携手荷兰阿姆斯特丹DENHAM Group B.V.集团，将极具匠心的殿堂级牛仔品牌DENHAM带入中国。赫基国际集团一直致力于将艺术与商业完美融合，打造数字化销售网络和与消费者互动的全渠道购物环境，为消费者带来全方位高品质的时尚生活体验。</dd>
                    </dl>
                </div>
                <div class="rl50 fullwin">
                    <dl class="about-con">
                        <dt>关于赫基</dt>
                        <dd class="line"></dd>
                        <dd>赫基集团（Trendy Group）始于1999年，发展至今已成为旗下拥有多品牌的国际时尚运营管理集团， 迄今为止在公司各品牌线下门店合计近3，000家，旗下知名时尚品牌包括ochirly、Five Plus、COVEN GARDEN、TRENDIANO及意大利SIXTY GROUP旗下品牌MISS SIXTY、Killah、ENERGIE等…</dd>
                    </dl>
                </div>
                <div class="about_pic"><div class="picbox"  data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic2.jpg"></div></div>
            </div>
        </div>
    </div>
    <!-- 模块2 part2 end -->

    <!-- 模块2 part3 -->
    <div class="wrap">
        <div class="wrap fullwin" id="m2-3" style="margin-top:100%; background:#fff">
            <div class="cont-item cont-item-1 cont-item-hover2">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic4.jpg"></div>
                <a class="des" href="#manager" id="manager_btn">
                    <dl>
                        <dt>集团CEO</dt>
                        <dd class="line"></dd>
                        <dd>国际化管理团队，前瞻视野运作品牌</dd>
                    </dl>
                </a>
                <div class="cover"></div>

            </div>
            <div class="cont-item cont-item-2 cont-item-hover2">
                <div class="videobox"><video id="video2" src="http://img2.ochirly.com.cn/rs/trendy/video/history1.mp4" width="100%" heigt="100%" preload loop autoplay muted></video></div>
                <a class="des" href="/a/article/public/info/trendy_datebook.jsp" target="_blank">
                    <dl>
                        <dt>集团历程</dt>
                        <dd class="line"></dd>
                        <dd>从独立品牌到多元化时尚王国</dd>
                    </dl>
                </a>
                <div class="cover"></div>
            </div>
            <div class="cont-item cont-item-3 cont-item-hover2">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic3.jpg"></div>
                <a class="des" href="#vision" id="vision_btn">
                    <dl>
                        <dt>集团愿景</dt>
                        <dd class="line"></dd>
                        <dd>成为艺术和商业完美融合的百年新典范</dd>
                    </dl>
                </a>
                <div class="cover"></div>
            </div>
            <div class="cont-item cont-item-4 cont-item-hover2">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic6.jpg"></div>
                <a class="des s-des" href="http://www.trendy-global.com/a/article/public/info/trendy_promise.jsp" target="_blank">
                    <dl>
                        <dt>共同承诺</dt>
                        <dd class="line"></dd>
                        <dd>携手合作伙伴践行社会责任，打造受尊重的时尚共同体</dd>
                    </dl>
                </a>
                <div class="cover"></div>
            </div>
        </div>
    </div>
    <!-- 模块2 part3 end -->
</div>


<!-- 模块3 -->
<div class="box" id="m3" style="background:#000">
    <!-- 模块3 part1 -->
    <!--mod global_index_p3_1-->
    <div class="wrap">
        <div class="fullwin picbox news-banner" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic7.jpg" id="m3-1">
            <div class="news-cover">
                <p>TRENDY</p>
                <p>PURSUITS</p>
                <p>FASHION EXCELLENCE</p>
            </div>
        </div>
    </div>
    <!-- 模块3 part1 end -->
    <!-- 模块3 part2 -->
    <div class="wrap news" style="padding-top:0px;" id="m3-2">
        <div class="news-filter clearfix" style="margin-bottom:40px;">
            <ul class="news-tab">
                <li class="now"><a href="#news" data-filter="0">全部新闻</a></li>
                <li><a href="#news" data-filter="1">新闻发布</a></li>
                <li><a href="#news" data-filter="2">赫基映像</a></li>
                <li><a href="#news" data-filter="3">赫基公益</a></li>
            </ul>
            <div class="news-search">
                <span>品牌检索</span>
                <div class="key"><input type="text"></div>
                <ul class="tag">
                    <li data-tag="0">全部品牌</li>
                    <li data-tag="1">ochirly</li>
                    <li data-tag="2">FivePlus</li>
                    <li data-tag="3">TRENDIANO</li>
                    <li data-tag="4">MISS SIXTY</li>
                    <li data-tag="5">COVEN GARDEN</li>
                    <li data-tag="6">10 corso como</li>
                    <li data-tag="7">Superdry</li>
                </ul>
                <!--<button></button>-->
            </div>
        </div>
        <div class="news-list clearfix">
            <ul class="clearfix">
                <!--t:11, c:62-->


                <li data-type="[2]" data-tag="7">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417124240748.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2018summer/sd.mp4" data-title="2018 Superdry夏季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2018summer/sd.mp4" data-title="2018 Superdry夏季大片" data-url="/a/article/news/n/v_sd_2018_summer.jsp" href="###" >
                            <dl>
                                <dt>2018 Superdry</dt>
                                <dt>夏季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/04/02
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417123856738.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2018summer/m60.mp4" data-title="2018 MISS SIXTY夏季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2018summer/m60.mp4" data-title="2018 MISS SIXTY夏季大片" data-url="/a/article/news/n/v_m60_2018_summer.jsp" href="###" >
                            <dl>
                                <dt>2018 MISS SIXTY</dt>
                                <dt>夏季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/04/02
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="2">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417123613588.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2018summer/fp.mp4" data-title="2018 Five Plus夏季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2018summer/fp.mp4" data-title="2018 Five Plus夏季大片" data-url="/a/article/news/n/v_fiveplus_2018_summer.jsp" href="###" >
                            <dl>
                                <dt>2018 Five Plus</dt>
                                <dt>夏季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/04/02
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417123316673.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2018summer/och.mp4" data-title="2018 ochirly夏季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2018summer/och.mp4" data-title="2018 ochirly夏季大片" data-url="/a/article/news/n/v_ochirly_2018_summer.jsp" href="###" >
                            <dl>
                                <dt>2018 ochirly</dt>
                                <dt>夏季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/04/02
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/05/02/20180502160050574.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="ELIZABETH SULCER x MISS SIXTY胶囊系列全球首发！" href="###"> -->
                        <a class="des" data-video="" data-title="ELIZABETH SULCER x MISS SIXTY胶囊系列全球首发！" data-url="/a/article/news/n/news_20180227_01.jsp" href="/a/article/news/n/news_20180227_01.jsp" target="_blank">
                            <dl>
                                <dt>ELIZABETH SULCER x MISS SIXTY胶囊系列全球首发！</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/02/27
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417120753253.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/m60.mp4" data-title="2018 MISS SIXTY春季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/m60.mp4" data-title="2018 MISS SIXTY春季大片" data-url="/a/article/news/n/v_m60_2018_spring.jsp" href="###" >
                            <dl>
                                <dt>2018 MISS SIXTY</dt>
                                <dt>春季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/02/17
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="5">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417120024524.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/cg.mp4" data-title="2018 COVEN GARDEN春季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/cg.mp4" data-title="2018 COVEN GARDEN春季大片" data-url="/a/article/news/n/v_cg_2018_spring.jsp" href="###" >
                            <dl>
                                <dt>2018 COVEN GARDEN</dt>
                                <dt>春季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/02/17
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417115530939.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/tre.mp4" data-title="2018 TRENDIANO春季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/tre.mp4" data-title="2018 TRENDIANO春季大片" data-url="/a/article/news/n/v_tre_2018_spring.jsp" href="###" >
                            <dl>
                                <dt>2018 TRENDIANO</dt>
                                <dt>春季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/02/17
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="2">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417115205305.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/fp.mp4" data-title="2018 Five Plus春季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/fp.mp4" data-title="2018 Five Plus春季大片" data-url="/a/article/news/n/v_fiveplus_2018_spring.jsp" href="###" >
                            <dl>
                                <dt>2018 Five Plus</dt>
                                <dt>春季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/02/17
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417114607126.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/och1.mp4" data-title="2018 ochirly春季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2018spring/och1.mp4" data-title="2018 ochirly春季大片" data-url="/a/article/news/n/v_ochirly_2018_spring.jsp" href="###" >
                            <dl>
                                <dt>2018 ochirly</dt>
                                <dt>春季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/02/17
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,3]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/05/02/20180502153601818.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="新一座赫基阳光童趣园落成，助力孩子梦想发芽" href="###"> -->
                        <a class="des" data-video="" data-title="新一座赫基阳光童趣园落成，助力孩子梦想发芽" data-url="/a/article/news/n/news_20180209_01.jsp" href="/a/article/news/n/news_20180209_01.jsp" target="_blank">
                            <dl>
                                <dt>新一座赫基阳光童趣园落成，助力孩子梦想发芽</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/02/09
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/05/02/20180502151041315.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="为消费者体验创新！我们在米兰旗舰店做了什么？" href="###"> -->
                        <a class="des" data-video="" data-title="为消费者体验创新！我们在米兰旗舰店做了什么？" data-url="/a/article/news/n/news_20180109_01.jsp" href="/a/article/news/n/news_20180109_01.jsp" target="_blank">
                            <dl>
                                <dt>为消费者体验创新！我们在米兰旗舰店做了什么？</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2018/01/09
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/04/17/20180417131059441.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="赫基集团加入阳光诚信联盟，共建诚信商业环境" href="###"> -->
                        <a class="des" data-video="" data-title="赫基集团加入阳光诚信联盟，共建诚信商业环境" data-url="/a/article/news/n/new_20171229_1.jsp" href="/a/article/news/n/new_20171229_1.jsp" target="_blank">
                            <dl>
                                <dt>赫基集团加入阳光诚信联盟，共建诚信商业环境</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/12/29
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,3]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2018/01/29/20180129114150214.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="赫基连续3年助力百万森林计划改善130万平方米荒漠" href="###"> -->
                        <a class="des" data-video="" data-title="赫基连续3年助力百万森林计划改善130万平方米荒漠" data-url="/a/article/news/n/plant_tree_for_desert.jsp" href="/a/article/news/n/plant_tree_for_desert.jsp" target="_blank">
                            <dl>
                                <dt>赫基连续3年助力百万森林计划</dt>
                                <dt>改善130万平方米荒漠</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/12/29
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="7">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/11/29/20171129162650363.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017winter/superdry.mp4" data-title="2017 SUPERDRY冬季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017winter/superdry.mp4" data-title="2017 SUPERDRY冬季大片" data-url="/a/article/news/n/v_superdry_2017_winter.jsp" href="###" >
                            <dl>
                                <dt>2017 SUPERDRY</dt>
                                <dt>冬季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/11/29
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/11/29/20171129162038163.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017winter/misssixty_winter.mp4" data-title="2017 Miss Sixty冬季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017winter/misssixty_winter.mp4" data-title="2017 Miss Sixty冬季大片" data-url="/a/article/news/n/v_misssixty_2017_winter.jsp" href="###" >
                            <dl>
                                <dt>2017 Miss Sixty</dt>
                                <dt>冬季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/11/29
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="2">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/11/29/20171129161526891.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017winter/fiveplus_winter_2017.mp4" data-title="2017 Five Plus冬季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017winter/fiveplus_winter_2017.mp4" data-title="2017 Five Plus冬季大片" data-url="/a/article/news/n/v_fiveplus_2017_winter.jsp" href="###" >
                            <dl>
                                <dt>2017 Five Plus</dt>
                                <dt>冬季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/11/29
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/11/29/20171129155938327.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017winter/ochirly_2017_winter.mp4" data-title="2017 ochirly冬季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017winter/ochirly_2017_winter.mp4" data-title="2017 ochirly冬季大片" data-url="/a/article/news/n/v_ochirly_2017_winter.jsp" href="###" >
                            <dl>
                                <dt>2017 ochirly</dt>
                                <dt>冬季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/11/29
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="5">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/08/10/20170810175423209.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/covengarden_fall.mp4" data-title="2017 COVEN GARDEN秋季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/covengarden_fall.mp4" data-title="2017 COVEN GARDEN秋季大片" data-url="/a/article/news/n/v_covengarden_2017_fall.jsp" href="###" >
                            <dl>
                                <dt>2017 COVEN GARDEN</dt>
                                <dt>秋季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/08/10
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/08/10/20170810174626632.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/misssixty_fall.mp4" data-title="2017 MISS SIXTY秋季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/misssixty_fall.mp4" data-title="2017 MISS SIXTY秋季大片" data-url="/a/article/news/n/v_misssixty_2017_fall.jsp" href="###" >
                            <dl>
                                <dt>2017 MISS SIXTY</dt>
                                <dt>秋季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/08/10
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/08/10/20170810174247177.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/trendiano_fall.mp4" data-title="2017 TRENDIANO秋季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/trendiano_fall.mp4" data-title="2017 TRENDIANO秋季大片" data-url="/a/article/news/n/v_trendiano_2017_fall.jsp" href="###" >
                            <dl>
                                <dt>2017 TRENDIANO</dt>
                                <dt>秋季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/08/10
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="2">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/08/10/20170810152032378.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/fiveplus_fall.mp4" data-title="2017 Five Plus秋季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/fiveplus_fall.mp4" data-title="2017 Five Plus秋季大片" data-url="/a/article/news/n/v_fiveplus_2017_fall.jsp" href="###" >
                            <dl>
                                <dt>2017 Five Plus</dt>
                                <dt>秋季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/08/10
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/08/10/20170810151301147.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/ochirly_fall.mp4" data-title="2017 ochirly秋季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017fall/ochirly_fall.mp4" data-title="2017 ochirly秋季大片" data-url="/a/article/news/n/v_ochirly_2017_fall.jsp" href="###" >
                            <dl>
                                <dt>2017 ochirly</dt>
                                <dt>秋季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/08/10
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/09/01/20170901173547701.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="MISS SIXTY丹宁潮流体验馆重庆北城天街店开业集结全球丹宁精品 引领潮流生活方式" href="###"> -->
                        <a class="des" data-video="" data-title="MISS SIXTY丹宁潮流体验馆重庆北城天街店开业集结全球丹宁精品 引领潮流生活方式" data-url="/a/article/news/n/misssixty_chongqing_new_shop.jsp" href="/a/article/news/n/misssixty_chongqing_new_shop.jsp" target="_blank">
                            <dl>
                                <dt>MISS SIXTY丹宁潮流体验馆开业</dt>
                                <dt>集结全球丹宁精品 引领潮流生活方式</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/05/30
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/04/01/20170401163315980.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="赫基集团携手荷兰高端牛仔品牌DENHAM拓展大中华时尚版图" href="###"> -->
                        <a class="des" data-video="" data-title="赫基集团携手荷兰高端牛仔品牌DENHAM拓展大中华时尚版图" data-url="/a/article/news/n/denham_begin.jsp" href="/a/article/news/n/denham_begin.jsp" target="_blank">
                            <dl>
                                <dt>赫基集团携手荷兰高端</dt>
                                <dt>牛仔品牌DENHAM拓展大中华时尚版图</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/04/01
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/05/04/20170504175621670.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017summer/trendiano_2017_summer.mp4" data-title="2017 TRENDIANO夏季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017summer/trendiano_2017_summer.mp4" data-title="2017 TRENDIANO夏季大片" data-url="/a/article/news/n/v_trendiano_2017_summer.jsp" href="###" >
                            <dl>
                                <dt>2017 TRENDIANO</dt>
                                <dt>夏季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/03/30
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="2">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/05/04/20170504175139724.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017summer/fiveplus_2017_summer.mp4" data-title="2017 Five Plus夏季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017summer/fiveplus_2017_summer.mp4" data-title="2017 Five Plus夏季大片" data-url="/a/article/news/n/v_fiveplus_2017_summer.jsp" href="###" >
                            <dl>
                                <dt>2017 Five Plus</dt>
                                <dt>夏季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/03/30
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/05/04/20170504174654003.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017summer/ochirly_2017_summer.mp4" data-title="2017 ochirly夏季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017summer/ochirly_2017_summer.mp4" data-title="2017 ochirly夏季大片" data-url="/a/article/news/n/v_ochirly_2017_summer.jsp" href="###" >
                            <dl>
                                <dt>2017 ochirly</dt>
                                <dt>夏季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/03/30
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/05/04/20170504173012670.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/cg_2017_spring.mp4" data-title="2017 COVEN GARDEN春夏大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/cg_2017_spring.mp4" data-title="2017 COVEN GARDEN春夏大片" data-url="/a/article/news/n/v_covengarden_2017_spring_summer.jsp" href="###" >
                            <dl>
                                <dt>2017 COVEN GARDEN</dt>
                                <dt>春夏大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/01/24
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/05/04/20170504172130765.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/m60_2017_srping.mp4" data-title="2017 MISS SIXTY春夏大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/m60_2017_srping.mp4" data-title="2017 MISS SIXTY春夏大片" data-url="/a/article/news/n/v_misssixty_2017_sping_summer.jsp" href="###" >
                            <dl>
                                <dt>2017 MISS SIXTY</dt>
                                <dt>春夏大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/01/20
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/05/04/20170504171836441.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/tre_2017_sring.mp4" data-title="2017 TRENDIANO春季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/tre_2017_sring.mp4" data-title="2017 TRENDIANO春季大片" data-url="/a/article/news/n/v_trendiano_2017_spring.jsp" href="###" >
                            <dl>
                                <dt>2017 TRENDIANO</dt>
                                <dt>春季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/01/20
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="2">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/05/04/20170504171553644.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/fp_2017_spring.mp4" data-title="2017 Five Plus春季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/fp_2017_spring.mp4" data-title="2017 Five Plus春季大片" data-url="/a/article/news/n/v_fiveplus_2017_spring.jsp" href="###" >
                            <dl>
                                <dt>2017 Five Plus</dt>
                                <dt>春季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/01/20
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2017/05/04/20170504170955179.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/och_2017_spring.mp4" data-title="2017 ochirly春季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/2017sping/och_2017_spring.mp4" data-title="2017 ochirly春季大片" data-url="/a/article/news/n/v_ochirly_2017_spring.jsp" href="###" >
                            <dl>
                                <dt>2017 ochirly</dt>
                                <dt>春季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2017/01/20
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/11/04/20161104151856271.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="TRENDIANO for All 摄瘾展暨 Ghost Collection 限量首发会" href="###"> -->
                        <a class="des" data-video="" data-title="TRENDIANO for All 摄瘾展暨 Ghost Collection 限量首发会" data-url="/a/article/news/n/tre_for_all_ghost_collection.jsp" href="/a/article/news/n/tre_for_all_ghost_collection.jsp" target="_blank">
                            <dl>
                                <dt>TRENDIANO for All 摄瘾展</dt>
                                <dt>暨 Ghost Collection 限量首发会</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/11/04
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/10/11/20161011113242011.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/b1_1.mp4" data-title="2016 ochirly冬季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/b1_1.mp4" data-title="2016 ochirly冬季大片" data-url="/a/article/news/n/v_ochirly_2016_winter.jsp" href="###" >
                            <dl>
                                <dt>2016 ochirly</dt>
                                <dt>冬季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/10/13
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/10/12/20161012180226432.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/b3_1.mp4" data-title="2016 TRENDIANO冬季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/b3_1.mp4" data-title="2016 TRENDIANO冬季大片" data-url="/a/article/news/n/v_trendiano_2016_winter.jsp" href="###" >
                            <dl>
                                <dt>2016 TRENDIANO</dt>
                                <dt>冬季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/10/10
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="2">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/10/11/20161011111647226.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/b2_2.mp4" data-title="2016 FivePlus冬季大片" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/b2_2.mp4" data-title="2016 FivePlus冬季大片" data-url="/a/article/news/n/v_fiveplus_2016_winter.jsp" href="###" >
                            <dl>
                                <dt>2016 FivePlus</dt>
                                <dt>冬季大片</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/10/06
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/10/09/20161009141908340.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="2016“TRENDIANO FOR ALL”潮人盛会 潮会玩 潮爱玩" href="###"> -->
                        <a class="des" data-video="" data-title="2016“TRENDIANO FOR ALL”潮人盛会 潮会玩 潮爱玩" data-url="/a/article/news/n/tre_for_all.jsp" href="/a/article/news/n/tre_for_all.jsp" target="_blank">
                            <dl>
                                <dt>2016“TRENDIANO FOR ALL”</dt>
                                <dt>潮人盛会 潮会玩 潮爱玩</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/09/20
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/10/09/20161009141404050.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v_m_year_25.mp4" data-title="2016 MISS SIXTY 25周年溯源时尚女性牛仔，经典与潮流碰撞" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v_m_year_25.mp4" data-title="2016 MISS SIXTY 25周年溯源时尚女性牛仔，经典与潮流碰撞" data-url="/a/article/news/n/misssixty_year_25.jsp" href="###" >
                            <dl>
                                <dt>2016 MISS SIXTY 25周年</dt>
                                <dt>溯源时尚女性牛仔，经典与潮流碰撞</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/09/19
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/10/09/20161009141519646.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="2016 MISS SIXTY与Gal Gadot 25周年联名限量系列Sexy Angel's Reborn 性感天使的新生" href="###"> -->
                        <a class="des" data-video="" data-title="2016 MISS SIXTY与Gal Gadot 25周年联名限量系列Sexy Angel's Reborn 性感天使的新生" data-url="/a/article/news/n/sexy_angels_reborn.jsp" href="/a/article/news/n/sexy_angels_reborn.jsp" target="_blank">
                            <dl>
                                <dt>2016 MISS SIXTY与Gal Gadot 25周年联名限量系列</dt>
                                <dt>Sexy Angel's Reborn 性感天使的新生</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/09/10
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,3]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/10/11/20161011111837051.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="据说这是亚洲最有范的儿童活动中心" href="###"> -->
                        <a class="des" data-video="" data-title="据说这是亚洲最有范的儿童活动中心" data-url="/a/article/news/n/best_children_center_1.jsp" href="/a/article/news/n/best_children_center_1.jsp" target="_blank">
                            <dl>
                                <dt>据说这是亚洲最有范的</dt>
                                <dt>儿童活动中心</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/09/09
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/10/09/20161009152402720.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v_tre_sound.mp4" data-title="2016 TRENDIANO全球潮人念！千人发声" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v_tre_sound.mp4" data-title="2016 TRENDIANO全球潮人念！千人发声" data-url="/a/article/news/n/v_trendiano_sound.jsp" href="###" >
                            <dl>
                                <dt>2016 TRENDIANO</dt>
                                <dt>全球潮人念！千人发声</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/08/05
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="7">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/10/11/20161011154826480.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v_s_shanghai.mp4" data-title="2016 Superdry上海来福士店酷拽开业" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v_s_shanghai.mp4" data-title="2016 Superdry上海来福士店酷拽开业" data-url="/a/article/news/n/v_superdry_shanghai_open_1.jsp" href="###" >
                            <dl>
                                <dt>2016 Superdry上海来福士店</dt>
                                <dt>酷拽开业</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/08/01
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="7">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815172905069.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="英伦品牌Superdry公布中国首批三家专卖店开业计划" href="###"> -->
                        <a class="des" data-video="" data-title="英伦品牌Superdry公布中国首批三家专卖店开业计划" data-url="/a/article/news/n/superdry_open_1.jsp" href="/a/article/news/n/superdry_open_1.jsp" target="_blank">
                            <dl>
                                <dt>英伦品牌Superdry</dt>
                                <dt>公布中国首批三家专卖店开业计划</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/07/15
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="5">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815165840103.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v4.mp4" data-title="2016 COVEN GARDEN画意“诗”情 • 来自旧时光的优雅" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v4.mp4" data-title="2016 COVEN GARDEN画意“诗”情 • 来自旧时光的优雅" data-url="/a/article/news/n/v_covengarden_poetry_1.jsp" href="###" >
                            <dl>
                                <dt>2016 COVEN GARDEN</dt>
                                <dt>画意“诗”情 • 来自旧时光的优雅</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/07/01
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,3]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815172712357.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="赫基再度携手“百万森林”计划 助力腾格里沙漠锁边" href="###"> -->
                        <a class="des" data-video="" data-title="赫基再度携手“百万森林”计划 助力腾格里沙漠锁边" data-url="/a/article/news/n/trendy_desert_1.jsp" href="/a/article/news/n/trendy_desert_1.jsp" target="_blank">
                            <dl>
                                <dt>赫基再度携手“百万森林”计划 </dt>
                                <dt>助力腾格里沙漠锁边</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/06/17
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815165559075.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v5.mp4" data-title="2016 ochirly度假系列Chiara Ferragni采访" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v5.mp4" data-title="2016 ochirly度假系列Chiara Ferragni采访" data-url="/a/article/news/n/v_ochirly_chiara_ferragni_1.jsp" href="###" >
                            <dl>
                                <dt>2016 ochirly度假系列</dt>
                                <dt>Chiara Ferragni采访</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/06/01
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815165417996.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v6.mp4" data-title="2016 ochirly携手时尚人士She爱加倍四人合辑" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v6.mp4" data-title="2016 ochirly携手时尚人士She爱加倍四人合辑" data-url="/a/article/news/n/v_ochirly_she_1.jsp" href="###" >
                            <dl>
                                <dt>2016 ochirly携手时尚人士She</dt>
                                <dt>爱加倍四人合辑</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2016/03/01
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,3]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815172434156.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="2015赫基集团携手中国绿化基金会启动〝万株绿色林〞计划" href="###"> -->
                        <a class="des" data-video="" data-title="2015赫基集团携手中国绿化基金会启动〝万株绿色林〞计划" data-url="/a/article/news/n/trendy_green_1.jsp" href="/a/article/news/n/trendy_green_1.jsp" target="_blank">
                            <dl>
                                <dt>2015赫基集团携手中国绿化基金会</dt>
                                <dt>启动〝万株绿色林〞计划</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2015/11/12
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815165207701.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v7.mp4" data-title="2015 Mission Sixty 特工“60”微电影" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v7.mp4" data-title="2015 Mission Sixty 特工“60”微电影" data-url="/a/article/news/n/v_misssixty_spy_2.jsp" href="###" >
                            <dl>
                                <dt>2015 Mission Sixty </dt>
                                <dt>特工“60”微电影</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2015/10/01
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[2]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815165024166.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v8.mp4" data-title="2015 TRENDIANO全新微电影《逃离ESCAPE》" href="###"> -->
                        <a class="des video_only" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v8.mp4" data-title="2015 TRENDIANO全新微电影《逃离ESCAPE》" data-url="/a/article/news/n/v_trendiano_escape_1.jsp" href="###" >
                            <dl>
                                <dt>2015 TRENDIANO全新微电影</dt>
                                <dt>《逃离ESCAPE》</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2015/10/01
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,2]" data-tag="3">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815172129636.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v1.mp4" data-title="时尚男装TRENDIANO揭幕首家 POP-UP STORE 未来时尚快闪店" href="###"> -->
                        <a class="des video_news" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v1.mp4" data-title="时尚男装TRENDIANO揭幕首家 POP-UP STORE 未来时尚快闪店" data-url="/a/article/news/n/trendiano_pop_up_store_1.jsp" href="###" >
                            <dl>
                                <dt>时尚男装TRENDIANO</dt>
                                <dt>揭幕首家 POP-UP STORE 未来时尚快闪店</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2015/09/28
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,2]" data-tag="1">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815171919599.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v_o_date.mp4" data-title="ochirly时尚星约秋冬新品发布会" href="###"> -->
                        <a class="des video_news" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v_o_date.mp4" data-title="ochirly时尚星约秋冬新品发布会" data-url="/a/article/news/n/ochirly_2015_fall_new_1.jsp" href="###" >
                            <dl>
                                <dt>ochirly</dt>
                                <dt>时尚星约秋冬新品发布会</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2015/08/25
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="4">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815171653690.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="MISS SIXTY 5月POP UP STORE登陆太古汇：魅力丹宁，惊喜连连" href="###"> -->
                        <a class="des" data-video="" data-title="MISS SIXTY 5月POP UP STORE登陆太古汇：魅力丹宁，惊喜连连" data-url="/a/article/news/n/misssixty_taikoohui_1.jsp" href="/a/article/news/n/misssixty_taikoohui_1.jsp" target="_blank">
                            <dl>
                                <dt>MISS SIXTY 5月POP UP STORE</dt>
                                <dt>登陆太古汇：魅力丹宁，惊喜连连</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2015/06/10
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,3]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815164621477.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="2015赫基义工队为更多留守儿童带去知识与欢笑" href="###"> -->
                        <a class="des" data-video="" data-title="2015赫基义工队为更多留守儿童带去知识与欢笑" data-url="/a/article/news/n/2015_visit_leftover_children_1.jsp" href="/a/article/news/n/2015_visit_leftover_children_1.jsp" target="_blank">
                            <dl>
                                <dt>2015赫基义工队为更多留守儿童</dt>
                                <dt>带去知识与欢笑</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2015/03/17
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,3]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815163613265.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="2014赫基员工助学陪留守儿童过圣诞" href="###"> -->
                        <a class="des" data-video="" data-title="2014赫基员工助学陪留守儿童过圣诞" data-url="/a/article/news/n/2014_leftover_children_1.jsp" href="/a/article/news/n/2014_leftover_children_1.jsp" target="_blank">
                            <dl>
                                <dt>2014赫基员工助学陪</dt>
                                <dt>留守儿童过圣诞</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2014/12/23
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,2]" data-tag="2">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815171414566.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v_f_zac.mp4" data-title="Five Plus ZACPOSEN“纽约绮遇”主题时尚夜" href="###"> -->
                        <a class="des video_news" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v_f_zac.mp4" data-title="Five Plus ZACPOSEN“纽约绮遇”主题时尚夜" data-url="/a/article/news/n/fiveplus_vs_zacposen_1.jsp" href="###" >
                            <dl>
                                <dt>Five Plus ZACPOSEN</dt>
                                <dt>“纽约绮遇”主题时尚夜</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2014/11/17
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,3]" data-tag="0">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815164321370.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="2014让艺术触手可及赫基义工队连南探访活动" href="###"> -->
                        <a class="des" data-video="" data-title="2014让艺术触手可及赫基义工队连南探访活动" data-url="/a/article/news/n/2014_visit_liannan_1.jsp" href="/a/article/news/n/2014_visit_liannan_1.jsp" target="_blank">
                            <dl>
                                <dt>2014让艺术触手可及</dt>
                                <dt>赫基义工队连南探访活动</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2014/10/28
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1,2]" data-tag="5">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815171147447.jpg"></div>
                        <!-- <a class="des video_news" data-url="http://img2.ochirly.com.cn/rs/trendy/video/v_c_open.mp4" data-title="COVEN GARDEN品牌首发暨秋冬时尚发布会" href="###"> -->
                        <a class="des video_news" data-video="http://img2.ochirly.com.cn/rs/trendy/video/v_c_open.mp4" data-title="COVEN GARDEN品牌首发暨秋冬时尚发布会" data-url="/a/article/news/n/covengarden_open_1.jsp" href="###" >
                            <dl>
                                <dt>COVEN GARDEN</dt>
                                <dt>品牌首发暨秋冬时尚发布会</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2014/05/27
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>


                <li data-type="[1]" data-tag="6">
                    <div class="news-item">
                        <div class="picbox" data-src="http://img2.ochirly.com.cn/material/2016/08/15/20160815170825321.jpg"></div>
                        <!-- <a class="des video_news" data-url="" data-title="米兰时尚圣殿10 CORSO COMO即将来沪携手赫基集团登陆中国" href="###"> -->
                        <a class="des" data-video="" data-title="米兰时尚圣殿10 CORSO COMO即将来沪携手赫基集团登陆中国" data-url="/a/article/news/n/100cc_open_at_shanghai_1.jsp" href="/a/article/news/n/100cc_open_at_shanghai_1.jsp" target="_blank">
                            <dl>
                                <dt>米兰时尚圣殿10 CORSO COMO</dt>
                                <dt>即将来沪携手赫基国际登陆中国</dt>
                                <dd class="line"></dd>
                                <dd>
                                    2013/11/06
                                </dd>
                            </dl>
                        </a>
                    </div>
                </li>
            </ul>
            <div class="news-list-page"><a href="javascript:void(0);"><<</a><a href="javascript:void(0);"><</a><b>1/5</b><a href="javascript:void(0);">></a><a href="javascript:void(0);">>></a></div>
        </div>
    </div>
    <!-- 模块3 part2 end -->
</div>
<!-- 模块3 end -->


<!-- 模块4 -->
<div class="box bg-black" id="m4">
    <div class="wrap brand">
        <ul class="clearfix">
            <li style="z-index: 2; width:50%; left:0%; height:474px;">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand/brand1.jpg" style=" background-position:right top;"></div>
                <a class="des" href="#brand"><span class="picbox2" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand1-2.png"></span></a>
            </li>
            <li style="z-index: 1; width:55%; left:45%; height:474px;">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand/brand2.jpg" style=" background-position:right top;"></div>
                <a class="des" href="#brand"><span class="picbox2" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand2-2.png"></span></a>
            </li>
            <li style="z-index: 5;width:33.3333%; left:0%; top:445px; height:474px; ">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand/brand3.jpg"></div>
                <a class="des" href="#brand"><span class="picbox2" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand3-2.png"></span></a>
            </li>
            <li style="z-index: 6;width:33.3333%; left:33.3333%; top:445px; height:474;">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand/brand4.jpg"></div>
                <a class="des" href="#brand"><span class="picbox2" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand4-2.png"></span></a>
            </li>
            <li style="z-index: 4;width:33.3333%; left:66.6666%; top:445px; height:474px;">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand/brand5.jpg"></div>
                <a class="des" href="#brand"><span class="picbox2" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand5-2.png"></span></a>
            </li>
            <li style="z-index: 8; width:33.3333%; left:0%; top:859px; ">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand/brand6.jpg"></div>
                <a class="des" href="#brand"><span class="picbox2" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand6-2.png"></span></a>
            </li>
            <li style="z-index: 9;width:33.3333%; left:33.3333%; top:859px;">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand/brand7.jpg"></div>
                <a class="des" href="#brand"><span class="picbox2" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand7-2.png"></span></a>
            </li>
            <li style="z-index: 9;width:33.3333%; left:66.6666%; top:859px;">
                <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand/brand8.jpg"></div>
                <a class="des" href="#brand"><span class="picbox2" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/brand8-2.png"></span></a>
            </li>
        </ul>
    </div>
</div>
<!-- 模块4 end -->


<!-- 模块5 -->
<div class="box" id="m5">
    <div class="wrap fullwin">
        <div class="about2 clearfix">
            <div class="fl50 fullwin about-pic" style="position:relative;"><!--top:-100%;-->
                <span class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic112.jpg" style="background-position:top center"></span>
                <span class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic101.jpg" style="background-position:50% 100%">
                        <!-- <i >集团人力资源、公共事务及行政高级副总裁<br />  SHIRLEY YANG</i> -->
                    </span>
                <span class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic24.jpg" style="background-position:top center"></span>
            </div>
            <div class="fl50 fullwin flexbox flexcol" id="about2_con">
                <div class="about-con-list flex flexbox flex-ver-center">
                    <dl class="about-con" style="display:none;">
                        <dt>赫基文化</dt>
                        <dd class="line"></dd>
                        <dd>
                            我们深信时尚未来的发展离不开企业文化与价值观，赫基人将奉行实践赫基价值观：<br>-追求卓越：持续学习，锐意进取；荣誉精神，使命为先。<br>-创新：开放思维，拥抱变革；勇于尝试，突破自我。<br>
                            -共赢：相互信任，团队协作；用户思维，体验至上。<br>
                            -时尚：赫彩生活，乐享时尚；内外兼修，魅力无限。<br>
                            -关爱：关爱他人，互相尊重；关爱环境，持续发展。<br /><br />
                            <a href="https://app.mokahr.com/apply/heji" target="_blank">加入我们</a>
                            <a href="#join_weixin" class="wh_weixin">关注微信</a>
                        </dd>
                    </dl>
                    <dl class="about-con" style="display:none;">
                        <dt>赫基人才理念</dt>
                        <dd class="line"></dd>
                        <dd>我们致力于缔造美丽的时尚事业，倡导多元化的时尚生活形态；<br />我们尊重并提倡个性化，让每位赫基人在这里工作与生活，皆能感受到时尚和美带来的愉悦和成就；<br />
                            我们秉持关爱以致共赢，让来自多个国家和地区逾8,000多名的伙伴们，能在不同岗位上秉承包容与开放的态度协作，为消费者创造美丽奇迹，给予社会持续关怀；<br />
                            我们鼓励赫基人勇于挑战和突破自我，以开阔的视野拥抱变革，不断创新、追求卓越以引领潮流。<br />
                            期待您与赫基一起，Work Hard，Play Hard！</dd>
                    </dl>
                    <dl class="about-con" style="display:none;">
                        <dt>与我们在一起</dt>
                        <dd class="line"></dd>
                        <dd>在赫基，我们拥有创新的工作氛围和多元的发展通道。集团创办“赫基学院”在线上线下不定期举办论坛和培训，建立全方位的发展培养体系，打造开放创新的工作氛围，同时我们也鼓励每位赫基人工作之外热爱生活，并积极参与公益，点亮了每一位赫基人的生活。欢迎您与我们一起创造美好时尚生活。<br><br>
                            <a  href="#join" id="join_us_btn">员工风采</a></dd>
                    </dl>
                </div>
                <div class="about-tab flex">
                    <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic113.jpg"></div>
                    <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic102.jpg" style=" background-position: center bottom;"></div>
                    <!-- <div class="picbox" data-src="http://img2.ochirly.com.cn/rs/trendy/pic/pic25.jpg"></div> -->
                    <div class="videobox"><video id="video3" src="http://img2.ochirly.com.cn/rs/trendy/video/culture.mp4" width="100%" heigt="100%" preload muted autoplay></video><div class="videoBar-box"><span class="videoBar"><i></i></span></div></div>
                    <div class="tab">
                        <ul>
                            <li class="now"><a href="javascript:(0);">赫基文化</a></li>
                            <li><a href="javascript:(0);" >人才理念</a></li>
                            <li><a href="javascript:(0);" >与我们在一起</a></li>
                            <li><a href="javascript:(0);" target="_blank" onclick="window.open('https://app.mokahr.com/apply/heji','_blank')">招聘岗位</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 模块5 end -->


<script>
    var picWallPages = [];
    //t:61, s:76
    picWallPages.push(['http://www.trendy-global.com/a/article/photowall/trendy_pic_wall_1.jsp', 0]);
    picWallPages.push(['http://www.trendy-global.com/a/article/photowall/trendy_pic_wall_2.jsp', 1]);
    picWallPages.push(['http://www.trendy-global.com/a/article/photowall/trendy_pic_wall_3.jsp', 2]);
    picWallPages.push(['http://www.trendy-global.com/a/article/photowall/trendy_pic_wall_4.jsp', 3]);
</script>

<!-- 模块6 -->
<div class="box" id="m6">
    <div class="wrap picwall">
        <ul class="clearfix"></ul>
    </div>
    <div class="wrap footer clearfix">
        <div class="footer-right">
            <a href="javascript:;" class="icon-wechat"><img src="http://img2.ochirly.com.cn/rs/trendy/pic/weixin.png" /></a>
            <a href="http://weibo.com/trendyglobal" target="_blank" rel="nofollow"><img src="http://img2.ochirly.com.cn/rs/trendy/pic/sina.png" /></a>
            <a href="http://i.youku.com/i/UMzE4MzM0ODAxNg== " target="_blank" rel="nofollow"><img src="http://img2.ochirly.com.cn/rs/trendy/pic/youku.png" /></a>
        </div>
        <div class="footer-left">
            <p><a href="#contact" class="contact_link">联系我们</a><!-- |<a href="#mob" class="mob_link">手机版</a> -->|<a href="#law" class="law_link">法律声明</a>|<a href="#privacy" class="privacy_link">隐私权政策</a>|<a href="javascript:;" class="online_shop_link">线上购物</a></p>
            <p>Copyright©2011 TRENDY INTERNATIONAL GROUP.All rights reserved. &nbsp;&nbsp;<a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">粤ICP备11010295号-1</a>&nbsp;&nbsp;<a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010602001896" rel="nofollow"><img src="http://img2.ochirly.com.cn/material/2016/10/31/20161031164826771.png" />粤公网安备 44010602001896号</a></p>
        </div>
        <div class="pop_online_shop">
            <a target="_blank" href="http://www.ochirly.com.cn/" rel="nofollow">ochirly官方购物网</a>
            <a target="_blank" href="http://www.fiveplus.com/" rel="nofollow">FivePlus官方购物网</a>
            <a target="_blank" href="https://trendiano.tmall.com/" rel="nofollow">TRENDIANO官方购物网</a>
            <a target="_blank" href="http://www.misssixty.com.cn/" rel="nofollow">MISS SIXTY官方购物网</a>
            <a target="_blank" href="http://10cc.mobiwind.cn/" rel="nofollow">10 corso como官方购物网</a>
            <a target="_blank" href="http://www.superdry.com/" rel="nofollow">Superdry官方购物网</a>
        </div>
    </div>
</div>
<!-- 模块6 end -->


<!-- 头部浮动 -->
<div class="top">
    <div class="wrap clearfix">
        <div class="nav"><a href="javascript:;"><span class="nav-line-1"></span><span class="nav-line-2"></span><span class="nav-line-3"></span><span class="nav-line-4"></span></a></div>
        <div class="logo"><a href="index.html"></a></div>
    </div>
</div>
<!-- 头部浮动 end -->
<!-- 翻页 -->
<ul class="pagination">
    <li data-scene="#m1" class="now"><span></span></li>
    <li data-scene="#m2"><span></span></li>
    <li data-scene="#m3"><span></span></li>
    <li data-scene="#m4"><span></span></li>
    <li data-scene="#m5"><span></span></li>
    <li data-scene="#m6"><span></span></li>
</ul>
<!-- 翻页 end -->
<!-- 导航菜单 -->
<div class="menu">
    <div class="menu-cover"></div>
    <div class="menu-wrap">
        <ul class="menu-list">
            <li><a href="javascript:;" data-scene="#m1">首 页<i></i></a></li>
            <li><a href="javascript:;" data-scene="#m2">关于我们<i></i></a></li>
            <li><a href="javascript:;" data-scene="#m3">新闻中心<i></i></a></li>
            <li><a href="javascript:;" data-scene="#m4">时尚品牌<i></i></a></li>
            <li><a href="javascript:;" data-scene="#m5">加入我们<i></i></a></li>
            <li><a href="javascript:;" data-scene="#m6">赫基掠影<i></i></a></li>
        </ul>
        <div class="menu-lg"><span></span><a href="javascript:;">中文<i></i></a> / <a href="/e/index.jsp">EN<i></i></a></div>
    </div>
    <div class="menu-close"></div>
</div>
<!-- 导航菜单 end -->
<!-- 弹框内容 -->
<div class="popbox" id="popbox1" style="display: none;">
    <div class="popbox-bg"></div>
    <div class="popbox-close"></div>
    <div class="popbox-scroll" id="wrapper">
        <div class="scroller"></div>
    </div>
</div>
<!-- 弹框内容 end -->
<!-- 视频弹框内容 -->
<div class="popbox" id="popbox2" style="display: none;">
    <div class="popbox-bg popbox-black"></div>
    <div class="popbox-close"></div>
    <div class="popbox-video fullwin"></div>
</div>
<!-- 视频弹框内容 end -->
<!-- foot内容 -->
<div class="popbox" id="popbox3" style="display: none;">
    <div class="popbox-bg"></div>
    <div class="popbox-close"></div>
    <div class="popbox-scroll popbox-scroll-footer">
        <div class="scroller"></div>
    </div>
</div>
<!-- foot内容 end -->

<!-- 手机二维码 -->
<!-- <div class="mob_qr_index"></div>-->
<div class="mob_qr"></div>
<!-- 手机二维码 end -->
<div class="qr"></div>
<!--招聘二维码-->
<div class="qr-recruited"></div>
<!-- 提示 -->
<div class="viewport-tip"></div>

<!-- http://img2.ochirly.com.cn/rs/trendy/js/
http://test.static.t-e-shop.com/trendy/global/trendy/js/ -->
<script src="http://img2.ochirly.com.cn/rs/trendy/js/common.js"></script>
<script src="http://img2.ochirly.com.cn/rs/trendy/js/magic.js"></script>

<script>
    //document.write(unescape("%3Cspan style='display: none;' id='cnzz_stat_icon_1256408168'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1256408168%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
    //百度统计
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?7680fbfdc532ec11e0c4d6f4b3f4f9c0";

        var cnzz = document.createElement("script");
        cnzz.src = '//s4.cnzz.com/z_stat.php?id=1256408168&web_id=1256408168';

        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
        s.parentNode.insertBefore(cnzz, s);
    })();
</script>
</body>
</html>




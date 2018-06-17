<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>双发蔬菜熟食店</title>

    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css"/>

    <link href="../css/hmstyle.css" rel="stylesheet" type="text/css"/>
    <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</head>
<body>

<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd">
                    <a href="#" target="_top" class="h">亲，请登录</a>
                    <a href="#" target="_top">免费注册</a>
                </div>
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
                </div>
            </div>
            <div class="topMessage mini-cart">
                <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i
                        class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum"
                                                                                              class="h">0</strong></a>
                </div>
            </div>
            <div class="topMessage favorite">
                <div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a>
                </div>
            </div>
        </ul>
    </div>

    <!--悬浮搜索框-->

    <div class="nav white">
        <div class="logo"><img src="../images/logo.png"/></div>
        <div class="logoBig">
            <li><img src="../images/logobig.png"/></li>
        </div>

        <div class="search-bar pr">
            <a name="index_none_header_sysc" href="#"></a>
            <form>
                <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                <!--<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit" onclick="index_search()">-->
                <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="button" onclick="index_search()">
                <script type="text/javascript">
                    function index_search() {
                        var pnamedesc = document.getElementById("searchInput").value;
                        window.location.href = "/home/search?pnamedesc=" + pnamedesc;
                    }
                </script>
            </form>
        </div>
    </div>

    <div class="clear"></div>
</div>
<div class="banner">
    <!--轮播 -->
    <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
        <ul class="am-slides">
            <li class="banner1"><a href="introduction.html"><img src="../images/ad1.jpg"/></a></li>
            <li class="banner2"><a><img src="../images/ad2.jpg"/></a></li>
            <li class="banner3"><a><img src="../images/ad3.jpg"/></a></li>
            <li class="banner4"><a><img src="../images/ad4.jpg"/></a></li>
        </ul>
    </div>
    <div class="clear"></div>
</div>
<div class="shopNav">
    <div class="slideall">

        <div class="long-title"><span class="all-goods">全部分类</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="#">首页</a></li>
                <li class="qc"><a href="#">闪购</a></li>
                <li class="qc"><a href="#">限时抢</a></li>
                <li class="qc"><a href="#">团购</a></li>
                <li class="qc last"><a href="#">大包装</a></li>
            </ul>
            <div class="nav-extra">
                <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
                <i class="am-icon-angle-right" style="padding-left: 10px;"></i>
            </div>
        </div>

        <!--侧边导航 -->
        <div id="nav" class="navfull">
            <div class="area clearfix">
                <div class="category-content" id="guide_2">

                    <div class="category">
                        <ul class="category-list" id="js_climit_li">
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!--侧边导航 -->
        <script type="text/javascript">
            $(document).ready(function () {
                $.ajax({
                    type: "POST",
                    url: "/classify/get",
                    dataType: "json",
                    success: function (data) {
                        var content = "";
                        for (var c in data) {
                            content = content + "<li class=\"appliance js_toggle relative first\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"category-info\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t<h3 class=\"category-name b-category-name\"><i><img src=\"../images/classify/cl/cl"+data[c].id+".jpg\"></i><a class=\"ml-22\">" + data[c].cname + "</a></h3>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t<em>&gt;</em></div>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"menu-item menu-in top\" style=\"display: none;\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"area-in\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"area-bg\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"menu-srot\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"sort-side\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<dl class=\"dl-sort\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<dt><span>" + data[c].cdescribe + "</span></dt>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</dl>\n" +
                                "\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"brand-side\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t<b class=\"arrow\"></b>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t</li>";
                        }
                        document.getElementById("js_climit_li").innerHTML = content;
                        $("li").hover(function () {
                            $(".category-content .category-list li.first .menu-in").css("display", "none");
                            $(".category-content .category-list li.first").removeClass("hover");
                            $(this).addClass("hover");
                            $(this).children("div.menu-in").css("display", "block")
                        }, function () {
                            $(this).removeClass("hover")
                            $(this).children("div.menu-in").css("display", "none")
                        });
                    }
                });
                $.ajax({
                    type: "POST",
                    url: "/classify/getShowP",
                    dataType: "json",
                    success: function (data) {
                        var content = document.getElementById("shopmain").innerHTML;
                        for (var c in data) {
                            content = content + "<div class=\"am-container \">\n" +
                                "\t<div class=\"shopTitle \">\n" +
                                "\t\t<h4>" + data[c].cname + "</h4>\n" +
                                "\t\t<h3>" + data[c].ccontent + "</h3>\n" +
                                "\t\t<div class=\"today-brands \">\n" +
                                "\t\t\t<a href=\"# \">桂花糕</a>\n" +
                                "\t\t\t<a href=\"# \">奶皮酥</a>\n" +
                                "\t\t\t<a href=\"# \">栗子糕 </a>\n" +
                                "\t\t\t<a href=\"# \">马卡龙</a>\n" +
                                "\t\t\t<a href=\"# \">铜锣烧</a>\n" +
                                "\t\t\t<a href=\"# \">豌豆黄</a>\n" +
                                "\t\t</div>\n" +
                                "\t\t<span class=\"more \">\n" +
                                "\t\t\t<a class=\"more-link \" href=\"# \">更多美味</a>\n" +
                                "\t\t</span>\n" +
                                "\t</div>\n" +
                                "</div>";

                            content = content + "<div class=\"am-g am-g-fixed floodOne \">\n" +
                                "\t\t\t\t\t\t<div class=\"am-u-sm-5 am-u-md-3 am-u-lg-4 text-one \">\n" +
                                "\t\t\t\t\t\t\t<a href=\"# \">\n" +
                                "\t\t\t\t\t\t\t\t<div class=\"outer-con \">\n" +
                                "\t\t\t\t\t\t\t\t\t<div class=\"title \">\n" +
                                "\t\t\t\t\t\t\t\t\t\t" + data[c].cname + "\n" +
                                "\t\t\t\t\t\t\t\t\t</div>\t\t\t\t\t\n" +
                                "\t\t\t\t\t\t\t\t\t<div class=\"sub-title \">\n" +
                                "\t\t\t\t\t\t\t\t\t\t" + data[c].ccontent + "\n" +
                                "\t\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t</div>\n" +
                                "<img src=\"../images/classify/" + data[c].cimg + ".png \" />\t\t\t\t\t\t\t\t\n" +
                                "\t\t\t\t\t\t\t</a>\n" +
                                "\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t<div class=\"am-u-sm-7 am-u-md-5 am-u-lg-4\">\n";


                            var list = data[c].list;
                            for (var l in list) {
                                if (l === "0") {
                                    content = content + "<div class=\"text-two\">\n" +
                                        "\t\t\t<div class=\"outer-con \">\n" +
                                        "\t\t\t\t<div class=\"title \">\n" +
                                        "\t\t\t\t\t" + list[l].pname + "\n" +
                                        "\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\n" +
                                        "\t\t\t\t<div class=\"sub-title \">\n" +
                                        "\t\t\t\t\t仅售：¥" + list[l].price + "/" + list[l].uname + "\n" +
                                        "\t\t\t\t</div>\n" +
                                        "\t\t\t\t\n" +
                                        "\t\t\t</div>\n" +
                                        "\t\t\t<a href=\"# \"><img src=\"../images/act2.png \"></a>\n" +
                                        "\t\t</div>";
                                }
                                if (l === "1") {
                                    content = content + "<div class=\"text-two last\">\n" +
                                        "\t\t\t<div class=\"outer-con \">\n" +
                                        "\t\t\t\t<div class=\"title \">\n" +
                                        "\t\t\t\t\t" + list[l].pname + "\n" +
                                        "\t\t\t\t</div>\n" +
                                        "\t\t\t\t<div class=\"sub-title \">\n" +
                                        "\t\t\t\t\t仅售：¥" + list[l].price + "/" + list[l].uname + "\n" +
                                        "\t\t\t\t</div>\n" +
                                        "\t\t\t\t\n" +
                                        "\t\t\t</div>\n" +
                                        "\t\t\t<a href=\"# \"><img src=\"../images/act2.png \"></a>\n" +
                                        "\t\t</div>" +
                                        "\t\t</div>";
                                }
                                if (l === "2") {
                                    content = content + "\t\t             <div class=\"am-u-sm-12 am-u-md-4 am-u-lg-4\">\n" +
                                        "\t\t\t\t\t\t<div class=\"text-two\">\n" +
                                        "\t\t\t\t\t\t\t<div class=\"outer-con \">\n" +
                                        "\t\t\t\t\t\t\t\t<div class=\"title \">\n" +
                                        "\t\t\t\t\t\t\t\t\t" + list[l].pname + "\n" +
                                        "\t\t\t\t\t\t\t\t</div>\n" +
                                        "\t\t\t\t\t\t\t\t\n" +
                                        "\t\t\t\t\t\t\t\t<div class=\"sub-title \">\n" +
                                        "\t\t\t\t\t\t\t\t\t尝鲜价：¥" + list[l].price + "/" + list[l].uname + "\n" +
                                        "\t\t\t\t\t\t\t\t</div>\n" +
                                        "\t\t\t\t\t\t\t</div>\n" +
                                        "\t\t\t<a href=\"# \"><img src=\"../images/act2.png \"></a>\n" +
                                        "\t\t\t\t\t\t</div>\n";
                                }
                                if (l === "3") {
                                    content = content + "<div class=\"text-two last\">\n" +
                                        "\t\t\t<div class=\"outer-con \">\n" +
                                        "\t\t\t\t<div class=\"title \">\n" +
                                        "\t\t\t\t\t" + list[l].pname + "\n" +
                                        "\t\t\t\t</div>\n" +
                                        "\t\t\t\t<div class=\"sub-title \">\n" +
                                        "\t\t\t\t\t仅售：¥" + list[l].price + "/" + list[l].uname + "\n" +
                                        "\t\t\t\t</div>\n" +
                                        "\t\t\t\t\n" +
                                        "\t\t\t</div>\n" +
                                        "\t\t\t<a href=\"# \"><img src=\"../images/act2.png \"></a>\n" +
                                        "\t\t</div>\n" +
                                        "\t</div>\n" +
                                        "</div>\n" +
                                        "<div class=\"clear \"></div>";
                                }
                            }
                        }

                        content = content + "<div class=\"footer \">\n" +
                            "\t\t\t\t\t\t<div class=\"footer-hd \">\n" +
                            "\t\t\t\t\t\t\t<p>\n" +
                            "\t\t\t\t\t\t\t\t<a href=\"# \">恒望科技</a>\n" +
                            "\t\t\t\t\t\t\t\t<b>|</b>\n" +
                            "\t\t\t\t\t\t\t\t<a href=\"# \">商城首页</a>\n" +
                            "\t\t\t\t\t\t\t\t<b>|</b>\n" +
                            "\t\t\t\t\t\t\t\t<a href=\"# \">支付宝</a>\n" +
                            "\t\t\t\t\t\t\t\t<b>|</b>\n" +
                            "\t\t\t\t\t\t\t\t<a href=\"# \">物流</a>\n" +
                            "\t\t\t\t\t\t\t</p>\n" +
                            "\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t<div class=\"footer-bd \">\n" +
                            "\t\t\t\t\t\t\t<p>\n" +
                            "\t\t\t\t\t\t\t\t<a href=\"# \">关于恒望</a>\n" +
                            "\t\t\t\t\t\t\t\t<a href=\"# \">合作伙伴</a>\n" +
                            "\t\t\t\t\t\t\t\t<a href=\"# \">联系我们</a>\n" +
                            "\t\t\t\t\t\t\t\t<a href=\"# \">网站地图</a>\n" +
                            "\t\t\t\t\t\t\t\t<em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href=\"http://www.cssmoban.com/\" target=\"_blank\" title=\"模板之家\">模板之家</a> - Collect from <a href=\"http://www.cssmoban.com/\" title=\"网页模板\" target=\"_blank\">网页模板</a></em>\n" +
                            "\t\t\t\t\t\t\t</p>\n" +
                            "\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t</div>";
                        document.getElementById("shopmain").innerHTML = content;
                    }
                });
                $('.am-slider').flexslider();
            });
        </script>
        <!--轮播 -->
        <!--<script type="text/javascript">-->
        <!--(function() {-->
        <!--$('.am-slider').flexslider();-->
        <!--});-->
        <!--$(document).ready(function() {-->
        <!--$("li").hover(function() {-->
        <!--$(".category-content .category-list li.first .menu-in").css("display", "none");-->
        <!--$(".category-content .category-list li.first").removeClass("hover");-->
        <!--$(this).addClass("hover");-->
        <!--$(this).children("div.menu-in").css("display", "block")-->
        <!--}, function() {-->
        <!--$(this).removeClass("hover")-->
        <!--$(this).children("div.menu-in").css("display", "none")-->
        <!--});-->
        <!--})-->
        <!--</script>-->


        <!--小导航 -->
        <div class="am-g am-g-fixed smallnav">
            <div class="am-u-sm-3">
                <a href="sort.html"><img src="../images/navsmall.jpg"/>
                    <div class="title">商品分类</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="../images/huismall.jpg"/>
                    <div class="title">大聚惠</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="../images/mansmall.jpg"/>
                    <div class="title">个人中心</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="../images/moneysmall.jpg"/>
                    <div class="title">投资理财</div>
                </a>
            </div>
        </div>

        <!--走马灯 -->

        <div class="marqueen">
            <span class="marqueen-title">商城头条</span>
            <div class="demo">

                <ul>
                    <li class="title-first"><a target="_blank" href="#">
                        <img src="../images/TJ2.jpg"></img>
                        <span>[特惠]</span>商城爆品1分秒
                    </a></li>
                    <li class="title-first"><a target="_blank" href="#">
                        <span>[公告]</span>商城与广州市签署战略合作协议
                        <img src="../images/TJ.jpg"></img>
                        <p>XXXXXXXXXXXXXXXXXX</p>
                    </a></li>

                    <div class="mod-vip">
                        <div class="m-baseinfo">
                            <a href="../person/index.html">
                                <img src="../images/getAvatar.do.jpg">
                            </a>
                            <em>
                                Hi,<span class="s-name">小叮当</span>
                                <a href="#"><p>点击更多优惠活动</p></a>
                            </em>
                        </div>
                        <div class="member-logout">
                            <a class="am-btn-warning btn" href="login.html">登录</a>
                            <a class="am-btn-warning btn" href="register.html">注册</a>
                        </div>
                        <div class="member-login">
                            <a href="#"><strong>0</strong>待收货</a>
                            <a href="#"><strong>0</strong>待发货</a>
                            <a href="#"><strong>0</strong>待付款</a>
                            <a href="#"><strong>0</strong>待评价</a>
                        </div>
                        <div class="clear"></div>
                    </div>

                    <li><a target="_blank" href="#"><span>[特惠]</span>洋河年末大促，低至两件五折</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
                    <li><a target="_blank" href="#"><span>[特惠]</span>家电狂欢千亿礼券 买1送1！</a></li>

                </ul>
                <div class="advTip"><img src="../images/advTip.jpg"/></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <script type="text/javascript">
        if ($(window).width() < 640) {
            function autoScroll(obj) {
                $(obj).find("ul").animate({
                    marginTop: "-39px"
                }, 500, function () {
                    $(this).css({
                        marginTop: "0px"
                    }).find("li:first").appendTo(this);
                })
            }

            $(function () {
                setInterval('autoScroll(".demo")', 3000);
            })
        }
    </script>
</div>
<div class="shopMainbg" id="shopMainbg">
    <div class="shopMain" id="shopmain">

        <!--今日推荐 -->

        <div class="am-g am-g-fixed recommendation">
            <div class="clock am-u-sm-3">
                <img src="../images/2016.png "></img>
                <p>今日<br>推荐</p>
            </div>
            <div class="am-u-sm-4 am-u-lg-3 ">
                <div class="info ">
                    <h3>真的有鱼</h3>
                    <h4>开年福利篇</h4>
                </div>
                <div class="recommendationMain ">
                    <img src="../images/tj.png "></img>
                </div>
            </div>
            <div class="am-u-sm-4 am-u-lg-3 ">
                <div class="info ">
                    <h3>囤货过冬</h3>
                    <h4>让爱早回家</h4>
                </div>
                <div class="recommendationMain ">
                    <img src="../images/tj1.png "></img>
                </div>
            </div>
            <div class="am-u-sm-4 am-u-lg-3 ">
                <div class="info ">
                    <h3>浪漫情人节</h3>
                    <h4>甜甜蜜蜜</h4>
                </div>
                <div class="recommendationMain ">
                    <img src="../images/tj2.png "></img>
                </div>
            </div>

        </div>
        <div class="clear "></div>
        <!--热门活动 -->

        <div class="am-container activity ">
            <div class="shopTitle ">
                <h4>活动</h4>
                <h3>每期活动 优惠享不停 </h3>
                <span class="more ">
                              <a class="more-link " href="# ">全部活动</a>
                            </span>
            </div>

            <div class="am-g am-g-fixed ">
                <div class="am-u-sm-3 ">
                    <div class="icon-sale one "></div>
                    <h4>秒杀</h4>
                    <div class="activityMain ">
                        <img src="../images/activity1.jpg "></img>
                    </div>
                    <div class="info ">
                        <h3>春节送礼优选</h3>
                    </div>
                </div>

                <div class="am-u-sm-3 ">
                    <div class="icon-sale two "></div>
                    <h4>特惠</h4>
                    <div class="activityMain ">
                        <img src="../images/activity2.jpg "></img>
                    </div>
                    <div class="info ">
                        <h3>春节送礼优选</h3>
                    </div>
                </div>

                <div class="am-u-sm-3 ">
                    <div class="icon-sale three "></div>
                    <h4>团购</h4>
                    <div class="activityMain ">
                        <img src="../images/activity3.jpg "></img>
                    </div>
                    <div class="info ">
                        <h3>春节送礼优选</h3>
                    </div>
                </div>

                <div class="am-u-sm-3 last ">
                    <div class="icon-sale "></div>
                    <h4>超值</h4>
                    <div class="activityMain ">
                        <img src="../images/activity.jpg "></img>
                    </div>
                    <div class="info ">
                        <h3>春节送礼优选</h3>
                    </div>
                </div>

            </div>
        </div>
        <div class="clear "></div>

        <!--甜点-->

        <!--<div class="am-container ">-->
        <!--<div class="shopTitle ">-->
        <!--<h4>甜品</h4>-->
        <!--<h3>每一道甜品都有一个故事</h3>-->
        <!--<div class="today-brands ">-->
        <!--<a href="# ">桂花糕</a>-->
        <!--<a href="# ">奶皮酥</a>-->
        <!--<a href="# ">栗子糕 </a>-->
        <!--<a href="# ">马卡龙</a>-->
        <!--<a href="# ">铜锣烧</a>-->
        <!--<a href="# ">豌豆黄</a>-->
        <!--</div>-->
        <!--<span class="more ">-->
        <!--<a class="more-link " href="# ">更多美味</a>-->
        <!--</span>-->
        <!--</div>-->
        <!--</div>-->
        <!---->
        <!--<div class="am-g am-g-fixed floodOne ">-->
        <!--<div class="am-u-sm-5 am-u-md-3 am-u-lg-4 text-one ">-->
        <!--<a href="# ">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--零食大礼包开抢啦-->
        <!--</div>					-->
        <!--<div class="sub-title ">-->
        <!--当小鱼儿恋上软豆腐-->
        <!--</div>-->
        <!--</div>-->
        <!--<img src="../images/act1.png " />								-->
        <!--</a>-->
        <!--</div>-->
        <!--<div class="am-u-sm-7 am-u-md-5 am-u-lg-4">-->
        <!--<div class="text-two">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--雪之恋和风大福-->
        <!--</div>									-->
        <!--<div class="sub-title ">-->
        <!--仅售：¥13.8-->
        <!--</div>-->
        <!---->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act2.png " /></a>-->
        <!--</div>-->
        <!--<div class="text-two last">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--雪之恋和风大福-->
        <!--</div>-->
        <!--<div class="sub-title ">-->
        <!--仅售：¥13.8-->
        <!--</div>-->
        <!---->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act2.png " /></a>-->
        <!--</div>-->
        <!--</div>-->
        <!--<div class="am-u-sm-12 am-u-md-4 ">-->
        <!--<div class="am-u-sm-3 am-u-md-6 text-three">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--小优布丁-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--尝鲜价：¥4.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act3.png " /></a>-->
        <!--</div>-->

        <!--<div class="am-u-sm-3 am-u-md-6 text-three">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--小优布丁-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--尝鲜价：¥4.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act3.png " /></a>-->
        <!--</div>-->

        <!--<div class="am-u-sm-3 am-u-md-6 text-three">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--小优布丁-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--尝鲜价：¥4.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act3.png " /></a>-->
        <!--</div>-->

        <!--<div class="am-u-sm-3 am-u-md-6 text-three last ">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--小优布丁-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--尝鲜价：¥4.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act3.png " /></a>-->
        <!--</div>-->
        <!--</div>-->

        <!--</div>-->
        <!--<div class="clear "></div>-->
        <!--坚果-->
        <!--<div class="am-container ">-->
        <!--<div class="shopTitle ">-->
        <!--<h4>坚果</h4>-->
        <!--<h3>酥酥脆脆，回味无穷</h3>-->
        <!--<div class="today-brands ">-->
        <!--<a href="# ">腰果</a>-->
        <!--<a href="# ">松子</a>-->
        <!--<a href="# ">夏威夷果 </a>-->
        <!--<a href="# ">碧根果</a>-->
        <!--<a href="# ">开心果</a>-->
        <!--<a href="# ">核桃仁</a>-->
        <!--</div>-->
        <!--<span class="more ">-->
        <!--<a class="more-link " href="# ">更多美味</a>-->
        <!--</span>-->
        <!--</div>-->
        <!--</div>-->
        <!--<div class="am-g am-g-fixed floodTwo ">-->
        <!---->
        <!---->
        <!--<div class="am-u-sm-5 am-u-md-4 text-one ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/act1.png " />-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--零食大礼包开抢啦-->
        <!--</div>-->
        <!--<div class="sub-title ">-->
        <!--当小鱼儿恋上软豆腐-->
        <!--</div>-->
        <!---->
        <!--</div>-->
        <!--</a>-->
        <!--</div>-->
        <!--<div class="am-u-sm-7 am-u-md-4 am-u-lg-2 text-two">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--雪之恋和风大福-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--仅售：¥13.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/5.jpg " /></a>						-->
        <!--</div>-->
        <!---->
        <!--<div class="am-u-md-4 am-u-lg-2 text-three">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--小优布丁-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--尝鲜价：¥4.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act3.png " /></a>-->
        <!--</div>-->
        <!--<div class="am-u-md-4 am-u-lg-2 text-three">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--小优布丁-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--尝鲜价：¥4.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act3.png " /></a>-->
        <!--</div>-->
        <!--<div class="am-u-sm-6 am-u-md-4 am-u-lg-2 text-two ">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--雪之恋和风大福-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--仅售：¥13.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/5.jpg " /></a>						-->
        <!--</div>						-->
        <!--<div class="am-u-sm-6 am-u-md-3 am-u-lg-2 text-four ">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--雪之恋和风大福-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--仅售：¥13.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/5.jpg " /></a>						-->
        <!--</div>				-->
        <!--<div class="am-u-sm-4 am-u-md-3 am-u-lg-4 text-five">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--小优布丁-->
        <!--</div>								-->
        <!--<div class="sub-title ">-->
        <!--尝鲜价：¥4.8-->
        <!--</div>-->
        <!---->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act2.png " /></a>-->
        <!--</div>	-->
        <!--<div class="am-u-sm-4 am-u-md-3 am-u-lg-2 text-six">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--小优布丁-->
        <!--</div>-->
        <!---->
        <!--<div class="sub-title ">-->
        <!--尝鲜价：¥4.8-->
        <!--</div>-->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act3.png " /></a>-->
        <!--</div>	-->
        <!--<div class="am-u-sm-4 am-u-md-3 am-u-lg-4 text-five">-->
        <!--<div class="outer-con ">-->
        <!--<div class="title ">-->
        <!--小优布丁-->
        <!--</div>-->
        <!--<div class="sub-title ">-->
        <!--尝鲜价：¥4.8-->
        <!--</div>-->
        <!---->
        <!--</div>-->
        <!--<a href="# "><img src="../images/act2.png " /></a>-->
        <!--</div>							-->
        <!--</div>-->

        <!--<div class="clear "></div>-->


        <!---->
        <!--<div class="am-container ">-->
        <!--<div class="shopTitle ">-->
        <!--<h4>海味</h4>-->
        <!--<h3>你是我的优乐美么？不，我是你小鱼干</h3>-->
        <!--<div class="today-brands ">-->
        <!--<a href="# ">小鱼干</a>-->
        <!--<a href="# ">海苔</a>-->
        <!--<a href="# ">鱿鱼丝</a>-->
        <!--<a href="# ">海带丝</a>-->
        <!--</div>-->
        <!--<span class="more ">-->
        <!--<a class="more-link " href="# ">更多美味</a>-->
        <!--</span>-->
        <!--</div>-->
        <!--</div>-->
        <!--<div class="am-g am-g-fixed flood method3 ">-->
        <!--<ul class="am-thumbnails ">-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp.jpg " />-->
        <!--<div class="pro-title ">萨拉米 1+1小鸡腿</div>-->
        <!--<span class="e-price ">￥29.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp2.jpg " />-->
        <!--<div class="pro-title ">ZEK 原味海苔</div>-->
        <!--<span class="e-price ">￥8.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp.jpg " />-->
        <!--<div class="pro-title ">萨拉米 1+1小鸡腿</div>-->
        <!--<span class="e-price ">￥29.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp2.jpg " />-->
        <!--<div class="pro-title ">ZEK 原味海苔</div>-->
        <!--<span class="e-price ">￥8.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp.jpg " />-->
        <!--<div class="pro-title ">萨拉米 1+1小鸡腿</div>-->
        <!--<span class="e-price ">￥29.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp2.jpg " />-->
        <!--<div class="pro-title ">ZEK 原味海苔</div>-->
        <!--<span class="e-price ">￥8.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp.jpg " />-->
        <!--<div class="pro-title ">萨拉米 1+1小鸡腿</div>-->
        <!--<span class="e-price ">￥29.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp2.jpg " />-->
        <!--<div class="pro-title ">ZEK 原味海苔</div>-->
        <!--<span class="e-price ">￥8.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp.jpg " />-->
        <!--<div class="pro-title ">萨拉米 1+1小鸡腿</div>-->
        <!--<span class="e-price ">￥29.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li>-->
        <!--<div class="list ">-->
        <!--<a href="# ">-->
        <!--<img src="../images/cp2.jpg " />-->
        <!--<div class="pro-title ">ZEK 原味海苔</div>-->
        <!--<span class="e-price ">￥8.90</span>-->
        <!--</a>-->
        <!--</div>-->
        <!--</li>-->

        <!--</ul>-->

        <!--</div>-->

        <!--<div class="footer ">-->
        <!--<div class="footer-hd ">-->
        <!--<p>-->
        <!--<a href="# ">恒望科技</a>-->
        <!--<b>|</b>-->
        <!--<a href="# ">商城首页</a>-->
        <!--<b>|</b>-->
        <!--<a href="# ">支付宝</a>-->
        <!--<b>|</b>-->
        <!--<a href="# ">物流</a>-->
        <!--</p>-->
        <!--</div>-->
        <!--<div class="footer-bd ">-->
        <!--<p>-->
        <!--<a href="# ">关于恒望</a>-->
        <!--<a href="# ">合作伙伴</a>-->
        <!--<a href="# ">联系我们</a>-->
        <!--<a href="# ">网站地图</a>-->
        <!--<em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>-->
        <!--</p>-->
        <!--</div>-->
        <!--</div>-->
    </div>
</div>
<!--引导 -->
<div class="navCir">
    <li class="active"><a href="home3.jsphome3.html"><i class="am-icon-home "></i>首页</a></li>
    <li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
    <li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>
    <li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>
</div>
<!--菜单 -->
<div class=tip>
    <div id="sidebar">
        <div id="wrap">
            <div id="prof" class="item ">
                <a href="# ">
                    <span class="setting "></span>
                </a>
                <div class="ibar_login_box status_login ">
                    <div class="avatar_box ">
                        <p class="avatar_imgbox "><img src="../images/no-img_mid_.jpg "/></p>
                        <ul class="user_info ">
                            <li>用户名：sl1903</li>
                            <li>级&nbsp;别：普通会员</li>
                        </ul>
                    </div>
                    <div class="login_btnbox ">
                        <a href="# " class="login_order ">我的订单</a>
                        <a href="# " class="login_favorite ">我的收藏</a>
                    </div>
                    <i class="icon_arrow_white "></i>
                </div>

            </div>
            <div id="shopCart " class="item ">
                <a href="# ">
                    <span class="message "></span>
                </a>
                <p>
                    购物车
                </p>
                <p class="cart_num ">0</p>
            </div>
            <div id="asset " class="item ">
                <a href="# ">
                    <span class="view "></span>
                </a>
                <div class="mp_tooltip ">
                    我的资产
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="foot " class="item ">
                <a href="# ">
                    <span class="zuji "></span>
                </a>
                <div class="mp_tooltip ">
                    我的足迹
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="brand " class="item ">
                <a href="#">
                    <span class="wdsc "><img src="../images/wdsc.png "/></span>
                </a>
                <div class="mp_tooltip ">
                    我的收藏
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="broadcast " class="item ">
                <a href="# ">
                    <span class="chongzhi "><img src="../images/chongzhi.png "/></span>
                </a>
                <div class="mp_tooltip ">
                    我要充值
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div class="quick_toggle ">
                <li class="qtitem ">
                    <a href="# "><span class="kfzx "></span></a>
                    <div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
                </li>
                <!--二维码 -->
                <li class="qtitem ">
                    <a href="#none "><span class="mpbtn_qrcode "></span></a>
                    <div class="mp_qrcode " style="display:none; "><img src="../images/weixin_code_145.png "/><i
                            class="icon_arrow_white "></i></div>
                </li>
                <li class="qtitem ">
                    <a href="#top " class="return_top "><span class="top "></span></a>
                </li>
            </div>

            <!--回到顶部 -->
            <div id="quick_links_pop " class="quick_links_pop hide "></div>

        </div>

    </div>
    <div id="prof-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            我
        </div>
    </div>
    <div id="shopCart-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            购物车
        </div>
    </div>
    <div id="asset-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            资产
        </div>

        <div class="ia-head-list ">
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">优惠券</div>
            </a>
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">红包</div>
            </a>
            <a href="# " target="_blank " class="pl money ">
                <div class="num ">￥0</div>
                <div class="text ">余额</div>
            </a>
        </div>

    </div>
    <div id="foot-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            足迹
        </div>
    </div>
    <div id="brand-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            收藏
        </div>
    </div>
    <div id="broadcast-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            充值
        </div>
    </div>
</div>
<script>
    window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
</script>
<script type="text/javascript " src="../basic/js/quick_links.js "></script>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: weirong
  Date: 2019/10/13
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta name="referrer" content="no-referrer">
    <meta name='TTUNION_verify' content='b846c3c2b85efabc496d2a2b8399cd62'>
    <meta name="baidu_union_verify" content="cac58ed2e3155eda17d13f99c687243a">
    <meta name="sogou_site_verification" content="gI1bINaJcL"/>
    <meta name="360-site-verification" content="37ae9186443cc6e270d8a52943cd3c5a"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content=" ">
    <meta name="description" content="">
    <meta name="author" content="AUI, a-ui.com">
    <meta name="baidu-site-verification" content="ZVPGgtpUfW"/>
    <title>菲尔普斯数码城</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link href="../iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">

    <meta http-equiv="X-UA-Compatible" content="edge"/>
    <link rel="stylesheet" type="text/css" href="../css/common.css">

    <script src="../js/jquery-1.8.3.min.js"></script>
    <script src="../js/jquery.fly.min.js"></script>
    <script src="../js/public.js"></script>
    <script src="../js/base.js"></script>
    <script>
        document.createElement("top")
    </script>
    <script>
        document.createElement("search")
    </script>
    <script>
        document.createElement("light")
    </script>
    <script>
        document.createElement("light1")
    </script>
</head>
<body>
<!--最大的背景-->
<%--<div class="maxbj"></div>--%>
<!--头部-->
<top>
    <section class="seck">
        <div class="register_login">
            <em>您好</em>
            <a href="../info/inUserInfo" name="${username}">${username}</a>
        </div>

    </section>
</top>
<!--header-->
<div class="maxbj1">
    <header>
        <h1 class="logo logo-size">
            <img src="../images/logo.png">
        </h1>
        <search>
            <form action="../main/search" method="post">
                <input type="text" placeholder="" required style=" width:610px; height:34px; text-indent:2em; float:left; box-shadow:none" name ="world">
                <button>搜索</button>
            </form>
        </search>
        <div class="sping_car">
            <b></b>
            <a href="../cart/incart"><em>我的购物车</em></a>
        </div>
    </header>
</div>
<!--导航-->
<section class="dao_hang">
    <nav>
        <!--全部商品分类-->
        <div class="important" style="cursor: default">
            <img src="../images/all_list.png" style=" margin-top:13px">
            全部商品分类
            <aside style="top:42px;">
                <ul>
                    <li class="cates" mt-ct="list01">
                        <h3 style="cursor: default">手机</h3>
                        <p>
                            <a href="../main/moreOrOneBrandMoreCommodity?category=1">手机</a>
                            <i style="font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">></i>
                        </p>
                    </li>
                    <li class="cates" mt-ct="list02">
                        <h3 style="cursor: default">平板电脑</h3>
                        <p>
                            <a href="../main/moreOrOneBrandMoreCommodity?category=2">平板电脑</a>
                            <i style="font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">></i>
                        </p>
                    </li>
                    <li class="cates" mt-ct="list03">
                        <h3 style="cursor: default">配件</h3>
                        <p>
                            <a href="../main/moreOrOneKindMoreParts?kind=耳机">耳机</a>
                            <a href="../main/moreOrOneKindMoreParts?kind=保护壳">保护壳</a>
                            <a href="../main/moreOrOneKindMoreParts?kind=充电宝">充电宝</a>
                            <a href="../main/moreOrOneKindMoreParts?kind=充电器">充电器</a>
                            <a href="../main/moreOrOneKindMoreParts?kind=平板配件">平板配件</a>
                            <i style=" font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">></i>
                        </p>
                    </li>
                </ul>
            </aside>
            <div>
                <div class="import_list b-list01">
                    <dt>手机：</dt>
                    <dd>
                        <a href="../main/moreOrOneBrandMoreCommodity?category=1">全部品牌</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=苹果&category=1">苹果</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=三星&category=1">三星</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=小米&category=1">小米</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=荣耀&category=1">荣耀</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=华为&category=1">华为</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=OPPO&category=1">OPPO</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=VIVO&category=1">VIVO</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=一加&category=1">一加</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=魅族&category=1">魅族</a>
                    </dd>
                </div>
                <div class="import_list b-list02">
                    <dt>平板电脑：</dt>
                    <dd>
                        <a href="../main/moreOrOneBrandMoreCommodity?category=2">全部品牌</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=苹果&category=2">苹果</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=三星&category=2">三星</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=荣耀&category=2">荣耀</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=华为&category=2">华为</a>
                        <a href="../main/moreOrOneBrandMoreCommodity?brand=小米&category=2">小米</a>
                    </dd>
                </div>
                <div class="import_list b-list03">
                    <dt>配件：</dt>
                    <dd>
                        <a href="../main/moreOrOneKindMoreParts">全部配件</a>
                        <a href="../main/moreOrOneKindMoreParts?kind=耳机">耳机</a>
                        <a href="../main/moreOrOneKindMoreParts?kind=保护壳">保护壳</a>
                        <a href="../main/moreOrOneKindMoreParts?kind=充电宝">充电宝</a>
                        <a href="../main/moreOrOneKindMoreParts?kind=充电器">充电器</a>
                        <a href="../main/moreOrOneKindMoreParts?kind=平板配件">平板配件</a>
                    </dd>
                </div>
            </div>
        </div>
        <!--结束-->
        <div class="dao_list">
            <a href="../main/success">首页</a>
            <a href="../main/moreOrOneBrandMoreCommodity?category=1">手机</a>
            <a href="../main/moreOrOneBrandMoreCommodity?category=2">平板电脑</a>
            <a href="../main/moreOrOneKindMoreParts">配件</a>
            <%--            <a href="#">会员</a>--%>
        </div>
    </nav>
</section>
<!--banner-->
<div id="banner_tabs" class="flexslider">
    <ul class="slides">
        <li>
            <a title="" target="_blank" href="../main/inCommodity?model=小米CC9 Pro">
                <img width="1920" height="500" alt=""
                     style="background:#e1211e url(../images/小米CC9pro.1.jpg) no-repeat center;"
                     src="../images/alpha.png">
            </a>
        </li>
        <li>
            <a title=""target="_blank" href="../main/inCommodity?model=苹果 iPad Pro 11英寸">
                <img width="1920" height="500" alt=""
                     style="background:#900 url(../images/ipd11.1.jpg) no-repeat center;" src="../images/alpha.png">
            </a>
        </li>
        <li>
            <a title="" target="_blank" target="_blank" href="../main/inCommodity?model=华为 Mate30Pro">
                <img width="1920" height="500" alt=""
                     style="background:#e1211e url(../images/华为30pro.1.jpg) no-repeat center;"
                     src="../images/alpha.png">
            </a>
        </li>
        <li>
            <a title="" target="_blank" href="../main/inCommodity?model=华为MatePad Pro10.8英寸">
                <img width="1920" height="500" alt=""
                     style="background:#900 url(../images/华为pad.1.jpg) no-repeat center;" src="../images/alpha.png">
            </a>
        </li>
    </ul>
    <ul class="flex-direction-nav">
        <li>
            <a class="flex-prev" href="javascript:;">Previous</a>
        </li>
        <li>
            <a class="flex-next" href="javascript:;">Next</a>
        </li>
    </ul>
    <ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
        <li class="active">
            <a>1</a>
        </li>
        <li>
            <a>2</a>
        </li>
        <li>
            <a>2</a>
        </li>
        <li>
            <a>2</a>
        </li>
    </ol>
</div>
<script src="../js/slider.js" type="text/javascript"></script>
<!--gong告-->
<script type="text/javascript">


    window.onload = function () {
        // $("top").animate({'margin-top':'0'},2000)
        $(".advertisement").animate({'top': '42', 'opacity': '1'}, 200)
        $(".flexslider").animate({'margin-top': '0'}, 200)
        $("aside").animate({'top': '42', 'opacity': '1'}, 200)
        // $("top").animate({'margin-top':'-400'},1000)

    }


</script>

<!--手机-->
<span class="as blessing_package pick-back-b">
            <a href="#" style=" color:#000">
                <h3 style="float:left;cursor: default" class="pick-back2">
                    手机
                </h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <a href="../main/moreOrOneBrandMoreCommodity?category=1">查看更多</a>
                </ul>
            </div>
        </span>
<div>
    <div class="currency f-1-lt01">

        <c:forEach items="${list1}" var="phone">
            <tr>
                <ul>
                    <li>
                        <a href="../main/inCommodity?model=${phone.model}">
                            <img src="${phone.picture}"
                                 style=" margin:0 auto; display:block; width:220px; height:220px">
                        </a>
                        <light1>
                            <img src="../images/saoguang.png">
                        </light1>
                        <span><td>${phone.price1}</td>元起</span>
                        <a href="../main/inCommodity?model=${phone.model}">
                            <p>
                            <td>${phone.model}</td>
                            </p>
                        </a>
                    </li>
                </ul>
            </tr>
        </c:forEach>
    </div>
</div>

<!--平板电脑-->
<span class="as blessing_package pick-back-c">
            <a href="#" style=" color:#000">
                <h3 style="float:leftc;ursor: default" class="pick-back3">
                    平板电脑
                </h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <a href="../main/moreOrOneBrandMoreCommodity?category=2">查看更多</a>
                </ul>
            </div>
        </span>
<div>
    <div class="currency f-2-lt01">
        <c:forEach items="${list2}" var="tablepc">
            <tr>
                <ul>
                    <li>
                        <a href="../main/inCommodity?model=${tablepc.model}">
                            <img src="${tablepc.picture}"
                                 style=" margin:0 auto; display:block; width:220px; height:220px">
                        </a>
                        <light1>
                            <img src="../images/saoguang.png">
                        </light1>
                        <span><td>${tablepc.price1}</td>元起</span>
                        <a href="../main/inCommodity?model=${tablepc.model}">
                            <p>
                            <td>${tablepc.model}</td>
                            </p>
                        </a>
                    </li>
                </ul>
            </tr>
        </c:forEach>
    </div>
</div>
<!--配件-->
<span class="as blessing_package pick-back-d">
            <a href="#" style=" color:#000">
                <h3 style="float:left;cursor: default" class="pick-back4">
                    配件
                </h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <a href="../main/moreOrOneKindMoreParts">查看更多</a>
                </ul>
            </div>
        </span>
<div>
    <div class="currency f-3-lt01">
        <c:forEach items="${list3}" var="parts">
            <tr>
                <ul>
                    <li>
                        <a href="../main/inparts?model=${parts.model}">
                            <img src="${parts.picture}"
                                 style=" margin:0 auto; display:block; width:220px; height:220px">
                        </a>
                        <light1>
                            <img src="../images/saoguang.png">
                        </light1>
                        <span><td>${parts.price}</td>元</span>
                        <a href="../main/inparts?model=${parts.model}">
                            <p>
                            <td>${parts.model}</td>
                            </p>
                        </a>
                    </li>
                </ul>
            </tr>
        </c:forEach>
    </div>
</div>

<footer>
    <div class="pc-footer-lin">
        <div class="center">
            <p>友情链接：
                <a href="https://www.mi.com/" target="_blank">小米官网</a>
                <a href="https://www.apple.com/cn/" target="_blank">苹果官网</a>
                <a href="https://www.huawei.com/cn/" target="_blank">华为官网</a>
                <a href="http://www.oppo.com/cn/" target="_blank">OPPO官网</a>
                <a href="https://www.samsung.com/cn/" target="_blank">三星官网</a>
                <a href="http://www.honor.cn/" target="_blank">荣耀官网</a>
                <a href="https://www.vivo.com/" target="_blank">VIVO官网</a>
                <a href="https://www.meizu.com/" target="_blank">魅族官网</a>
                <a href="https://www.oneplus.com/cn" target="_blank">一加官网</a>
            </p>
            <p style="padding-bottom:30px">Copyright©2019-2019 版权所有 菲尔普斯数码城 </p>
        </div>
    </div>
    </div>
</footer>
<!--侧边栏-->
<%--<div class="toolbar">--%>
<%--    <a href="###" class="toolbar-item toolbar-item-weixin" style=" position:relative">--%>
<%--        <em style=" position:absolute; display:block; line-height:20px; font-size:12px; color:#f00; top:-20px; left:0">(0)</em>--%>
<%--        <!--<span class="toolbar-layer"></span>-->--%>
<%--    </a>--%>
<%--    <a href="###" class="toolbar-item toolbar-item-feedback"></a>--%>
<%--    <a href="###" class="toolbar-item toolbar-item-app">--%>
<%--        <span class="toolbar-layer"></span>--%>
<%--    </a>--%>
<%--    <a href="javascript:scroll(0,0)" id="top" class="toolbar-item toolbar-item-top"></a>--%>
<%--</div>--%>
<!--购物车fly插件-->
</body>
</html>


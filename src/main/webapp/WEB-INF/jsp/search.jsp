<%--
  Created by IntelliJ IDEA.
  User: weirong
  Date: 2019/11/12
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta name="referrer" content="no-referrer">
    <title>收索结果</title>
    <script src="../js/jquery-1.9.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/common.css">
    <script src="../js/jquery.fly.min.js"></script>
    <script src="../js/public.js"></script>
    <script src="../js/base.js"></script>
</head>
<body>
<!-----header部分------->
<top>
    <section class="seck">

        <div class="register_login">
            <em>您好</em>
            <a href="../info/inUserInfo">${username}</a>
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
            商城全部频道
        </div>
        <!--结束-->
        <div class="dao_list">
            <a href="../main/success">首页</a>
            <a href="../main/moreOrOneBrandMoreCommodity?category=1">手机</a>
            <a href="../main/moreOrOneBrandMoreCommodity?category=2">平板电脑</a>
            <a href="../main/moreOrOneKindMoreParts">配件</a>
        </div>
    </nav>
</section>
<div>
    <div class="currency f-1-lt01">
        <c:forEach items="${list1}" var="commodity">
            <tr>
                <ul>
                    <li>
                        <a href="inCommodity?model=${commodity.model}">
                            <img src="${commodity.picture}"style=" margin:0 auto; display:block; width:220px; height:220px">
                        </a>
                        <light1>
                            <img src="../images/saoguang.png">
                        </light1>
                        <span><td>${commodity.price1}</td>元起</span>
                        <a href="inphone?model=${commodity.model}">
                            <p><td>${commodity.model}</td></p>
                        </a>
                    </li>
                </ul>
            </tr>
        </c:forEach>

        <c:forEach items="${list3}" var="parts">
            <tr>
                <ul>
                    <li>
                        <a href="inparts?model=${parts.model}">
                            <img src="${parts.picture}"style=" margin:0 auto; display:block; width:220px; height:220px">
                        </a>
                        <light1>
                            <img src="../images/saoguang.png">
                        </light1>
                        <span><td>${parts.price}</td>元</span>
                        <a href="inparts?model=${parts.model}">
                            <p><td>${parts.model}</td></p>
                        </a>
                    </li>
                </ul>
            </tr>
        </c:forEach>
    </div>
</div>
</body>
</html>
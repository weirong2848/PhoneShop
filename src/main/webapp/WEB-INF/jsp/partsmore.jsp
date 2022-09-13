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
    <title>配件主页</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css">
    <link rel="stylesheet" type="text/css" href="../css/partsmore.css">
    <script src="../js/jquery-1.9.1.min.js"></script>
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
            <a href="../cart/incart" onclick=""><em>我的购物车</em></a>
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
        <c:forEach items="${pageInfo.list}" var="parts">
            <tr>
                <ul>
                    <li>
                        <a href="inparts?commodityId=${parts.commodityId}">
                            <img src="${parts.picture}"style=" margin:0 auto; display:block; width:220px; height:220px">
                        </a>
                        <light1>
                            <img src="../images/saoguang.png">
                        </light1>
                        <span><td>${parts.price}</td>元</span>
                        <a href="inparts?commodityId=${parts.commodityId}">
                            <p><td>${parts.model}</td></p>
                        </a>
                    </li>
                </ul>
            </tr>
        </c:forEach>
    </div>
    <div class="page" style="text-align: center;font-size: 15px;" id="p"><br/>
        <div class="pagelist">当前第${pageInfo.pageNum}页,总共${pageInfo.pages}页<br/><br/>
            <a href="moreOrOneKindMoreParts?pageNo=1&kind=${kind}"><span class="white button">首页</span></a>
            <a href="moreOrOneKindMoreParts?pageNo=${pageinfo.pageNum-1}&kind=${kind}"><span class="white button">上一页</span></a>
            <c:forEach items="${pageInfo.navigatepageNums}" var="pageNo">
                <a href="moreOrOneKindMoreParts?pageNo=${pageNo}&kind=${kind}"><span class="white button">${pageNo}</span></a>
            </c:forEach>
            <a href="moreOrOneKindMoreParts?pageNo=${pageInfo.pageNum+1}&kind=${kind}"><span class="white button">下一页</span></a>
            <a href="moreOrOneKindMoreParts?pageNo=${pageInfo.pages}&kind=${kind}"><span class="white button">末页</span></a>
        </div>
    </div>
</div>
<footer>
    <div class="pc-footer-lin" >
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
</body>
</html>

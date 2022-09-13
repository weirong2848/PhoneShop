<%--
  Created by IntelliJ IDEA.
  User: weirong
  Date: 2019/11/15
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta name="referrer" content="no-referrer">
    <title>购物车页面</title>
    <link href="../css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="../css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/optstyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="../js/cart.js"></script>
</head>
<body>

<!--顶部导航条 -->

<top>
    <section class="seck">
        <div class="register_login">
            <em>您好</em>
            <a href="../info/inUserInfo" id="username">${username}</a>
        </div>
    </section>
</top>

<!--悬浮搜索框-->
<div class="clear"></div>
<div class="nav white">
    <div class="logo"><img src="../images/logo.png" /></div>
    <div class="logoBig">
        <li><a href="../main/success"><img src="../images/logo.png" /></a></li>
    </div>

    <div class="search-bar pr">
        <a name="index_none_header_sysc" href="#"></a>
        <form action="../main/search" method="post">
            <input id="searchInput" name="world" type="text" placeholder="" autocomplete="off">
            <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
        </form>
    </div>
</div>

<div class="clear"></div>

<!--购物车 -->
<div class="concent">
    <div id="cartTable">
        <div class="cart-table-th">
            <div class="wp">
                <div class="th th-chk">
                    <div id="J_SelectAll1" class="select-all J_SelectAll">

                    </div>
                </div>
                <div class="th th-item">
                    <div class="td-inner">商品信息</div>
                </div>
                <div class="th th-price">
                    <div class="td-inner">单价</div>
                </div>
                <div class="th th-amount">
                    <div class="td-inner">数量</div>
                </div>
                <div class="th th-sum">
                    <div class="td-inner">金额</div>
                </div>
                <div class="th th-op">
                    <div class="td-inner">操作</div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
<c:forEach items="${list}" var="shoppingCart">
        <tr class="item-list">
            <div class="bundle  bundle-last ">
                <div class="bundle-hd">
                    <div class="bd-promos">
                        <span class="list-change theme-login">编辑</span>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="bundle-main">
                    <ul class="item-content clearfix">
                        <li class="td td-chk">
                            <div class="cart-checkbox ">
                                <input class="check" id="J_CheckBox" name="items" value="${shoppingCart.price * shoppingCart.number},${shoppingCart.number}" type="checkbox" onclick="getpay(
                                    '${shoppingCart.id}','${shoppingCart.model}','${shoppingCart.price * shoppingCart.number}','${shoppingCart.number}','${shoppingCart.color}','${shoppingCart.memoryCapacity}')">
<%--                                <label for="J_CheckBox_170037950254"></label>--%>
                            </div>
                        </li>
                        <li class="td td-item">
                            <div class="item-pic">
                                <a target="_blank" data-title="" class="J_MakePoint" data-point="tbcart.8.12" style="cursor: default">
                                    <img src="${shoppingCart.picture}" class="itempic J_ItemImg" width="80px" height="80px"></a>
                                <a id="model"><td>${shoppingCart.model}</td></a>
                            </div>
                            <div class="item-info">
                                <div class="item-basic-info">
                                    <a target="_blank" title="${shoppingCart.model}" class="item-title J_MakePoint" data-point="tbcart.8.11" style="cursor: default"><td>${shoppingCart.model}</td></a>
                                </div>
                            </div>
                        </li>
                        <li class="td td-info">
                            <div class="item-props item-props-can">
                                <span class="sku-line">${shoppingCart.color ==' '?' ':'颜色：'}<td id="color">${shoppingCart.color}</td></span><br>
                                <span class="sku-line">${shoppingCart.memoryCapacity == ' '?' ':'内存容量：'}<td id="memoryCapacity">${shoppingCart.memoryCapacity}</td></span>
                                <i class="theme-login am-icon-sort-desc"></i>
                            </div>
                        </li>
                        
                        <li class="td td-price">
                            <div class="item-price price-promo-promo">
                                <div class="price-content">
                                    <div class="price-line">
                                        <em class="J_Price price-now" tabindex="0"><td>${shoppingCart.price}</td>元</em>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="td td-amount">
                            <div class="amount-wrapper ">
                                <div class="item-amount ">
                                    <div class="sl">
                                        <input class="min am-btn" name="" type="button" value="-" onclick="updatedelcart('${shoppingCart.model}',
                                                '${shoppingCart.color}','${shoppingCart.memoryCapacity}','${shoppingCart.number}')"/>
                                        <input id="number" class="text_box" readonly="readonly" type="text" value="${shoppingCart.number}" style="width:30px;" />
                                        <input class="add am-btn" name="" type="button" value="+" onclick="updateaddcart('${shoppingCart.model}',
                                               '${shoppingCart.color}','${shoppingCart.memoryCapacity}','${shoppingCart.number}')"/>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="td td-sum">
                            <div class="td-inner">
                                <em id="money" tabindex="0" class="J_ItemSum number">${shoppingCart.price * shoppingCart.number}</em><em>元</em>
                            </div>
                        </li>
                        <li class="td td-op">
                            <div class="td-inner">
                                <a href="#" data-point-url="#" class="delete" onclick="deletecart('${shoppingCart.model}','${shoppingCart.color}','${shoppingCart.memoryCapacity}')">
                                    删除</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </tr>
</c:forEach>

    <div class="clear"></div>


    <div class="float-bar-wrapper">
        <div id="J_SelectAll2" class="select-all J_SelectAll">
            <div class="cart-checkbox">
                <input class="check-all check" id="J_SelectAllCbx2" name="select-all" value="true" type="checkbox">
                <label for="J_SelectAllCbx2"></label>
            </div>
            <span>全选</span>
        </div>
        <div class="operations">
            <a href="" hidefocus="true" class="deleteAll" onclick="deleteCartByState()">删除</a>
        </div>
        <div class="float-bar-right">
            <div class="amount-sum">
                <span class="txt">商品共</span>
                <em id="J_SelectedItemsCount">0</em><span class="txt">件</span>
                <div class="arrow-box">
                    <span class="selected-items-arrow"></span>
                    <span class="arrow"></span>
                </div>
            </div>
            <div class="price-sum">
                <span class="txt">合计:</span>
                <strong class="price">¥<em id="J_Total">0.00</em>元</strong>
            </div>
            <div class="btn-area">
                <a id="J_Go" class="submit-btn submit-btn-disabled" onclick="topay()">
                    <span>结&nbsp;算</span></a>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="footer-hd">
            <p>
                <a href="../main/success">商城首页</a>
                <b>|</b>
                <a href="../main/moreOrOneBrandMoreCommodity?category=1">手机</a>
                <b>|</b>
                <a href="../main/moreOrOneBrandMoreCommodity?category=2">平板电脑</a>
                <b>|</b>
                <a href="../main/moreOrOneBrandMoreCommodity?category=3">配件</a>
            </p>
        </div>
        <div class="footer-bd">
           <p>
              <a href="javascript:void(0)">合作伙伴</a>
              <a href="javascript:void(0)">联系我们</a>
              <em>© 2019-2019 菲尔普斯数码城 版权所有</em>
           </p>
        </div>
    </div>
    </div>
</div>

<script type="text/javascript">
    $('input[name="select-all"]').on("click",function(){
        if($(this).is(':checked')){
            $('input[name="items"]').each(function(){
                $(this).prop("checked",true);
                getMoneyAndNumber();
                changeCartIfChecked(1);
            });
        }else{
            $('input[name="items"]').each(function(){
                $(this).prop("checked",false);
                getMoneyAndNumber()
                changeCartIfChecked(0);
            });
        }
    });
</script>
</body>
</html>

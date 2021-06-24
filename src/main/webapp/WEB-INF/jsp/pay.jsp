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
    <title>支付页面</title>
    <link href="../css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="../css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/optstyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/common.css" rel="stylesheet" type="text/css" />
    <link href="../css/pay2.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>\
    <script type="text/javascript" src="../js/pay.js"></script>
    <script type="text/javascript">
        $(function() {
            var region = $("#region");
            var address = $("#address");
            var number_this = $("#number_this");
            var name = $("#name_");
            var phone = $("#phone");
            $("#sub_setID").click(function() {
                var input_out = $(".input_style");
                for (var i = 0; i <= input_out.length; i++) {
                    if ($(input_out[i]).val() == "") {
                        $(input_out[i]).css("border", "1px solid red");

                        return false;
                    } else {
                        $(input_out[i]).css("border", "1px solid #cccccc");
                    }
                }
            });
            var span_momey = $(".span_momey");
            var b = 0;
            for (var i = 0; i < span_momey.length; i++) {
                b += parseFloat($(span_momey[i]).html());
            }
            var out_momey = $(".out_momey");
            out_momey.html(b);
            $(".shade_content").hide();
            $(".shade").hide();
            $('.nav_mini ul li').hover(function() {
                $(this).find('.two_nav').show(100);
            }, function() {
                $(this).find('.two_nav').hide(100);
            })
            $('.left_nav').hover(function() {
                $(this).find('.nav_mini').show(100);
            }, function() {
                $(this).find('.nav_mini').hide(100);
            })
            $('#jia').click(function() {
                $('input[name=num]').val(parseInt($('input[name=num]').val()) + 1);
            })
            $('#jian').click(function() {
                $('input[name=num]').val(parseInt($('input[name=num]').val()) - 1);
            })
            $('.Caddress .add_mi').click(function() {
                $(this).css('background', 'url("../images/mail_1.jpg") no-repeat').siblings('.add_mi').css('background',
                    'url("../images/mail.jpg") no-repeat')
            })
        })
        var x = Array();

        function func(a, b) {
            x[b] = a.html();
            alert(x)
            a.css('border', '2px solid #f00').siblings('.min_mx').css('border', '2px solid #ccc');
        }

        function onclick_close() {
            var shade_content = $(".shade_content");
            var shade = $(".shade");
            if (confirm("确认关闭么！此操作不可恢复")) {
                shade_content.hide();
                shade.hide();
            }
        }

        function onclick_open() {
            $(".shade_content").show();
            $(".shade").show();
            var input_out = $(".input_style");
            for (var i = 0; i <= input_out.length; i++) {
                if ($(input_out[i]).val() != "") {
                    $(input_out[i]).val("");
                }
            }

        }

        function onclick_remove(r) {
            if (confirm("确认删除么！此操作不可恢复")) {
                var out_momey = $(".out_momey");
                var input_val = $(r).parent().prev().children().eq(1).val();
                var span_html = $(r).parent().prev().prev().children().html();
                var out_add = parseFloat(input_val).toFixed(2) * parseFloat(span_html).toFixed(2);
                var reduce = parseFloat(out_momey.html()).toFixed(2) - parseFloat(out_add).toFixed(2);
                console.log(parseFloat(reduce).toFixed(2));
                out_momey.text(parseFloat(reduce).toFixed(2))
                $(r).parent().parent().remove();
            }
        }

        function onclick_btnAdd(a) {
            var out_momey = $(".out_momey");
            var input_ = $(a).prev();
            var input_val = $(a).prev().val();
            var input_add = parseInt(input_val) + 1;
            input_.val(input_add);
            var btn_momey = parseFloat($(a).parent().prev().children().html());
            var out_momey_float = parseFloat(out_momey.html()) + btn_momey;
            out_momey.text(out_momey_float.toFixed(2));
        }

        function onclick_reduce(b) {
            var out_momey = $(".out_momey");
            var input_ = $(b).next();
            var input_val = $(b).next().val();
            if (input_val <= 1) {
                alert("商品个数不能小于1！")
            } else {
                var input_add = parseInt(input_val) - 1;
                input_.val(input_add);
                var btn_momey = parseFloat($(b).parent().prev().children().html());
                var out_momey_float = parseFloat(out_momey.html()) - btn_momey;
                out_momey.text(out_momey_float.toFixed(2));
            }
        }

    </script>
</head>
<body>

<!--顶部导航条 -->

<top>
    <section class="seck">
        <div class="register_login">
            <em>您好</em>
            <a id="username" style="cursor: default">${username}</a>
        </div>
    </section>
</top>

<div class="clear"></div>

<!--购物车 -->
<div class="Caddress">
    <div class="open_new">
        <button class="open_btn" onclick="javascript:onclick_open();">使用新地址</button>
    </div>
<c:forEach items="${list2}" var="receiving">
    <div class="add_mi" onclick="getadd('${receiving.name}','${receiving.address}','${receiving.phone}')">
        <p style="border-bottom:1px dashed #ccc;line-height:28px;" id="getname"><td>${receiving.name}</td></p>
        <p id="getaddress"><td>${receiving.address}</td> </p>
        <p id="getphone"><td>${receiving.phone}</td></p>
    </div>
    </c:forEach>
</div>

<div class="shade_content">
    <div class="col-xs-12 shade_colse">
        <button onclick="javascript:onclick_close();">x</button>
    </div>
    <div class="nav shade_content_div">
        <div class="col-xs-12 shade_title">
            新增收货地址
        </div>
        <div class="col-xs-12 shade_from">
            <form>
                <div class="col-xs-12">
                    <span class="span_style" >详细地址</span>
                    <input class="input_style" type="" name="address" id="address" value="" placeholder="&nbsp;&nbsp;请输入您的详细地址" />
                </div>
                <div class="col-xs-12">
                    <span class="span_style" >邮政编号</span>
                    <input class="input_style" type="" name="postalcode" id="postalcode" value="" placeholder="&nbsp;&nbsp;请输入您的邮政编号" />
                </div>
                <div class="col-xs-12">
                    <span class="span_style" class="span_sty" >姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</span>
                    <input class="input_style" type="" name="name" id="name" value="" placeholder="&nbsp;&nbsp;请输入您的姓名" />
                </div>
                <div class="col-xs-12">
                    <span class="span_style" >手机号码</span>
                    <input class="input_style" type="" name="phone" id="phone" value="" placeholder="&nbsp;&nbsp;请输入您的手机号码" />
                </div>
                <div class="col-xs-12">
                    <input class="btn_remove" type="button"  onclick="javascript:onclick_close();" value="取消" />
                    <input type="submit" class="sub_set" id="sub_setID" value="提交" onclick="addAddress()" />
                </div>
            </form>
        </div>
    </div>
</div>




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
            </div>
        </div>
        <div class="clear"></div>
        <c:forEach items="${list1}" var="shoppingCart">
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

                            </li>
                            <li class="td td-item">
                                <div class="item-pic">
                                    <a target="_blank" data-title="" class="J_MakePoint" data-point="tbcart.8.12" style="cursor: default">
                                        <img src="${shoppingCart.picture}" class="itempic J_ItemImg" width="80px" height="80px"></a>
                                    <a id="model">
                                        <td>${shoppingCart.model}</td>
                                    </a>
                                </div>
                                <div class="item-info">
                                    <div class="item-basic-info">
                                        <a  target="_blank" title="${shoppingCart.model}" class="item-title J_MakePoint" data-point="tbcart.8.11" style="cursor: default">
                                            <td>${shoppingCart.model}</td>
                                        </a>
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
                                            <em class="J_Price price-now" tabindex="0">
                                                <td>${shoppingCart.price}</td>元
                                            </em>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-amount">
                                <div class="amount-wrapper ">
                                    <div class="item-amount ">
                                        <div class="sl">
                                            <a id="number" class="text_box" style="width:30px;">${shoppingCart.number}</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-sum">
                                <div class="td-inner">
                                    <em tabindex="0" class="J_ItemSum number" id="${shoppingCart.goodsID}money">${shoppingCart.price *
                                            shoppingCart.number}</em>0<em>元</em>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </tr>
        </c:forEach>

        <div class="clear"></div>

        <div class="float-bar-wrapper">

            <div class="float-bar-right">
                <div class="amount-sum">
                    <span class="txt">商品数量:</span>
                    <em id="totalnumber">${totalNumber}</em><span class="txt">件</span>
                    <div class="arrow-box">
                        <span class="selected-items-arrow"></span>
                        <span class="arrow"></span>
                    </div>
                </div>
                <div class="price-sum">
                    <span class="txt">共(顺丰免邮):</span>
                    <strong class="price">¥<em id="totalmoney">${totalMoney}.00</em>元</strong>
                </div>
                <div class="price-sum">
                    <span class="txt">支付完成后产生</span>
                    <strong class="price"><em style="color: #be590a">${totalMoney}</em><em style="color: #3c3c3c"> 个金币</em></strong>
                </div>
                <div class="btn-area">
                    <a id=J_Go" class="submit-btn submit-btn-disabled" onclick="payMoney()">
                        <span>付&nbsp;款</span></a>
                </div>
            </div>
        </div>
        <div class="footer">
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
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: weirong
  Date: 2019/11/28
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta name="referrer" content="no-referrer">
    <title>个人中心</title>
    <link rel="stylesheet" type="text/css" href="../css/info.css" />
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
    <link href="../css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="../css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/optstyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/person.css" rel="stylesheet" type="text/css" />
    <link href="../css/pay2.css" rel="stylesheet" type="text/css" />
    <link href="../css/customerinfo.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>


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
                $(this).css('background', 'url("images/mail_1.jpg") no-repeat').siblings('.add_mi').css('background',
                    'url("images/mail.jpg") no-repeat')
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

<!--顶部导航-->
<top>
    <section class="seck">
        <div class="register_login">
            <em>您好，</em>
            <a id="username">${username}</a>
        </div>
    </section>
</top>
<!--内容-->
<div class="wrapper">
    <div class="container">
        <div class="sidebar-wrapper fixed">
            <div class="sidebar dropdown-body">
                <ul class="menu-group">
                    <li class="menu-item menu-item-1 active">
                        <a class=" sub-title" href="javascript:;">用户订单</a>
                    </li>
                    <li class="menu-item menu-item-1 collapse">
                        <a class=" sub-title" href="javascript:;">用户地址</a>
                    </li>
                    <li class="menu-item menu-item-1 collapse">
                        <a class=" sub-title" href="javascript:;">修改密码</a>
                    </li>

                </ul>
            </div>
            <div style="width:200px;margin-top: 120%;text-align: center ">
                余额:<span style="color: goldenrod;" id="gold">${user.gold}</span><br>
                <div>
                    <a class="button white bigrounded" style="margin-top: 10px" onclick="addgold()">点击可加金币哦</a>
                    <a href="rencj" class="button white bigrounded" style="margin-top: 10px">抽奖获得金币</a>
                </div>
            </div>
        </div>

        <div class="main-container">
            <div style="width: 100%;height: 6%;border: 1px solid #eee">
                <a href="../main/success" style="width: 25%;height: 100%;background-color: #eee;text-align: center;font-size: 16px;line-height: 200%;float: left;z-index: 5;color: black">
                    <span>首页</span>
                </a>
                <a href="../main/moreOrOneBrandMoreCommodity?category=1" style="width: 25%;height: 100%;background-color: #eee;text-align: center;font-size: 16px;line-height: 200%;float: left;z-index: 5;color: black">
                    <span>手机</span>
                </a>
                <a href="../main/moreOrOneBrandMoreCommodity?category=2" style="width: 25%;height: 100%;background-color: #eee;text-align: center;font-size: 16px;line-height: 200%;float: left;z-index: 5;color: black">
                    <span>平板电脑</span>
                </a>
                <a href="../main/moreOrOneKindMoreParts" style="width: 25%;height: 100%;background-color: #eee;text-align: center;font-size: 16px;line-height: 200%;float: left;z-index: 5;color: black">
                    <span>配件</span>
                </a>
            </div>

            <div class="markdown">
                <h1>
                    <span class="metadata"></span>
                </h1>
                <p></p>
                <h2><a href="#mao1" class="maodian" id="mao1"></a> 用户订单</h2>


                    <div class="clear"></div>
                <c:forEach items="${list1}" var="order">
                    <div class="float-bar-wrapper">
                        <span style="float: left;margin-left: 20px;line-height: 49px;">时间:<td>${order.time}</td></span>
                        <span style="float: left;margin-left:20%;line-height: 49px;" id="orderid">订单号:<td>${order.orderid}</td></span>
                        <span style="float: left;margin-left:20%;line-height: 49px;">订单状态:
                            <c:if test="${order.state == 0}">
                                <td>未支付</td>
                            </c:if>
                            <c:if test="${order.state == 1}">
                                <td>已支付</td>
                            </c:if>
                            <c:if test="${order.state == 2}">
                                <td>已取消</td>
                            </c:if>
                        </span>

                    </div>
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
                    <div class="clear1"></div>
                        <c:forEach items="${list2}" var="orderinfo">
                            <c:if test="${orderinfo.orderid eq order.orderid}">

                        <tr class="item-list">
                            <div class="bundle  bundle-last ">
                                <div class="clear"></div>
                                <div class="bundle-main">
                                    <ul class="item-content clearfix">
                                        <li class="td td-chk">

                                        </li>
                                        <li class="td td-item">
                                            <div class="item-pic">
                                                <a data-title="" class="J_MakePoint" data-point="tbcart.8.12">
                                                    <img src="${orderinfo.picture}" class="itempic J_ItemImg"></a>
                                                <a id="model">
                                                    <td>${orderinfo.model}</td>
                                                </a>
                                            </div>
                                            <div class="item-info">
                                                <div class="item-basic-info">
                                                    <a title="${orderinfo.model}" class="item-title J_MakePoint" data-point="tbcart.8.11" style="cursor: default">
                                                        <td>${orderinfo.model}</td>
                                                    </a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="td td-info">
                                            <div class="item-props item-props-can">
                                                <span class="sku-line">${orderinfo.color ==' '?' ':'颜色：'}<td id="color">${orderinfo.color}</td></span><br>
                                                <span class="sku-line">${orderinfo.memoryCapacity == ' '?' ':'内存容量：'}<td id="memoryCapacity">${orderinfo.memoryCapacity}</td></span>
                                                <i class="theme-login am-icon-sort-desc"></i>
                                            </div>
                                        </li>
                                        <li class="td td-price">
                                            <div class="item-price price-promo-promo">
                                                <div class="price-content">
                                                    <div class="price-line">
                                                        <em class="J_Price price-now" tabindex="0">
                                                            <td>${orderinfo.price}</td>元
                                                        </em>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="td td-amount">
                                            <div class="amount-wrapper ">
                                                <div class="item-amount ">
                                                    <div class="sl">
                                                        <a id="number" class="text_box" style="width:30px;">${orderinfo.number}</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="td td-sum">
                                            <div class="td-inner">
                                                <em tabindex="0" class="J_ItemSum number" id="money">${orderinfo.number*orderinfo.price}</em><em>元</em>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </tr>
                            </c:if>
                    </c:forEach>
                    <div class="clear"></div>
                    <div class="float-bar-wrapper">
                        <div class="float-bar-right">
                            <div class="amount-sum">
                                <span class="txt">商品数量</span>
                                <em id="J_SelectedItemsCount"> <td>${order.totalnumber}</td></em><span class="txt">件</span>
                                <div class="arrow-box">
                                    <span class="selected-items-arrow"></span>
                                    <span class="arrow"></span>
                                </div>
                            </div>
                            <div class="price-sum">
                                <span class="txt">共:</span>
                                <strong class="price">¥<em id="J_Total"> <td>${order.totalmoney}</td></em>元</strong>
                            </div>
                            <div>
                                <c:if test="${order.state == 0}">
                                    <span onclick="javascript:payMoney('${order.orderid}');" style="background-color: #ff0000">去支付</span>
                                    <span onclick="javascript:removeOrder('${order.orderid}');" style="background-color: #c2b8b8">取消订单</span>

                                </c:if>
                                <c:if test="${order.state == 2}">
                                    <span onclick="javascript:deleteOrder('${order.orderid}');" style="background-color: #fffcfc">删除订单</span>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </c:forEach>


                <div class="shade_content">
                    <div class="col-xs-12 shade_colse">
                        <button onclick="javascript:onclick_close();">x</button>
                    </div>
                    <div class="nav shade_content_div">
                        <div class="col-xs-12 shade_title">
                            新增收货地址
                        </div>
                        <div class="col-xs-12 shade_from">
                            <form >
                                <div class="col-xs-12">
                                    <span class="span_style" >详细地址</span>
                                    <input class="input_style" type="" name="address" id="address" value="" placeholder="&nbsp;&nbsp;请输入您的详细地址" />
                                </div>
                                <div class="col-xs-12">
                                    <span class="span_style" >邮政编号</span>
                                    <input class="input_style" type="" name="postalcode" id="postalcode" value="" placeholder="&nbsp;&nbsp;请输入您的邮政编号" />
                                </div>
                                <div class="col-xs-12">
                                    <span class="span_style" class="span_sty" id="">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</span>
                                    <input class="input_style" type="" name="name" id="name" value="" placeholder="&nbsp;&nbsp;请输入您的姓名" />
                                </div>
                                <div class="col-xs-12">
                                    <span class="span_style" >手机号码</span>
                                    <input class="input_style" type="" name="phone" id="phone" value="" placeholder="&nbsp;&nbsp;请输入您的手机号码" />
                                </div>
                                <div class="col-xs-12">
                                    <input class="btn_remove" type="button" onclick="javascript:onclick_close();" value="取消" />
                                    <input type="submit" class="sub_set" id="sub_setID" value="提交" onclick="addAddress()" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                <h2><a href="#mao2" class="maodian" id="mao2"></a> 用户地址</h2>
                <div class="clear"></div>
                <div class="float-bar-wrapper">
                    <div class="btn-area" style="float: right;color: wheat;">
                        <span onclick="javascript:onclick_open();">使用新地址</span>
                    </div>
                </div>
                <c:forEach items="${list3}" var="add">
                    <tr class="item-list">
                        <div class="bundle  bundle-last ">
                            <div class="clear"></div>

                            <div class="bundle-main">


                                <div style="line-height: 49px;margin-left: 20px;float: left;font-size: 16px;">
                                    <span><td>${add.name}</td></span>
                                    <span><td>${add.address}</td></span>
                                    <span><td>${add.phone}</td></span>
                                </div>
                                <a href="" id="J_Go" class="submit-btn submit-btn-disabled" >
                                    <div class="btn-area" style="float: right;" onclick="deladd('${add.id}')">
                                        <span style="color: wheat;" >删除</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </tr>
                </c:forEach>
                <h2><a href="#mao3" class="maodian" id="mao3"></a> 修改密码</h2>
                <div class="clear"></div>
                <h3 style="text-align: center">修改登录密码</h3>
                <div style="width: 100%;height: auto;margin-top: 30px;padding-bottom: 30px;border-bottom: 10px solid whitesmoke">
<%--                    <form>--%>
                    <div style="width:400px;height:100px;margin:0 auto">

                            <input required='' type='password' id="password">
                            <label alt='输入旧密码' placeholder='旧密码'></label>

                    </div>
                    <div style="width:400px;height:100px;margin:0 auto">

                            <input required='' type='password' id="newpassword1">
                            <label alt='输入新密码' placeholder='新密码'></label>

                    </div>
                    <div style="width:400px;height:100px;margin:0 auto">

                            <input required='' type='password' id="newpassword2">
                            <label alt='确认新密码' placeholder='新密码'></label>

                    </div>
                    <button class="button white" style="margin-left: 45%" onclick="updatePassword()" >确定</button>
<%--                  </form>--%>
                </div>
                <div class="clear"></div>

                </div>


            </div>
        </div>
    </div>
</div>

<script src="../js/jquery-1.12.3.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    $(function() {
        //左侧菜单
        var h = 0;
        $('.menu-item-1 .sub-title').click(function() {
            $(this).parent().toggleClass('active collapse');
            $('.menu-item-1').each(function() {
                h += $(this).height();
            })
            //给菜单赋值高度
            $('.sidebar').css({
                "height": h
            });
            h = 0;
        })
        //右上角鼠标悬浮触发下拉
        $('.dropdown-toc').hover(function() {
            $('.dropdown-body').toggle();
        })
        //滚动监听
        var leg = $('.maodian').length;
        $(window).scroll(function() {
            $('.imgtc').hide(); //滚动后图片放大隐藏
            var sh = $(window).scrollTop()
            //右上悬浮
            sh > 86 ? $('.anchor-toc').addClass('fixed') : $('.anchor-toc').removeClass('fixed');
            //循环遍历锚点
            for (i = 1; i <= leg; i++) {
                if ($("#mao" + i).offset().top - 140 <= sh) {
                    $('.maodian').removeClass('active');
                    $('#mao' + i).addClass("active");
                    $('.toc-current').text($('#mao' + i).parent().text());
                    $('.dropdown-body ul li').removeClass('active').eq(i - 1).addClass('active');
                }

            }
            sh < 140 ? $('.toc-current').text("本页导航") : "";
        })
        //右上角点击
        $('.dropdown-body ul li').click(function() {
            var jt = $(this).index();
            $(window).scrollTop($('.maodian').eq(jt).offset().top - 140);
        })
    })

    function addgold() {
        var username = document.getElementById("username").innerText;
        var gold = "${user.gold}";
        $.ajax({
            type:"post",
            url:"addgold",
            cache: true,
            datatype:"json",
            data:{
                username:username,
                gold:gold
            },
            success: function (data) {
                window.location.href = 'inUserInfo';
            },
            error: function () {
            }
        });
    }

    function updatePassword() {
        var password = document.getElementById("password").value;
        var newpassword1 = document.getElementById("newpassword1").value;
        var newpassword2 = document.getElementById("newpassword2").value;
        if(password!=""&&newpassword1!=""&&newpassword1!=""){
            if(password==${user.password}){
                if(newpassword1==newpassword2){
                    if (newpassword1!=${user.password}){
                        $.ajax({
                            type: "post",
                            url: "updatepassword",
                            cache: true,
                            datatype: "json",
                            data:{
                                password:newpassword1
                            },
                            success: function (data) {
                                alert("修改成功");
                                window.location.href = 'inUserInfo';
                            },
                            error: function () {
                            }
                        });
                    }else {
                        alert("原始密码和新密码一致");
                    }
                }else {
                    alert("两次输入密码不一致");
                }

            }else {
                alert("输入的原始密码不正确");
            }
        }else {
            alert("输入不能为空");
        }
    }

</script>
<script type="text/javascript" src="../js/customerinfo.js"></script>
</body>
</html>
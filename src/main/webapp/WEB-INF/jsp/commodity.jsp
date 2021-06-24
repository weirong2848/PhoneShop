<%--
  Created by IntelliJ IDEA.
  User: weirong
  Date: 2019/11/12
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta name="referrer" content="no-referrer">
    <title>商品详情页</title>
    <link href="../css/shopdetail.css" rel="stylesheet" type="text/css">
    <link href="../css/index.css" rel="stylesheet" type="text/css">
    <link href="../css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="../css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/optstyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/common.css" rel="stylesheet" type="text/css" />
    <link type="text/css" href="../css/base.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery.js"></script>

    <script src="../js/jquery-1.9.1.min.js"></script>
    <script src="../js/common.js"></script>
    <script src="../js/public.js"></script>
    <script type="text/javascript" src="../js/commodity.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            var showproduct = {
                "boxid":"showbox",
                "sumid":"showsum",
                "boxw":400,
                "boxh":550,
                "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
                "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
                "sumi":7,//列表间隔
                "sums":5,//列表显示个数
                "sumsel":"sel",
                "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
                "lastid":"showlast",
                "nextid":"shownext"
            };//参数定义
            $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行

            $(function(){

                $('.tabs a').click(function(){
                    var $this=$(this);
                    $('.panel').hide();
                    $('.tabs a.active').removeClass('active');
                    $this.addClass('active').blur();
                    var panel=$this.attr("href");
                    $(panel).show();
                    return fasle;  //告诉浏览器  不要纸箱这个链接
                })//end click
                $(".tabs li:first a").click()   //web 浏览器，单击第一个标签吧
            })//end ready
            $(".centerbox li").click(function(){
                $("li").removeClass("now");
                $(this).addClass("now")

            });
        });
    </script>
</head>
<body>
<!-----header部分------->
<top>
    <section class="seck">
        <div class="register_login">
            <em>您好，</em>
            <a href="../info/inUserInfo" id="username">${username}</a>
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
                <input type="text" placeholder="" required style=" width:80%; height:34px; text-indent:2em; float:left; box-shadow:none" name="world">
                <button style="width: 20%;float: right">搜索</button>
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
<!-----header结束------->
<!-----商品详情部分------->
<div class="shopdetails">
    <c:forEach items="${list}" var="phone">
        <!-------放大镜-------->
        <div id="leftbox">
            <div id="showbox">
                <img src="${phone.picture}" width="110" height="130" />
<%--                <img src="../${phone.picture}" width="300" height="330" />--%>
            </div><!--展示图片盒子-->



        </div>
        <!----中间----->
        <%--        <script type="text/javascript">--%>
        <%--            var price1=memoryCapacity1;--%>
        <%--        </script>--%>
        <div class="centerbox">
            <p class="imgname" id="model"><td>${phone.model}</td></p>
            <br>
            <div class="iteminfo_buying">
                <!--规格属性-->
                <div class="sys_item_spec">

                    <dl class="clearfix iteminfo_parameter lh32">
                        <dt>单价</dt>
                        <dd><span class="iteminfo_price">¥ <b class="sys_item_price" id="price"><td>${phone.price1}</td>

                        </b></span></dd>
                    </dl>
                    <br>
                    <dl class="clearfix iteminfo_parameter sys_item_specpara" data-sid="1">
                        <dt>颜色</dt>
                        <dd>
                            <ul class="sys_spec_text" id="selectcolor">
                                <c:if test="${phone.color1 != null}">
                                <li data-aid="3"><a href="javascript:;" onclick="getcolor1()" id="color1"><td>${phone.color1}</td></a><i></i></li>
                                </c:if>
                                <c:if test="${phone.color2 != null}">
                                <li data-aid="4"><a href="javascript:;" onclick="getcolor2()" id="color2"><td>${phone.color2}</td></a><i></i></li>
                                </c:if>
                                <c:if test="${phone.color3 != null}">
                                    <li data-aid="8"><a href="javascript:;" onclick="getcolor3()" id="color3"><td>${phone.color3}</td></a><i></i></li>
                                </c:if>
                            </ul>

                        </dd>
                    </dl>
                    <br>
                    <dl class="clearfix iteminfo_parameter sys_item_specpara" data-sid="2">
                        <dt>内存容量</dt>
                        <dd>
                            <ul class="sys_spec_text" id="selectmemoryCapacity">
                                <c:if test="${phone.memoryCapacity1 != null}">
                                <li data-aid="13"><a href="javascript:;" onclick="getmemoryCapacity1()" id="memoryCapacity1"><td>${phone.memoryCapacity1}</td></a></li>
                                </c:if>
                                <c:if test="${phone.memoryCapacity2 != null}">
                                <li data-aid="14"><a href="javascript:;" onclick="getmemoryCapacity2()" id="memoryCapacity2"><td>${phone.memoryCapacity2}</td></a></li>
                                </c:if>
                                <c:if test="${phone.memoryCapacity3 != null}">
                                <li data-aid="16"><a href="javascript:;" onclick="getmemoryCapacity3()" id="memoryCapacity3"><td>${phone.memoryCapacity3}</td></a></li>
                                </c:if>
                            </ul>
                        </dd>
                    </dl>
                </div>
                <!--规格属性-->
            </div>
            <div class="clear"></div>
            <br>
            <ul id="test1">
                <li class="kuanshi">数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量：</li>
                <div class="sl" style="margin-left: 20px">
                    <input class="min am-btn" id="jian" type="button" value="-"/>
                    <input id="number" class="text_box" readonly="readonly" name=""  type="text" value="1" style="width:30px;" />
                    <input class="add am-btn" name="jia" type="button" value="+"/>
                </div>
            </ul>

            <div class="clear"></div>
            <p class="buy"><a href="#" id="firstbuy" onclick="getreadpay()">立即购买</a><a href="#" onclick="addcart()">加入购物车</a></p>
            <div class="clear"></div>
        </div>
        <div class="tabbedPanels">
            <ul class="tabs">
                <li><a href="#panel01">商品详情</a></li>
            </ul>
            <div class="panelContainer">
                <div class="panel" id="panel01">
                    <p><td>${phone.commoditydetails}</td></p>
                </div>
            </div>
        </div>
    </c:forEach>

</div>
<footer>
    <div class="pc-footer-lin" style="margin-top: 60%">
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
<script>
    //价格json
<c:forEach items="${list}" var="phone">
    var sys_item = {
        "price": "${phone.price1}",
        "sys_attrprice": {
            "3_13": {
                "price": "${phone.price1}"
            },
            "3_14": {
                "price": "${phone.price2}"
            },
            "3_16": {
                "price": "${phone.price3}"
            },
            "4_13": {
                "price": "${phone.price1}",
                "mktprice": "13.00"
            },
            "4_14": {
                "price": "${phone.price2}"
            },
            "4_16": {
                "price": "${phone.price3}"
            },
            "8_13": {
                "price": "${phone.price1}"
            },
            "8_14": {
                "price": "${phone.price2}"
            },
            "8_16": {
                "price": "${phone.price3}"
            },
        }
    };
    </c:forEach>


    //商品规格选择
    $(function() {
        $(".sys_item_spec .sys_item_specpara").each(function() {
            var i = $(this);
            var p = i.find("ul>li");
            p.click(function() {
                if (!!$(this).hasClass("selected")) {
                    $(this).removeClass("selected");
                    i.removeAttr("data-attrval");
                } else {
                    $(this).addClass("selected").siblings("li").removeClass("selected");
                    i.attr("data-attrval", $(this).attr("data-aid"))
                }
                getattrprice() //输出价格
            })
        })

        //获取对应属性的价格
        function getattrprice() {
            var defaultstats = true;
            var _val = '';
            var _resp = {
                mktprice: ".sys_item_mktprice",
                price: ".sys_item_price"
            } //输出对应的class
            $(".sys_item_spec .sys_item_specpara").each(function() {
                var i = $(this);
                var v = i.attr("data-attrval");
                if (!v) {
                    defaultstats = false;
                } else {
                    _val += _val != "" ? "_" : "";
                    _val += v;
                }
            })
            if (!!defaultstats) {
                _mktprice = sys_item['sys_attrprice'][_val]['mktprice'];
                _price = sys_item['sys_attrprice'][_val]['price'];
            } else {
                _mktprice = sys_item['mktprice'];
                _price = sys_item['price'];
            }
            //输出价格
            $(_resp.mktprice).text(_mktprice); ///其中的math.round为截取小数点位数
            $(_resp.price).text(_price);
        }
    })
</script>

</body>
</html>

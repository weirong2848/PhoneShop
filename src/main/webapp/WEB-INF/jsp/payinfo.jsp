<%--
  Created by IntelliJ IDEA.
  User: weirong
  Date: 2019/11/28
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>菲尔普斯支付</title>
    <link href="../css/index.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .center {
            text-align: center;
        }

        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }

        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0;
            padding: 45px;
            text-align: center;
            /* box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24); */
        }

        .form input {
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }

        .form button {
            font-family: "Microsoft YaHei", "Roboto", sans-serif;
            text-transform: uppercase;
            outline: 0;
            background: goldenrod;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            /*-webkit-transition: all 0.3 ease;*/
            /*transition: all 0.3 ease;*/
            cursor: pointer;
        }

        .form button:hover,
        .form button:active,
        .form button:focus {
            background: gold;
        }

        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }

        .form .message a {
            color: #4CAF50;
            text-decoration: none;
        }

        .form .register-form {
            display: none;
        }

        .container {
            position: relative;
            z-index: 1;
            max-width: 300px;
            margin: 0 auto;
        }

        .container:before,
        .container:after {
            content: "";
            display: block;
            clear: both;
        }

        .container .info {
            margin: 50px auto;
            text-align: center;
        }

        .container .info h1 {
            margin: 0 0 15px;
            padding: 0;
            font-size: 36px;
            font-weight: 300;
            color: #1a1a1a;
        }

        .container .info span {
            color: #4d4d4d;
            font-size: 12px;
        }

        .container .info span a {
            color: #000000;
            text-decoration: none;
        }

        .container .info span .fa {
            color: #EF3B3A;
        }

        body {
            /* fallback for old browsers */
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        .shake_effect {
            -webkit-animation-name: shake;
            animation-name: shake;
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
        }

        @-webkit-keyframes shake {

            from,
            to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }

            10%,
            30%,
            50%,
            70%,
            90% {
                -webkit-transform: translate3d(-10px, 0, 0);
                transform: translate3d(-10px, 0, 0);
            }

            20%,
            40%,
            60%,
            80% {
                -webkit-transform: translate3d(10px, 0, 0);
                transform: translate3d(10px, 0, 0);
            }
        }

        @keyframes shake {

            from,
            to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }

            10%,
            30%,
            50%,
            70%,
            90% {
                -webkit-transform: translate3d(-10px, 0, 0);
                transform: translate3d(-10px, 0, 0);
            }

            20%,
            40%,
            60%,
            80% {
                -webkit-transform: translate3d(10px, 0, 0);
                transform: translate3d(10px, 0, 0);
            }
        }

        p.center {
            color: #fff;
            font-family: "Microsoft YaHei";
        }
    </style>

</head>
<body>
<top>
    <section class="seck">
        <div class="register_login">
            <em>您好，</em>
            <a id="username">${username}</a>
        </div>
    </section>
</top>
<!--header-->
<div style="width: 70%;height: auto;margin: 5% 15% 0 15%;">
    <div style="text-align: center;">
        <h2>
            菲尔普斯支付...
        </h2>
        <br>
        <h3>
            当前剩余金币<span style="font-size: 30px;color: gold;" id="">${allGolds}</span>个
        </h3>
        <br>
        <h3>
            需支付<span style="font-size: 30px;color: gold;" id="needgold">${payGolds}</span>个
        </h3>
        <br>
        <h3>
            支付后剩余<span style="font-size: 30px;color: gold;" id="gold">${allGolds-payGolds}</span>个
        </h3>
        <div class="htmleaf-container" style="">
            <div id="wrapper" class="login-page">
                <div id="login_form" class="form">
<%--                    <form class="login-form">--%>
                        <input type="password" placeholder="输入支付密码" name="paynum" id="paynum"/>
                        <button id="login" onclick="payMoney()">付款</button>
<%--                    </form>--%>
                </div>
            </div>
        </div>
        <script src="../js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            var username = document.getElementById("username").innerText;
            var gold = document.getElementById("gold").innerText;
            var needgold =document.getElementById("needgold").innerText;
            window.onload = function () {
                if(gold<0){
                    $.ajax({
                        type:"post",
                        url:"notPayGold",
                        cache: true,
                        datatype:"json",
                        data:{
                            username:username
                        },
                        success: function (data) {
                            window.location.href = 'returnMain';
                        },
                        error: function () {
                        }
                    });
                    alert("余额不足，亲还不能支付");
                }
            }
            function payMoney() {
                var paynum = document.getElementById("paynum").value;
                if (paynum != "") {
                    if(paynum==${paynum}){
                        $.ajax({
                            type:"post",
                            url:"payGold",
                            cache: true,
                            datatype:"json",
                            data:{
                                username:username,
                                gold:gold
                            },
                            success: function (data) {
                                window.location.href = '../main/success';
                            },
                            error: function () {
                            }
                        });
                        alert("支付成功");
                    }else{
                        alert("支付密码错误，请重新输入")
                    }
                } else {
                    alert("请输入支付密码");
                }
            }
        </script>
    </div>
</div>
</body>
</html>


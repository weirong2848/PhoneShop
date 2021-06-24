<%--
  Created by IntelliJ IDEA.
  User: weirong
  Date: 2020/7/24
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>支付页面</title>
    <script src="https://gw.alipayobjects.com/as/g/h5-lib/alipayjsapi/3.1.1/alipayjsapi.min.js"></script>
    <script type="text/javascript">
        var orderid;

        function init() {
            orderid = window.sessionStorage.getItem("orderid");
            var payInfo = window.localStorage.getItem("payInfo");
            console.log(payInfo);
            document.getElementById("askPay").innerHTML = payInfo;
        }
        window.onload = function() {
            init();
        }
    </script>
</head>
<body>
<div id="askPay"></div>

<script>
    setInterval("document.forms[0].submit()",1000);
</script>
</body>

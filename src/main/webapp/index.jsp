<%--
  Created by IntelliJ IDEA.
  User: weirong
  Date: 2019/10/13
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录、注册</title>
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
    <META HTTP-EQUIV="expires" CONTENT="0">

    <link href="css/index.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/index.js" type="text/javascript"></script>
</head>
<body>

<div class="htmleaf-container" style="">
    <div id="wrapper" class="login-page">
        <div id="login_form" class="form">
            <form class="register-form" method="post" action="" onsubmit="return false">
                <input type="text" placeholder="用户名" id="username" name="username"/>
                <input type="password" placeholder="密码" id="password1" name="password"/>
                <input type="password" placeholder="确认密码" id="password2" name="password1"/>
                <button id="create" type="submit" onclick="zhuce()">创建账户</button>
                <p class="message">注册送10000金币<br></br>已经有了一个账户? <a href="#">立刻登录</a></p>
            </form>
            <form class="login-form" method="post" action="" onsubmit="return false">
                <input type="text" placeholder="用户名" name="username" id="logUsername"/>
                <input type="password" placeholder="密码" name="password" id="logPassword"/>
                <button id="login" onclick="dengru()">登　录</button>
                <p class="message">还没有账户? <a href="#">立刻创建</a></p>
            </form>
        </div>
    </div>
</div>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: weirong
  Date: 2019/12/4
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>抽奖</title>
    <link href="../css/chouJiang.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div>
    <a class="button white" style="margin: 30px 0 0 60px" href="inUserInfo">返回</a>
</div>
<div style="width:300px;margin: 30px 30% 0 40%;text-align: center ">
    <span style="float: left" >用户名:</span><span style="float: left" id="username">${username}</span>
    <span style="float: right">金币余额:<span style="color: goldenrod;" id="gold">${user.gold}</span></span>
</div>
<br>
<div class="choujiang">

    <div class="plate">
        <a id="plateBtn" href="javascript:" title="开始抽奖" style="transform: rotate(247deg); transform-origin: 50% 50%;">开始抽奖</a>
    </div>

    <div class="prize">
        <h4>奖品设置(综合中奖概率55%，每次抽奖消耗500金币)</h4>
        <ul>
            <li><strong>一等奖(1%)： </strong>10000金币</li>
            <li><strong>二等奖(4%)： </strong>5000金币</li>
            <li><strong>三等奖(8%)：</strong>2500金币</li>
            <li><strong>四等奖(15%)：</strong>1000金币</li>
            <li><strong>参与奖(27%)：</strong>500金币</li>
        </ul>
    </div>

    <div id="result" style="display: none;">
        <p id="resultTxt">恭喜你中了 <em>四等奖</em></p>
        <a id="resultBtn" href="javascript:" title="关闭">关闭</a>
    </div>

</div>
<script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.rotate.min.js"></script>
<script type="text/javascript" src="../js/chouJiang.js"></script>
</body>
</html>

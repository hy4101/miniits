<%--
  Created by IntelliJ IDEA.
  User: wq
  Date: 2016/10/5
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/util/commonResources.jsp" %>
<html>
<head>
    <title>迷你科技后台登入系统</title>
    <meta name="author" content="DeathGhost"/>
    <link rel="stylesheet" type="text/css" href="${rootPath}/resources/login/login.css" tppabs="css/style.css"/>

    <%--<script src="${rootPath}/resources/login/verificationNumbers.js" tppabs="js/verificationNumbers.js"></script>--%>
    <script src="${rootPath}/resources/login/Particleground.js" tppabs="js/Particleground.js"></script>
    <script>
        $(document).ready(function () {
            //粒子背景特效
            $('body').particleground({
                dotColor: '#5cbdaa',
                lineColor: '#5cbdaa'
            });
            //验证码
//            createCode();
            //测试提交，对接程序删除即可
            $(".submit_btn").click(function () {
                location.href = "javascrpt:;"/*tpa=http://***index.html*/;
            });
        });
    </script>

</head>
<body>
<dl class="admin_login">
    <dt>
        <strong>MiniIts台管理系统</strong>
        <em> </em>
    </dt>
    <dd class="user_icon">
        <input type="text" placeholder="账号" class="login_txtbx inp-fh300"/>
    </dd>
    <dd class="pwd_icon">
        <input type="password" placeholder="密码" class="login_txtbx inp-fh300"/>
    </dd>
    <dd class="val_icon">
        <div class="checkcode">
            <input type="text" id="inp_code" placeholder="验证码" maxlength="4" class="login_txtbx">
            <%--<input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">--%>
            <canvas class="J_codeimg" id="can_code"></canvas>
            <%--<canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>--%>
        </div>
        <input type="button" value="验证码核验" class="ver_btn" id="inp_change_code_btn">
    </dd>
    <dd>
        <input type="button" value="立即登陆" class="submit_btn"/>
    </dd>
    <dd>
        <p>© 2015-2016 jq22 版权所有</p>
        <p>陕B2-8998988-1</p>
    </dd>
</dl>

<script src="${rootPath}/resources/login/login.js" tppabs="js/Particleground.js"></script>
</body>
</html>


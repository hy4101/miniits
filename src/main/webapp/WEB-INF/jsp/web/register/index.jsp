<%--
  Created by IntelliJ IDEA.
  User: wq
  Date: 2016/10/7
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/admin/layout/minResources.jsp" %>
<html>
<head>
    <title>注册--迷你科技</title>
</head>
<body>
<form id="login_form" action="${rootPath}/user/register?action=register" method="post">
    <dl class="admin_login">
        <dt>
            <strong>注册--迷你科技</strong>
        </dt>
        <dd class="user_icon">
            <input type="text" placeholder="账号" class="login_txtbx" name="userName" id="inp_user_name" />
        </dd>
        <dd class="pwd_icon">
            <input type="password" placeholder="密码" class="login_txtbx" name="password" id="inp_password" />
        </dd>
        <dd class="email_icon">
            <input type="text" placeholder="邮箱" class="login_txtbx" name="eMail" />
        </dd>
        <dd class="val_icon">
            <div class="checkcode">
                <input type="text" id="inp_code" placeholder="验证码" maxlength="4" class="login_txtbx">
                <canvas class="J_codeimg" id="can_code"></canvas>
            </div>
            <input type="button" value="验证码核验" class="ver_btn" id="inp_change_code_btn">
        </dd>
        <dd>
            <input type="button" value="立即登陆" class="submit_btn" id="inp_login_btn"/>
        </dd>
        <dd>
            <p id="p_error_message"></p>
            <input style="display: none;" id="inp_boo" value="${boo}" />
        </dd>
    </dl>
</form>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/webapp/register/register.css"/>
<script src="${rootPath}/resources/commons/js/Particleground.js"></script>
<script src="${rootPath}/resources/webapp/register/register.js"></script>
</body>
</html>


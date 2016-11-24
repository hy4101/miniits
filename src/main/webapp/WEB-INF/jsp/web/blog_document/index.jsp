<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>MiniIts.com-迷你科技</title>
    <script async="" src="http://c.cnzz.com/core.php"></script>
    <meta name="description" content="Bootstrap中文网开源项目免费 CDN 服务 - 我们致力于为Bootstrap一样优秀的开源项目提供稳定、快速的免费 CDN 服务">
    <meta name="keywords" content="">
    <meta name="author" content="Bootstrap中文网">
</head>
<body class="home-template">
<div class="site-notice">
    <em>MiniIts.com-迷你科技</em>
</div>
<header class="site-header jumbotron">
    <div class="site-nav">
        <shiro:guest>
            <a href="${rootPath}/user/userAdmin.html" target="_blank" class="a-saveRequestUrl">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/login.html" target="_blank">登入</a>
            <span>/</span>
            <a href="${rootPath}/user/register.html">注册</a>
        </shiro:guest>

        <shiro:authenticated>
            <a href="${rootPath}/user/setting.html" class="a-saveRequestUrl">设置</a>
            <span>/</span>
            <a href="${rootPath}/blog/<shiro:principal/>" target="_blank" class="a-saveRequestUrl">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/userAdmin.html" target="_blank" class="a-saveRequestUrl">主页</a>
            <span>/</span>
            <a href="${rootPath}/logout" target="_blank">退出:</a><shiro:principal/>
        </shiro:authenticated>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12"><h2>${doc.uobj.userName}的博客</h2>
                <p><span class="package-amount" style="font-size: 16px">${doc.uobj.signature}</span></p>
            </div>
        </div>
    </div>

    <div class="container" style="width: 180px;float: right; position: relative;top: -50px;">
        <div class="row">
            <table class="f-tac" style="font-size: 12px;">
                <tr>
                    <td colspan="2">
                        支持博主
                    </td>
                </tr>
                <tr>
                    <td>
                        支付宝
                    </td>
                    <td>
                        微信
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="${rootPath}/resources/commons/images/123.png" style="width: 64px;height: 64px"
                             class="f-mr10">
                    </td>
                    <td>
                        <img src="${rootPath}/resources/commons/images/123.png" style="width: 64px;height: 64px"
                             class="f-ml10">
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <br>
</header>

<div style="border-top: 3px solid red;width: 100%" class="f-tac">
    <br>
    <h4>${doc.obj.name}</h4>

    <div style="margin-right: auto;margin-left: auto; width: 80%;">
        <table class="f-fr">
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;<img src="${rootPath}/resources/commons/images/time.png">${doc.obj.time}
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;<img src="${rootPath}/resources/commons/images/see.png">${doc.obj.see}
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;<img src="${rootPath}/resources/commons/images/update.png">${doc.obj.revert}
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;<img src="${rootPath}/resources/commons/images/praise.png">${doc.obj.praise}
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;<img src="${rootPath}/resources/commons/images/collect.png">${doc.obj.collect}
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;<img
                        src="${rootPath}/resources/commons/images/subscription.png">${doc.obj.collect}
                </td>
            </tr>
        </table>
        <br><br>
        ${doc.obj.text}
    </div>
</div>


<div>adf</div>

<link href="${rootPath}/resources/webapp/blog_document/index.css" rel="stylesheet" type="text/css"/>
<script src="${rootPath}/resources/webapp/blog_document/index.js"></script>
</body>
</html>

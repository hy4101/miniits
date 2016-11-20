<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>MiniIts.com-迷你科技</title>
    <meta name="description" content="Bootstrap中文网开源项目免费 CDN 服务 - 我们致力于为Bootstrap一样优秀的开源项目提供稳定、快速的免费 CDN 服务">
    <meta name="keywords" content="">
    <meta name="author" content="Bootstrap中文网">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>
<body class="home-template">
<div class="site-notice">
    <em>MiniIts.com-迷你科技</em>
</div>
<header class="site-header jumbotron">
    <div class="site-nav">
        
        <@shiro.guest>
            <a href="${rootPath}/user/userAdmin.html" target="_blank" class="a-saveRequestUrl">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/login.html" target="_blank">登入</a>
            <span>/</span>
            <a href="${rootPath}/user/register.html">注册</a>
        </@shiro.guest>

        <@shiro.authenticated>
            <a href="${rootPath}/user/setting.html" class="a-saveRequestUrl">设置</a>
            <span>/</span>
            <a href="${rootPath}/blog/<@shiro.principal/>" target="_blank" class="a-saveRequestUrl">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/userAdmin.html" target="_blank" class="a-saveRequestUrl">主页</a>
            <span>/</span>
            <a href="${rootPath}/logout" target="_blank">退出:</a><@shiro.principal/>
        </@shiro.authenticated>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12"><h1>MiniIts</h1>
                <p><span class="package-amount">迷你科技网是中文IT社区，提供专业互联网IT技术服务</span></p>
            </div>
        </div>
    </div>
</header>

<link href="${model.basePath}/resources/webapp/blog_document/index.css" rel="stylesheet" type="text/css"/>
<script src="${model.basePath}/resources/webapp/blog_document/index.js"></script>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Spring Boot中文网-迷你科技</title>
    <meta name="description" content="Bootstrap中文网开源项目免费 CDN 服务 - 我们致力于为Bootstrap一样优秀的开源项目提供稳定、快速的免费 CDN 服务">
    <meta name="keywords" content="Spring Boot中文网">
    <meta name="author" content="Bootstrap中文网">
</head>
<body>
<div class="site-notice">
    <em>MiniIts.com-迷你科技</em>
</div>
<header class="site-header jumbotron">
    <div class="site-nav">
        <shiro:guest>
            <a href="${rootPath}/dynamic.html">动态</a>
            <span>/</span>
            <a href="${rootPath}/blog/<shiro:principal/>">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/login.html" target="_blank">登入</a>
            <span>/</span>
            <a href="${rootPath}/user/register.html">注册</a>
        </shiro:guest>

        <shiro:authenticated>
            <a href="${rootPath}/user/setting.html">设置</a>
            <span>/</span>
            <a href="${rootPath}/dynamic.html">动态</a>
            <span>/</span>
            <a href="${rootPath}/blog/<shiro:principal/>">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/userAdmin.html" target="_blank">主页</a>
            <span>/</span>
            <a href="${rootPath}/logout" target="_blank">退出:</a><shiro:principal/>
        </shiro:authenticated>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12"><h1>Spring Boot</h1>
                <p>中文网<br><span class="package-amount">这里是介绍 spring boot 的  这里是介绍 spring boot 的  这里是介绍 spring boot 的  </span>
                </p>
            </div>
        </div>
    </div>
</header>
<div class="f-ww f-mt10 f-mb10">
    <div class="div-body-product-logo f-ah">

        <div class="container-main f-ww">
            <ul class="clearfix">
                <li><a class="item" onclick="javascript:articleSelect('dynamic')">开始体验</a></li>
                <li><a class="item" onclick="javascript:articleSelect('collects')">Manve引入</a></li>
                <li><a class="item" href="#li_spring_framework" >Spring注解</a></li>
                <li><a class="item" onclick="javascript:articleSelect('subscibes')">API文档</a></li>
                <li><a class="item" href="http://projects.spring.io/spring-boot/" target="_blank">官网</a></li>
                <li><a class="item" onclick="javascript:articleSelect('fans')">论坛</a></li>
            </ul>
        </div>

        <div class="div-spring-menu f-dr1c8 f-fl f-mt20">
            <label>获取代码</label>
            <ul>
                <li>GitHub :<input value="https://github.com" readonly="readonly" class="inp-br-b" /> &nbsp <img src="${rootPath}/resources/commons/images/copy.png" width="25px" height="25px" ></img></li>
                <li class="f-mt10">码云 :&nbsp&nbsp&nbsp&nbsp<input value="https://git.oschina.net" readonly="readonly" class="inp-br-b" /> &nbsp <img src="${rootPath}/resources/commons/images/copy.png" width="25px" height="25px" ></li>
            </ul>
            <label>Spring技术交流</label>
            <ul>
                <li>QQ群 :<input value="112773621" readonly="readonly" class="inp-br-b" /></li>
                <li class="f-mt10">QQ群 :<input value="112968486" readonly="readonly" class="inp-br-b" /></li>
            </ul>
            <label>Spring 装配Bean</label><br>
            <label>Spring 高级装配</label><br>
            <label>Spring MVC</label><br>
            <label>Spring AOP</label><br>
            <label>Spring IOC</label><br>
        </div>
        <div class="div-spring-text f-dr1c8 f-fl f-mt20">
            <label><h2>Spring Boot</h2></label>
            <ul>
                <li id="li_spring_framework">

                </li>
            </ul>
        </div>
    </div>
</div>

<footer class="site-footer f-fl f-mt20">
    <div class="container">
        WWW.MINIITS.COM
    </div>
</footer>
<link href="${rootPath}/resources/webapp/sortware/spring_boot.css" rel="stylesheet" type="text/css"/>
<script src="${rootPath}/resources/webapp/sortware/spring_boot.js"></script>
</body>
</html>


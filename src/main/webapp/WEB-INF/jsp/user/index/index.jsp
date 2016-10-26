<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<%@include file="/WEB-INF/jsp/user/layout/resources.jsp" %>
<html>
<head>
    <title>MiniIts.com-个人主页</title>
</head>
<body>
<div class="site-notice">
    <em>MiniIts.com-迷你科技</em>
</div>
<section id="intro" class="page -intro">
    <div class="container">
        <div class="site-nav">
            <a href="${rootPath}/user/userAdmin.html" target="_blank" class="a-saveRequestUrl">设置</a>
            <span>/</span>
            <a href="${rootPath}/blog/<shiro:principal/>" class="a-saveRequestUrl">博客</a>
            <span>/</span>
            <a href="${rootPath}/index.html">首页</a>
            <span>/</span>
            <a href="${rootPath}/logout">退出</a>
        </div>
        <div class="row">
            <div class="col-xs-12 site-header "><h1 class="f-fs36">欢迎：<span id=""><shiro:principal/></span></h1>
                <p>MINIITS.COM-迷你科技<br><span class="package-amount">迷你科技网是中文IT社区，提供专业互联网IT技术服务</span></p>
                <form class="" role="search">
                    <div class="input-group input-group-lg">
                        <input type="text" class="form-control search clearable" id="div_params"
                               placeholder="搜索MiniIts,如：Spring Boot,Spring MVC,MyBatis Jar,jquery">
                        <span class="input-group-addon search clearable f-csp" id="sp_search_article_btn">GO!</span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<div>
    <div class="container-main">
        <ul class="clearfix">
            <li><a class="item" onclick="javascript:articleSelect('dynamic')">动态</a></li>
            <li><a class="item" onclick="javascript:articleSelect('collects')">收藏</a></li>
            <li><a class="item" onclick="javascript:articleSelect('subscibes')">订阅</a></li>
            <li><a class="item" onclick="javascript:articleSelect('fans')">粉丝</a></li>
            <li><a class="item" onclick="javascript:articleSelect('blog')">博客</a></li>
            <li><a class="item" onclick="javascript:articleSelect('redact')">发表</a></li>
        </ul>
    </div>

    <%--<div class="indexsum container-main">--%>
        <%--<a href="/new_article/" class="indexsum_add" ga="发表文章按钮$">--%>
            <%--<i></i>--%>
            <%--<span>发表</span>--%>
        <%--</a>--%>
        <%--<div class="indexsum_btns">--%>
            <%--<a href="/statistic/audience_analysis/" class="indexsum_btn first" ga="平均阅读数$">--%>
                <%--<b>--%>
                    <%--0--%>
                <%--</b>--%>
                <%--<span>订阅用户</span>--%>
            <%--</a>--%>
            <%--<a href="statistic/audience_analysis/" class="indexsum_btn" ga="推荐用户$">--%>
                <%--<b>0</b>--%>
                <%--<span>推荐用户<em data-title="根据历史发文情况计算得出，该头条号单篇文章预计可被推荐给的读者数量"></em></span>--%>
            <%--</a>--%>
            <%--<a href="/statistic/recommend_factor_page/" class="indexsum_btn" ga="头条号指数$">--%>
                <%--<b>0</b>--%>
                <%--<span>头条号指数<em data-title="智能推荐算法通过对发布、阅读、互动等行为的记录与分析得出的标准指数，将影响账号的推荐权重"></em></span>--%>
            <%--</a>--%>
            <%--<a href="/statistic/content_detail/" class="indexsum_btn last" ga="累计阅读量$">--%>
                <%--<b>0</b>--%>
                <%--<span>累计阅读量</span>--%>
            <%--</a>--%>
        <%--</div>--%>
    <%--</div>--%>

</div>
<div>
    <div id="div_user_articles">
        <section id="cd-timeline" class="cd-container"></section>
    </div>
</div>

<div>
    <div id="div_minits_pages" class="f-mr-auto f-ml-auto f-mw60"></div>
</div>

<section id="intro" class="page -intro">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 site-header "></div>
        </div>
    </div>
</section>

<link rel="stylesheet" type="text/css" href="${rootPath}/resources/user/index.css"/>
<%--引入时间轴css文件--%>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/commons/css/timeShaft.css"/>
<script src="${rootPath}/resources/user/index.js"></script>
</body>
</html>

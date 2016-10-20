<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/user/layout/resources.jsp" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
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
            <a href="${rootPath}/index.html">首页</a>
            <span>/</span>
            <a href="${rootPath}/logout">退出</a>
        </div>
        <div class="row">
            <div class="col-xs-12 site-header "><h1>欢迎：<shiro:principal/></h1>
                <p>MINIITS.COM-迷你科技<br><span class="package-amount">迷你科技网是中文IT社区，提供专业互联网IT技术服务</span></p>
                <form class="" role="search">
                    <div class="input-group input-group-lg">
                        <input type="text" class="form-control search clearable"
                               placeholder="搜索MiniIts,如：Spring Boot,Spring MVC,MyBatis Jar,jquery">
                        <span class="input-group-addon search clearable f-csp">GO!</span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<div>
    <div class="container-main">
        <ul class="clearfix">
            <li><a class="item">动态</a></li>
            <li><a class="item">收藏</a></li>
            <li><a class="item">订阅</a></li>
            <li><a class="item">粉丝</a></li>
            <li><a class="item">博客</a></li>
        </ul>
    </div>
</div>
<%--end starts--%>

<div>
    <%--时间轴--%>
    <div id="div_user_articles">
        <section id="cd-timeline" class="cd-container">
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture f-l10">
                </div>

                <%--<div class="cd-timeline-content">--%>
                <%--<h2>HTML5+CSS3实现的响应式垂直时间轴</h2>--%>
                <%--<p>网页时间轴一般用于展示以时间为主线的事件，如企业网站常见的公司发展历程等。本文将给大家介绍一款基于HTML5和CSS3的漂亮的垂直时间轴，它可以响应页面布局，适用于HTML5开发的PC和移动手机WEB应用。</p>--%>
                <%--<a href="http://www.helloweba.com/view-blog-285.html" class="cd-read-more" target="_blank">阅读全文</a>--%>
                <%--<span class="cd-date">2015-01-06</span>--%>
                <%--</div>--%>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie f-l10">
                </div>

                <%--<div class="cd-timeline-content">--%>
                <%--<h2>jQuery+PHP动态数字展示效果</h2>--%>
                <%--<p>我们在一些应用中需要动态展示数据，比如当前在线人数，当前交易总额，当前汇率等等，前端页面需要实时刷新获取最新数据。本文将结合实例给大家介绍使用jQuery和PHP来实现动态数字展示效果。</p>--%>
                <%--<a href="http://www.helloweba.com/view-blog-284.html" class="cd-read-more" target="_blank">阅读全文</a>--%>
                <%--<span class="cd-date">2014-12-25</span>--%>
                <%--</div>--%>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture f-l10">
                    <%--<img src="img/cd-icon-picture.svg" alt="Picture">--%>
                </div>

                <%--<div class="cd-timeline-content">--%>
                <%--<h2>PHP操作Session和Cookie</h2>--%>
                <%--<p>我们跟踪用户信息时需要用到Session和Cookie，比如用户登录验证、记录用户浏览历史，存储购物车数据，限制用户会话有效时间等。今天我们来了解下PHP是如何操作Session和Cookie的。</p>--%>
                <%--<a href="http://www.helloweba.com/view-blog-283.html" class="cd-read-more" target="_blank">阅读全文</a>--%>
                <%--<span class="cd-date">2014-12-20</span>--%>
                <%--</div>--%>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie f-l10">
                </div>

                <%--<div class="cd-timeline-content">--%>
                <%--<h2>jQuery数字加减插件</h2>--%>
                <%--<p>我们在网上购物提交订单时，在网页上一般会有一个选择数量的控件，要求买家选择购买商品的件数，开发者会把该控件做成可以通过点击实现加减等微调操作，当然也可以直接输入数字件数。本文将介绍常见的几种使用spinner数字微调器来实现数字加减的功能的方法。</p>--%>
                <%--<a href="http://www.helloweba.com/view-blog-282.html" class="cd-read-more" target="_blank">阅读全文</a>--%>
                <%--<span class="cd-date">2014-12-14</span>--%>
                <%--</div>--%>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie f-l10">
                </div>

                <%--<div class="cd-timeline-content">--%>
                <%--<h2>收集整理的非常有用的PHP函数</h2>--%>
                <%--<p>项目中经常会需要一些让人头疼的函数，作为开发者应该整理一个自己的函数库，在需要之时复制过来即可。本文作者收集整理数十个PHP项目中常用的函数，保证能正常运行，你只要复制粘贴到你项目中即可。</p>--%>
                <%--<a href="http://www.helloweba.com/view-blog-281.html" class="cd-read-more" target="_blank">阅读全文</a>--%>
                <%--<span class="cd-date">2014-12-05</span>--%>
                <%--</div>--%>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie f-l10">
                </div>

                <%--<div class="cd-timeline-content">--%>
                <%--<h2>收集整理的非常有用的PHP函数</h2>--%>
                <%--<p>项目中经常会需要一些让人头疼的函数，作为开发者应该整理一个自己的函数库，在需要之时复制过来即可。本文作者收集整理数十个PHP项目中常用的函数，保证能正常运行，你只要复制粘贴到你项目中即可。</p>--%>
                <%--<a href="http://www.helloweba.com/view-blog-281.html" class="cd-read-more" target="_blank">阅读全文</a>--%>
                <%--<span class="cd-date">2014-12-05</span>--%>
                <%--</div>--%>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie f-l10">
                </div>

                <%--<div class="cd-timeline-content">--%>
                <%--<h2>收集整理的非常有用的PHP函数</h2>--%>
                <%--<p>项目中经常会需要一些让人头疼的函数，作为开发者应该整理一个自己的函数库，在需要之时复制过来即可。本文作者收集整理数十个PHP项目中常用的函数，保证能正常运行，你只要复制粘贴到你项目中即可。</p>--%>
                <%--<a href="http://www.helloweba.com/view-blog-281.html" class="cd-read-more" target="_blank">阅读全文</a>--%>
                <%--<span class="cd-date">2014-12-05</span>--%>
                <%--</div>--%>
            </div>            <div class="cd-timeline-block">
            <div class="cd-timeline-img cd-movie f-l10">
            </div>

            <%--<div class="cd-timeline-content">--%>
            <%--<h2>收集整理的非常有用的PHP函数</h2>--%>
            <%--<p>项目中经常会需要一些让人头疼的函数，作为开发者应该整理一个自己的函数库，在需要之时复制过来即可。本文作者收集整理数十个PHP项目中常用的函数，保证能正常运行，你只要复制粘贴到你项目中即可。</p>--%>
            <%--<a href="http://www.helloweba.com/view-blog-281.html" class="cd-read-more" target="_blank">阅读全文</a>--%>
            <%--<span class="cd-date">2014-12-05</span>--%>
            <%--</div>--%>
        </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie f-l10">
                </div>

                <div class="cd-timeline-content">
                <h2>收集整理的非常有用的PHP函数</h2>
                <p>项目中经常会需要一些让人头疼的函数，作为开发者应该整理一个自己的函数库，在需要之时复制过来即可。本文作者收集整理数十个PHP项目中常用的函数，保证能正常运行，你只要复制粘贴到你项目中即可。</p>
                <a href="http://www.helloweba.com/view-blog-281.html" class="cd-read-more" target="_blank">阅读全文</a>
                <span class="cd-date">2014-12-05</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie f-l10">
                </div>

                <div class="cd-timeline-content">
                <h2>收集整理的非常有用的PHP函数</h2>
                <p>项目中经常会需要一些让人头疼的函数，作为开发者应该整理一个自己的函数库，在需要之时复制过来即可。本文作者收集整理数十个PHP项目中常用的函数，保证能正常运行，你只要复制粘贴到你项目中即可。</p>
                <a href="http://www.helloweba.com/view-blog-281.html" class="cd-read-more" target="_blank">阅读全文</a>
                <span class="cd-date">2014-12-05</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie f-l10">
                </div>

                <div class="cd-timeline-content">
                <h2>收集整理的非常有用的PHP函数</h2>
                <p>项目中经常会需要一些让人头疼的函数，作为开发者应该整理一个自己的函数库，在需要之时复制过来即可。本文作者收集整理数十个PHP项目中常用的函数，保证能正常运行，你只要复制粘贴到你项目中即可。</p>
                <a href="http://www.helloweba.com/view-blog-281.html" class="cd-read-more" target="_blank">阅读全文</a>
                <span class="cd-date">2014-12-05</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie f-l10">
                </div>

                <div class="cd-timeline-content">
                <h2>收集整理的非常有用的PHP函数</h2>
                <p>项目中经常会需要一些让人头疼的函数，作为开发者应该整理一个自己的函数库，在需要之时复制过来即可。本文作者收集整理数十个PHP项目中常用的函数，保证能正常运行，你只要复制粘贴到你项目中即可。</p>
                <a href="http://www.helloweba.com/view-blog-281.html" class="cd-read-more" target="_blank">阅读全文</a>
                <span class="cd-date">2014-12-05</span>
                </div>
            </div>

        </section>
    </div>
</div>
<%--end 时间轴--%>

<div id="demo8"></div>

<ul id="biuuu_city_list"></ul>


<link rel="stylesheet" type="text/css" href="${rootPath}/resources/useradmin/index.css"/>
<%--引入时间轴css文件--%>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/commons/css/timeShaft.css"/>
<script src="${rootPath}/resources/useradmin/index.js"></script>
</body>
</html>

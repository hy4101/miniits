<%--
  Created by IntelliJ IDEA.
  User: wq
  @author www.miniits.com
  Date: 2016/10/24
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<html>
<head>
    <title><shiro:principal/>的博客-迷你科技</title>
</head>
<body>
<div class="site-notice">
    <em>MiniIts.com-迷你科技</em>
</div>
    <section id="s-intro" class="page -intro">
        <div class="container">
            <div class="site-nav">
                <a href="${rootPath}/user/userAdmin.html" target="_blank" class="a-saveRequestUrl">设置</a>
                <span>/</span>
                <a href="${rootPath}/index.html">首页</a>
                <span>/</span>
                <a href="${rootPath}/user/editor.html">写博客</a>
                <span>/</span>
                <a href="${rootPath}/user/userAdmin.html">动态</a>
            </div>
            <div class="row">
                <div class="col-xs-12 site-header "><h1 class="f-fs36"><shiro:principal/>的博客</h1>
                    <input type="text" class="inp-user-title"
                           placeholder=<shiro:principal/>:"您可以点击该行，然后编辑该行做为你的座右铭">
                    <form class="" role="search">
                        <div class="input-group input-group-lg">
                            <input type="text" class="form-control search clearable" id="div_params"
                                   placeholder="搜索我的博客">
                            <span class="input-group-addon search clearable f-csp" id="sp_search_article_btn">GO!</span>
                        </div>
                        <div class="div-editor-msg" id="div_editor_msg">

                        </div>
                    </form>
                </div>
            </div>
        </div>

    </section>

<link rel="stylesheet" type="text/css" href="${rootPath}/resources/user/blog/index.css"/>
<script src="${rootPath}/resources/user/blog/index.js"></script>
</body>
</html>
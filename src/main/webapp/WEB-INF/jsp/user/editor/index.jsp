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
    <title>Title</title>
    <!-- 配置文件 -->
    <script type="text/javascript" src="${rootPath}/resources/commons/ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${rootPath}/resources/commons/ueditor/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
</head>
<body>
    <section id="s-intro" class="page -intro">
        <div class="container">
            <div class="site-nav">
                <a href="${rootPath}/user/userAdmin.html" target="_blank" class="a-saveRequestUrl">博客</a>
                <span>/</span>
                <a href="${rootPath}/index.html">首页</a>
            </div>
            <div class="row">
                <div class="col-xs-12 site-header "><h1 class="f-fs36"><shiro:principal/>:开始您的创作吧！</h1>
                    <p>MINIITS.COM-迷你科技<br><span class="package-amount">思考、学习、分享是提升自身知识的重要途径</span></p>
                    <form class="" role="search">
                        <div class="input-group input-group-lg">
                            <input type="text" class="form-control search clearable" id="div_params"
                                   placeholder="搜索MiniIts,如：Spring Boot,Spring MVC,MyBatis Jar,jquery">
                            <span class="input-group-addon search clearable f-csp" id="sp_search_article_btn">GO!</span>
                        </div>
                        <div class="div-editor-msg" id="div_editor_msg">
                            <!-- 加载编辑器的容器 -->
                            <script id="sc_miniits_editor" name="content" type="text/plain"></script>
                            <script type="text/javascript">
                                var ue = UE.getEditor('sc_miniits_editor');
                            </script>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </section>

<link rel="stylesheet" type="text/css" href="${rootPath}/resources/useradmin/editor/index.css"/>
<script src="${rootPath}/resources/useradmin/editor/index.js"></script>
</body>
</html>
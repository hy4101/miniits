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
    <title><shiro:principal/>正在创作...</title>
    <!-- 配置文件 -->
    <script type="text/javascript" src="${rootPath}/resources/commons/ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${rootPath}/resources/commons/ueditor/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->

    <link href="${rootPath}/resources/commons/ligerUI/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet"
          type="text/css">
    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/plugins/ligerTree.js"
            type="text/javascript"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/plugins/ligerCheckBox.js"
            type="text/javascript"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/plugins/ligerComboBox.js"
            type="text/javascript"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/plugins/ligerResizable.js"
            type="text/javascript"></script>

</head>
<body>
<section id="s-intro" class="page -intro">
    <div class="container">
        <div class="site-nav">
            <a href="${rootPath}/blog/<shiro:principal/>" target="_blank" class="a-saveRequestUrl">博客</a>
            <span>/</span>
            <a href="${rootPath}/index.html">首页</a>
        </div>
        <div class="row">
            <div class="col-xs-12 site-header "><h1 class="f-fs36"><shiro:principal/>:开始您的创作吧！</h1>
                <p>MINIITS.COM-迷你科技<br><span class="package-amount">思考、学习、分享是提升自身知识的重要途径</span></p>
                <form class="" role="search">
                    <div class="input-group input-group-lg inp-title-sty">
                        <input type="text" class="form-control search clearable" id="div_title"
                               placeholder="标题">
                        <div class="input-group input-group-lg div-type" >
                            <input type="text" id="inp_blog_type" class="" style="height: 47px; width: 100%;color: black;text-align: center;" placeholder="请选择类别">
                        </div>
                    </div>

                    <div class="div-editor-msg" id="div_editor_msg">
                        <!-- 加载编辑器的容器 -->
                        <script id="sc_miniits_editor" name="content" type="text/plain"></script>
                        <script type="text/javascript">
                            var ue = UE.getEditor('sc_miniits_editor');
                        </script>
                        <div class="f-fr f-mt10 f-mb50">
                            <button type="button" class="btn btn-default f-mr10">存草稿</button>
                            <button type="button" class="btn btn-default" id="issue_btn">发布</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/user/editor/index.css"/>
<script src="${rootPath}/resources/user/editor/index.js"></script>
</body>
</html>
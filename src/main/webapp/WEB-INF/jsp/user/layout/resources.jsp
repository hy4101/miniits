<%--
  Created by IntelliJ IDEA.
  author:   wq
  Date:     2016/8/24
  Time:     15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="rootPath" value="<%=request.getContextPath()%>" scope="page"/>

<head>

    <%--<script src="${rootPath}/resources/commons/js/util/pubsub.js"></script>--%>
    <script src="${rootPath}/resources/commons/layui-v102/layui.js"></script>
    <link href="${rootPath}/resources/commons/layui-v102/layui.css" rel="stylesheet" type="text/css"/>

</head>

<div id="com_root_path" style="display: none">${rootPath}</div>

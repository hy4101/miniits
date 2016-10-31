<%--
  Created by IntelliJ IDEA.
  User: wq
  Date: 2016/10/5
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<c:set var="rootPath" value="<%=request.getContextPath()%>"/>

<%--引入jquery库--%>
<script src="${rootPath}/resources/commons/js/jquery/jquery.js"></script>

<%--引入util库--%>
<script src="${rootPath}/resources/commons/js/util/util.js"></script>

<%--引入公共css--%>
<link href="${rootPath}/resources/commons/css/commons.css" rel="stylesheet" type="text/css"/>

<%--引入bootstrap资源文件--%>
<link href="${rootPath}/resources/commons/bootstrap-v330/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${rootPath}/resources/commons/bootstrap-v330/dist/js/bootstrap.min.js"></script>
<div id="com_root_path" style="display: none">${rootPath}</div>



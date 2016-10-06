<%--
  Created by IntelliJ IDEA.
  author:   wq
  Date:     2016/8/24
  Time:     15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<c:set var="rootPath" value="<%=request.getContextPath()%>" scope="page"/>

<head>
    <%--ligerUI基础库--%>
    <link href="${rootPath}/resources/commons/ligerUI/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet"
          type="text/css"/>
    <link href="${rootPath}/resources/commons/ligerUI/lib/ligerUI/skins/ligerui-icons.css" rel="stylesheet"
          type="text/css">
    <link href="${rootPath}/resources/commons/ligerUI/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" type="text/css" id="mylink"/>
    <script src="${rootPath}/resources/commons/ligerUI/lib/jquery/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/ligerui.all.js" type="text/javascript"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/jquery.cookie.js"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/json2.js"></script>

    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/custom/ligerGridEx.js"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/custom/customCombo.js"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/plugins/UEligerTree.js"></script>
    <script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/custom/searchTree.js"></script>

    <%--引入util库--%>
    <script src="${rootPath}/resources/commons/js/util/util.js"></script>
    <script src="${rootPath}/resources/commons/js/util/pubsub.js"></script>

    <%--引入公共css--%>
    <link href="${rootPath}/resources/commons/css/commons.css" rel="stylesheet"
          type="text/css"/>
</head>

<div id="com_root_path" style="display: none">${rootPath}</div>

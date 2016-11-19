<%--
  Created by IntelliJ IDEA.
  User: wq
  Date: 2016/11/17
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<html>
<body>
<link href="${rootPath}/resources/commons/ligerUI/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet"
      type="text/css">
<script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
<script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>

<div class="div-type-count">
    <div>
        <div class="col-lg-6">
            <div class="input-group">
                <input type="text" class="form-control inp-sty" id="inp_new_item"
                       style="padding-top: 6px;padding-bottom: 6px;height: 34px;">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button" onclick="javascript:uodate('new')">添加</button>
                </span>
            </div>
        </div>
        <button type="button" class="btn btn-default" onclick="javascript:uodate('up')">修改</button>
        <button type="button" class="btn btn-default" data-type="notice" onclick="javascript:uodate('delete')">删除</button>
        <button type="button" class="btn btn-default" onclick="javascript:uodate('load')">刷新</button>
    </div>
    <br><br>
    <ul id="div_type_manage_edtir"></ul>
</div>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/user/setting/typeManage.css"/>
<script src="${rootPath}/resources/user/setting/typeManage.js"></script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: wq
  Date: 2016/10/14
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="rootPath" value="<%=request.getContextPath()%>"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
    var url = sessionStorage.getItem("redirectUrl");
    if (url == "" || null == url)
        url = "http://localhost:8080/miniits/index.html";
    window.location.href = url;
</script>

</body>
</html>
